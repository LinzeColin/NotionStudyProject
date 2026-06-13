# Rolling Archive Study Rules

Updated: 2026-06-13

Use these rules for `arxiv-top1-program` and any future rolling archive/category Study Project.

## Non-Negotiable Rules

1. Do not start a rolling archive project without explicit group order, active group selection, archive route order, duration rule, and Day 1 date.
2. The learning unit is an archive/category, not a group.
3. Archive duration is fixed at 30 days unless the user explicitly changes it.
4. Group duration is `archive_count * 30 days`; never assume one group equals one month.
5. Current active load is two active groups/archives at a time unless the user changes it.
6. When one archive completes, advance to the next archive within the same group.
7. When one full group completes, promote the next queued group into the freed active slot.
8. Notion group timeline rows should store route windows. Active/queued status belongs in GitHub state files.
9. Before modifying Notion, fetch and inspect the existing page/database schema, visible properties, and page format.
10. Before teaching, tell the user the current day and archive day, for example: `D001 / Q-FIN q-fin.TR Day 1/30; PHYS quant-ph Day 1/30`.
11. Every session is learning-first. Building tools, dashboards, automations, or agents is not learning progress unless the concept was taught, recalled, and used.
12. End every daily session with upcoming lessons and sync state to GitHub.

## Current arXiv Program Correction

The previous incorrect model treated each group as 30 days. Correct model:

| Group | Archive Count | Route Start | Route End |
|---|---:|---|---|
| Q-FIN | 9 | 2026-06-13 | 2027-03-09 |
| PHYS | 51 | 2026-06-13 | 2030-08-20 |
| CS | 40 | 2026-06-13 | 2029-09-24 |

Full current state is in `StudyProjects/arxiv-top1-program/state.json`.
