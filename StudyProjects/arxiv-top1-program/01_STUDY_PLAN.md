# arXiv Study Plan

Updated: 2026-06-13  
Source: official arXiv Category Taxonomy, checked 2026-06-13.

## Correct Program Model

This is a rolling parallel archive-mastery program, not a one-month-per-group plan.

| Rule | Correct Meaning |
|---|---|
| Archive duration | Each archive/category is fixed at 30 days. |
| Group duration | A group duration is `archive_count * 30 days`. |
| Current active load | Exactly 2 active groups/archives at a time. |
| Promotion | When one full group is completed, the next group in the sequence enters the freed slot. |
| Notion timeline Date | Group route window starts on 2026-06-13 and ends after all archives in that group. |
| Active status | Stored separately in `state.json` and `active_tracks.json`; do not infer active status from Notion Date. |

## Group Route Windows

| Group | Archive Count | Route Start | Route End | Current Status |
|---|---:|---|---|---|
| Q-FIN | 9 | 2026-06-13 | 2027-03-09 | active |
| PHYS | 51 | 2026-06-13 | 2030-08-20 | active |
| MATH | 32 | 2026-06-13 | 2029-01-27 | queued |
| STAT | 6 | 2026-06-13 | 2026-12-09 | queued |
| CS | 40 | 2026-06-13 | 2029-09-24 | queued |
| ECON | 3 | 2026-06-13 | 2026-09-10 | queued |
| EE/EESS | 4 | 2026-06-13 | 2026-10-10 | queued |
| Q-BIO | 10 | 2026-06-13 | 2027-04-08 | queued |

## Current Two Active Groups

| Track | Group | Active Archive | Day | Route File |
|---|---|---|---:|---|
| 1 | Q-FIN | `q-fin.TR` Trading and Market Microstructure | 1/30 | `10_PROGRAM_STATE/group_routes/Q-FIN.csv` |
| 2 | PHYS | `quant-ph` Quantum Physics | 1/30 | `10_PROGRAM_STATE/group_routes/PHYS.csv` |

## Q-FIN Route Order

ROI logic: start from market microstructure because it is the most direct bridge to alpha, execution quality, liquidity, risk, and agent-driven market decision systems.

| # | Archive | Why This Order |
|---:|---|---|
| 1 | `q-fin.TR` Trading and Market Microstructure | Understand how trades, liquidity, spread, execution, and market impact actually work. |
| 2 | `q-fin.RM` Risk Management | Hard constraints, loss bounds, drawdown control, and fail-closed systems. |
| 3 | `q-fin.ST` Statistical Finance | Evidence, signal reliability, distributions, backtests, uncertainty. |
| 4 | `q-fin.PR` Pricing of Securities | Valuation, no-arbitrage, instruments, and model boundaries. |
| 5 | `q-fin.PM` Portfolio Management | Position sizing, allocation, portfolio construction, risk/return tradeoff. |
| 6 | `q-fin.MF` Mathematical Finance | Formal models behind pricing and risk. |
| 7 | `q-fin.CP` Computational Finance | Simulation, numerical methods, productionizable computation. |
| 8 | `q-fin.EC` Economics | Macro/micro economic context for market behavior. |
| 9 | `q-fin.GN` General Finance | Integration and synthesis. |

## PHYS Route Order

ROI logic: front-load information, probability, computation, statistical mechanics, nonlinear systems, and mathematical physics because they transfer best to AI, agents, markets, systems thinking, uncertainty, and frontier research literacy.

| Phase | Archives | Purpose |
|---|---|---|
| 1 Information/probability core | `quant-ph`, `physics.data-an`, `physics.comp-ph`, `cond-mat.stat-mech`, `math-ph` | Build the mental model for uncertainty, measurement, computation, and formal reasoning. |
| 2 Nonlinear/complex systems | `nlin.AO`, `nlin.CD`, `nlin.CG`, `nlin.PS`, `nlin.SI` | Understand dynamics, chaos, adaptation, patterns, and emergent behavior. |
| 3 Fundamental physics | `gr-qc`, `hep-th`, `hep-ph`, `hep-ex`, `hep-lat`, `nucl-th`, `nucl-ex` | Learn frontier theory/experiment separation and model-evidence discipline. |
| 4 Astro/cosmology | `astro-ph.CO`, `astro-ph.HE`, `astro-ph.IM`, `astro-ph.SR`, `astro-ph.EP`, `astro-ph.GA` | Train large-scale systems reasoning and instrumentation awareness. |
| 5 Condensed matter/materials | `cond-mat.dis-nn`, `cond-mat.mes-hall`, `cond-mat.mtrl-sci`, `cond-mat.quant-gas`, `cond-mat.soft`, `cond-mat.str-el`, `cond-mat.supr-con`, `cond-mat.other` | Connect physics to materials, devices, computation, and technology. |
| 6 Applied/general physics | `physics.acc-ph` through `physics.space-ph` | Cover applied domains, instrumentation, optics, plasma, society, and edge cases. |

Full PHYS order is stored in `10_PROGRAM_STATE/group_routes/PHYS.csv`.

## First 7 Days: Concept-First, No Premature Build

| Day | Q-FIN - TR | PHYS - quant-ph | Required Output |
|---:|---|---|---|
| D001 | What market microstructure studies; why trades are not the same as prices | What quantum physics studies; why measurement changes what can be known | Two boundary maps: object, mechanism, misuse, ROI use |
| D002 | Orders, limit order book, spread, liquidity | State, measurement, uncertainty | Two concept cards + active recall answers |
| D003 | Price formation and information | Amplitude vs probability | Classical vs probabilistic comparison note |
| D004 | Participants, incentives, adverse selection | Operators and observables | Mechanism map |
| D005 | Market impact and execution quality | Entanglement as information structure | Feynman explanation |
| D006 | Trading signal vs execution edge | Quantum information transfer to computation/AI | ROI transfer memo |
| D007 | Weekly review and route calibration | Weekly review and route calibration | W01 review + next archive adjustment if needed |

## Daily Session Protocol

| Step | Required Action |
|---|---|
| 1 | State current progress: `Dxxx`, active group, archive day out of 30. |
| 2 | Active recall from previous session. |
| 3 | Teach one core concept deeply before any practice. |
| 4 | Explain how the concept should be used by the user. |
| 5 | Connect concept to decision quality, ROI, work, learning, and productivity. |
| 6 | Assign one small output. |
| 7 | Update GitHub state/logs after session. |
| 8 | End with upcoming lessons and dynamic adjustment notes. |

## Stop Conditions

- Do not start a new archive without route order, date window, and archive count.
- Do not create or update Notion before reading current schema/page format.
- Do not treat building a project as learning progress unless the concept has been taught, recalled, and used.
- Do not use model confidence as a substitute for hard constraints, evidence, and verification.
