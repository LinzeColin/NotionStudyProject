# Data Source Matrix v1

Project: quant-agent-workspace  
Created: 2026-06-14  
Use: D02 artifact for evidence grading, freshness rules, and fail-closed behavior.

## Core Rule

No data enters signal generation unless the workspace knows:

1. `source`: where it came from.
2. `event_time`: when the market/business event happened.
3. `published_at`: when the source made it public.
4. `received_at`: when the workspace received it.
5. `tradable_at`: the earliest time the strategy could realistically trade on it.
6. `freshness_window`: how long it remains usable.
7. `confidence_grade`: how much trust the system can place on it.
8. `fail_closed_action`: what to block if the data is stale, missing, conflicted, or unverified.

## Evidence Grades

| Grade | Source type | Typical examples | Agent use | Required handling |
|---|---|---|---|---|
| A | Primary official / direct system source | Exchange data, broker execution logs, SEC/ASX/HKEX filings, company announcements, official regulator docs | Can support strategy/risk decisions if fresh and timestamped | Store raw link or record ID, timestamp, parser version, and freshness window |
| B | Primary-adjacent / professional source | Earnings transcripts, company investor presentations, reputable data vendors, established financial newswires | Can support thesis and monitoring; should not override Grade A conflicts | Cross-check with Grade A when used for trade-sensitive signals |
| C | Secondary analysis / aggregator | Analyst summaries, web articles, dashboards, scraped aggregators, social-derived datasets | Lead generation and context only | Must be labeled unverified until upgraded |
| D | Weak / unverifiable / opinion source | Unsourced posts, screenshots, rumor, black-box model output, stale cached data | Never sufficient for order intent | Block promotion; use only as research lead |

## Minimum Source Matrix

| Data domain | Preferred grade | Required fields | Freshness window | Common failure | Fail-closed action |
|---|---|---|---|---|---|
| Live price / quote | A | symbol, venue, bid, ask, last, volume, timestamp, provider | seconds to minutes, strategy-specific | stale quote, crossed market, abnormal spread | block signal and order intent |
| OHLCV bars | A/B | symbol, venue, interval, open/high/low/close/volume, timezone, adjusted flag | minutes to daily, by strategy | missing bars, wrong timezone, bad adjustment | quarantine backtest or live signal |
| Order book / depth | A | venue, levels, sizes, timestamp, update sequence | sub-second to seconds | sequence gaps, stale depth, thin book | block marketable order intent |
| Broker account / positions | A | account, cash, margin, positions, buying power, timestamp | seconds to minutes | mismatch with local ledger | block new order intent; reconcile |
| Broker execution / fills | A | order id, fill id, price, qty, fees, venue, timestamp | immediate | missing fill, partial fill mismatch | stop paper/live reconciliation |
| Corporate actions | A | split/dividend/symbol change/effective date/source | daily before backtest/live use | stale adjustment | block backtest promotion |
| Filings / announcements | A | company, filing type, published_at, source url, accession/id | event-driven | delayed ingestion, duplicate filing | allow research only; block trade signal until timestamped |
| Fundamentals | A/B | period, metric, currency, restated flag, source, published_at | quarterly/annual; refresh on restatement | stale/restated values | downgrade signal confidence |
| News / event feed | B/C | headline, body/link, publisher, published_at, received_at | minutes to hours, event-specific | duplicate, rumor, late arrival | require corroboration for order intent |
| Alternative / scraped data | C/D | collection time, methodology, sample coverage, parser version | source-specific | scraping drift, sample bias | research-only until validated |
| Model output | D unless evidence-backed | model version, prompt/config, inputs, output, confidence, citations | expires with inputs | hallucination, missing citations | never directly create order intent without evidence refs |

## Time Semantics

| Field | Meaning | Why it matters |
|---|---|---|
| `event_time` | When the real-world event happened | Prevents lookahead bias |
| `published_at` | When the source publicly released it | Determines whether a backtest could know it |
| `received_at` | When the workspace ingested it | Measures data latency and pipeline delay |
| `tradable_at` | When a strategy could realistically act | Converts information into a realistic trading window |

Decision rule: if `tradable_at` is unknown, the data cannot be used for a live-like backtest or an `OrderIntent`.

## Conflict Rules

| Conflict | Example | Action |
|---|---|---|
| A vs B conflict | Broker position differs from dashboard estimate | Trust A, block new order intents until local ledger reconciles |
| A vs A conflict | Two market data providers disagree materially | Halt strategy using that field; log both sources |
| B/C only | News lead without filing or official confirmation | Research note only; no order intent |
| D only | Model says a catalyst exists with no citation | Reject as evidence; ask for source |

## Promotion Gates

Data can support a strategy only if:

1. Source grade is A or verified B for the relevant decision.
2. `event_time`, `published_at`, `received_at`, and `tradable_at` are recorded.
3. Freshness window is not expired.
4. Conflicts are resolved or explicitly downgraded.
5. The parser/data transformation has a version and reproducible log.
6. The data survived at least one replay check.

## D02 Practice Prompt

Classify these three sources:

1. An official exchange quote feed with bid/ask timestamp 30 seconds old.
2. A Twitter/X post claiming a company won a major contract, with no filing link.
3. A broker fill report that disagrees with the local paper ledger.

For each one, answer:

- Grade: A/B/C/D
- Can it support `OrderIntent`? yes/no
- Required fail-closed action
