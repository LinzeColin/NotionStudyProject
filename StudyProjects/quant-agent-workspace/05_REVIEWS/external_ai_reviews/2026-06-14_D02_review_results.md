# External AI Review Results - 2026-06-14 D02

Status: completed_6_attempt_review
Reviewers:

- Codex reviewer sub-agent `Nietzsche` (`019ec431-be0c-7f40-9696-9648356de974`)
- Codex reviewer sub-agent `Archimedes` (`019ec440-a4d3-71c1-a9b6-c727d491bc86`)
- Codex reviewer sub-agent `Ramanujan` (`019ec440-f8f1-7403-a7e5-5b451381d3f0`)
- ChatGPT: `blocked_unavailable` because no callable ChatGPT reviewer connector/API/browser session was available in this run.
- Claude: `blocked_unavailable` because no callable Claude reviewer connector/API/browser session was available in this run.
- Perplexity: `blocked_unavailable` because no callable Perplexity reviewer connector/API/browser session was available in this run.

Roster evidence:

- `2026-06-14_D02_reviewer_roster.csv`

## Findings

### Reviewer 1 - Nietzsche

1. High: D2 practice was not sufficiently gradable. Case 1 could teach the wrong shortcut that `Grade A + fresh` automatically means `OrderIntent=yes`; the stronger answer is `OrderIntent=conditional`.
2. High: `data_source_matrix.md` lacked several trade-use fields: market calendar/session, halt/suspension, timezone normalization, provider entitlement/license, latency SLA, raw checksum, survivorship/universe version, fees/tax/borrow/margin/FX, benchmark constituents.
3. Medium: evidence grading mixed source grade and claim/field usability. The system should grade exact claims/fields, not source brands only.
4. Medium: conflict handling needed more operational detail: reconciliation owner, restore criteria, audit record, and whether existing `OrderIntent` should expire or require recheck.
5. Low/Medium safety: no direct unattended live execution path was found, but `OrderIntent` was close to broker payload shape and needed a non-executable safety watermark.

### Reviewer 2 - Archimedes

1. User's Case 1 answer is close but should not be directly passed because "可操作候选池" is too strong.
2. Safer wording is `conditional signal candidate`, not `OrderIntent` yet.
3. User must explicitly answer in fixed fields: `Grade=A`, `OrderIntent=conditional`, and fail-closed conditions.
4. Grade A only answers source credibility; it never by itself means tradable or order-intent eligible.
5. No unattended live-order path was found.

### Reviewer 3 - Ramanujan

1. User has the key idea that `Grade A` does not automatically permit `OrderIntent`.
2. Main confusion is still the phrase "可操作候选池"; the concept should be split into source grade, trade-use eligibility, and fail-closed action.
3. Case 1 is partial pass, not full pass, because the answer was not in the required fixed format and did not explicitly mention strategy freshness SLA.
4. D2 should continue with Case 2 and Case 3; D3 remains closed.
5. Three-agent review can be recorded only after all three reviewer outputs are available. They are now available in this run.

## Adopted Fixes

- Updated D2 rubric so Case 1 is `OrderIntent=conditional`, not unconditional yes.
- Added required trade-use fields to `data_source_matrix.md`: timezone, market session, halt status, latency, entitlement, raw record/checksum, transform version, universe version, reconciliation status.
- Added three-part grading: source grade, claim grade, trade-use eligibility.
- Added additional source categories: market calendar/session/halts, fees/commissions/tax, borrow/short availability/margin, FX, index constituents, liquidity/ADV, macro calendar, vendor entitlement.
- Added reconciliation rules for broker/account/fill conflicts.
- Added `OrderIntent` safety flags in D01: `non_executable`, `requires_manual_rekey`, `approval_actor_required`, and forbidden broker execution fields.

## Can D2 Continue?

Yes. D2 can continue, but D3 should stay closed until the user completes the three-case source classification exercise and understands:

- Case 1 is conditional, not automatic yes.
- Case 2 is research-only without primary evidence.
- Case 3 freezes new order intents until reconciliation.

## User Case 1 Decision

Decision: partial pass, score 3/5.

Reason: the user correctly listed the key blockers: freshness, market closed/halt, spread/depth abnormality, unknown latency, risk gate failure, and conflicts. However, the answer should not say the source enters a general "可操作候选池" without clarifying that Grade A only proves source credibility. The corrected answer must say:

```text
Grade=A for official exchange quote field.
OrderIntent=conditional, not automatic yes.
This is only a conditional signal candidate, not an OrderIntent yet.
fail-closed=block signal/OrderIntent if 30s exceeds strategy freshness SLA, market is closed/halted, spread/depth abnormal, latency unknown, risk gate fails, tradable_at is unknown, or stronger-source conflict exists.
```

## User Case 2-3 Decision

Case 2: pass, score 5/5.

```text
Grade=D or C, OrderIntent=no, fail-closed=research-only until official filing or company announcement confirms.
```

Case 3: pass, score 4/5.

```text
Grade=A, OrderIntent=no until reconciled, fail-closed=block new order intents and reconcile broker report vs local ledger.
```

Case 3 is accepted. A full production answer should also expire or recheck related existing intents and resume only after audit evidence confirms reconciliation.
