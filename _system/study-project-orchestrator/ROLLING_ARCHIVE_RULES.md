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
8. Queued groups do not automatically start today. Their start dates must come from active-slot promotion simulation or explicit project state.
9. Notion group timeline rows should store true planned windows. Active/queued status belongs in GitHub state files.
10. Before modifying Notion, fetch and inspect the existing page/database schema, visible properties, and page format.
11. Before teaching, tell the user the current day and archive day, for example: `D001 / Q-FIN q-fin.TR 第1/30天；PHYS quant-ph 第1/30天`.
12. Every session is learning-first. Building tools, dashboards, automations, or agents is not learning progress unless the concept was taught, recalled, and used.
13. Learning notes, Notion note content, daily logs, and reviews must be Chinese by default. Keep English only for professional terms, archive codes, API names, exact paper/source titles, and tool names.
14. End every daily session with upcoming lessons and sync state to GitHub.
15. `study-project-daily-sync` should run as detached local cron and read GitHub/Notion directly; it must not rely on a chat thread.

## Current arXiv Program Schedule

| Group | Archive Count | Planned Start | Planned End | Status |
|---|---:|---|---|---|
| Q-FIN | 9 | 2026-06-13 | 2027-03-09 | active |
| PHYS | 51 | 2026-06-13 | 2030-08-20 | active |
| MATH | 32 | 2027-03-10 | 2029-10-24 | queued |
| STAT | 6 | 2029-10-25 | 2030-04-22 | queued |
| CS | 40 | 2030-04-23 | 2033-08-04 | queued |
| ECON | 3 | 2030-08-21 | 2030-11-18 | queued |
| EE/EESS | 4 | 2030-11-19 | 2031-03-18 | queued |
| Q-BIO | 10 | 2031-03-19 | 2032-01-12 | queued |

Full current state is in `StudyProjects/arxiv-top1-program/state.json`.
