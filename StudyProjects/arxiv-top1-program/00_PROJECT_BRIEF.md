# arXiv Top1 Program

Project slug: `arxiv-top1-program`  
Start date: `2026-06-13`  
Timezone: `Australia/Sydney`  
Status: `active`  
Mode: rolling multi-group Study Project

## Locked Scope

| Field | Decision |
|---|---|
| Goal | Learn arXiv archives deeply enough to build Top 1% judgment, reading ability, research taste, and practical transfer. |
| Group order | Q-FIN, PHYS, MATH, STAT, CS, ECON, EE/EESS, Q-BIO. |
| Active groups at once | 2. |
| Archive cycle | 30 days per archive/category. |
| Group duration | `archive_count * 30 days`; a group is not a one-month unit. |
| Day 1 | 2026-06-13. |
| Source of truth | GitHub project folder. |
| Notion role | `Codex Study Timeline` stores clean group timeline pages; original Notion workspaces remain read-only unless explicitly authorized. |

## Current Active Tracks

| Track | Group | First Archive | Reason |
|---|---|---|---|
| 1 | Q-FIN | Trading and Market Microstructure `q-fin.TR` | Highest near-term ROI for alpha, execution, markets, and agent workspace decisions. |
| 2 | PHYS | Quantum Physics `quant-ph` | High-leverage foundation for uncertainty, measurement, information, frontier technical literacy, and cross-domain reasoning. |

## Current Group Route Windows

| Group | Archive Count | Route Start | Route End | Status |
|---|---:|---|---|---|
| Q-FIN | 9 | 2026-06-13 | 2027-03-09 | active |
| PHYS | 51 | 2026-06-13 | 2030-08-20 | active |
| CS | 40 | 2026-06-13 | 2029-09-24 | queued |

See `01_STUDY_PLAN.md` and `10_PROGRAM_STATE/archive_catalog.csv` for the full group schedule.

## Promotion Rules

| Rule | Trigger | Action |
|---|---|---|
| Archive completion | 30-day archive cycle completed and mastery evidence passes review | Same group advances to the next archive in its route file. |
| Group completion | All archives in group completed | Next queued group becomes active in the freed slot. |
| Daily sync | Learning session completes | Update daily log, metrics, state, active tracks, and progression log. |

## Non-Negotiable Process

- Before modifying Notion, read existing Notion format first.
- Do not create new Notion pages or databases unless explicitly authorized by the current project scope.
- Learning comes before building tools.
- Every daily session must state current progress, e.g. `D001 / Q-FIN q-fin.TR Day 1/30; PHYS quant-ph Day 1/30`.
- Every important concept must be taught in a way the user can use: meaning, mechanism, failure modes, real examples, decision rules, and ROI-max action.
