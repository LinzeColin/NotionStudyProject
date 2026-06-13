# HANDOFF

Updated: 2026-06-13  
Timezone: Australia/Sydney

## Current Goal

Run the `arxiv-top1-program` Study Project as a rolling archive mastery program with two active groups at a time.

## Current State

- Start date: 2026-06-13.
- Global day: D001.
- Active tracks: `Q-FIN - q-fin.TR` and `PHYS - quant-ph`.
- Each archive/category cycle is fixed at 30 days.
- Correct group rule: group duration = archive_count * 30 days. Do not treat a group as a one-month unit.
- Group order: Q-FIN, PHYS, MATH, STAT, CS, ECON, EE/EESS, Q-BIO.

## Corrected Route Windows

| Group | Archive Count | Route Start | Route End | Status |
|---|---:|---|---|---|
| Q-FIN | 9 | 2026-06-13 | 2027-03-09 | active |
| PHYS | 51 | 2026-06-13 | 2030-08-20 | active |
| CS | 40 | 2026-06-13 | 2029-09-24 | queued |

Full schedule: `10_PROGRAM_STATE/archive_catalog.csv`.

## Notion State

- Existing Codex Study Timeline database: `37eb1a986ba680bdb5f9ea2367b08991`.
- Existing arXiv Taxonomy database: `37cb1a986ba680838ccddc8c0931281b`.
- Added `Code` select column to the existing arXiv Taxonomy database earlier; full row backfill is not complete because the query tool returned `notion-query-data-sources not found`.
- `arXiv Computer Science` page: `37eb1a98-6ba6-800a-8e95-f17a784cf2a8`; Date corrected to `2026-06-13 -> 2029-09-24`.
- `arXiv Quantitative Finance` page: `37eb1a98-6ba6-8133-a01b-e6fbff80849b`; Date `2026-06-13 -> 2027-03-09`.
- `arXiv Physics` page: `37eb1a98-6ba6-81a9-a1a3-e42720e82960`; Date `2026-06-13 -> 2030-08-20`.
- Before any future Notion mutation, fetch and inspect the existing page/database schema and visible format first.

## Route Files

- Q-FIN full route: `10_PROGRAM_STATE/group_routes/Q-FIN.csv`.
- PHYS full route: `10_PROGRAM_STATE/group_routes/PHYS.csv`.
- CS full route: `10_PROGRAM_STATE/group_routes/CS.csv`.

## Next Step

Do not start another archive or project setup step. Next teaching session should be D001 concept-first learning:

- Q-FIN - TR: What market microstructure studies and why it matters.
- PHYS - quant-ph: What quantum physics studies and why it matters.

Teaching must explain the concept deeply and practically: what it is, core mechanism, how the user should use it, failure modes, real examples, decision rules, and ROI-max action.

End every session with updated next lessons and sync state to GitHub.
