# Rolling Archive Study Rules

Updated: 2026-06-14

Use these rules for `arxiv-top1-program` and any future rolling archive/category Study Project.

## Non-Negotiable Rules

1. Do not start a rolling archive project without explicit group order, active group selection, archive route order, duration rule, and Day 1 date.
2. The learning unit is an archive/category, not a group.
3. Archive duration is fixed at 30 days unless the user explicitly changes it.
4. Group duration is `archive_count * 30 days`; never assume one group equals one month.
5. Current active load is three active groups/archives at a time unless the user changes it.
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
16. Before finalizing a rolling program route, create a project-cycle roadmap with Group-level and Archive-level teaching routes. Request roadmap proposals from ChatGPT, Claude, Perplexity, and at least two configured external AI agents when available; record unavailable reviewers as blockers. In Notion roadmap pages, use Heading 1 for Group and Heading 2 for Archive.

## Current arXiv Program Schedule

| Group | Archive Count | Planned Start | Planned End | Status |
|---|---:|---|---|---|
| Q-FIN | 9 | 2026-06-13 | 2027-03-09 | active |
| PHYS | 51 | 2026-06-13 | 2030-08-20 | active |
| MATH | 32 | 2026-06-15 | 2029-01-29 | active_from_2026-06-15 |
| STAT | 6 | 2027-03-10 | 2027-09-05 | queued |
| CS | 40 | 2027-09-06 | 2030-12-18 | queued |
| ECON | 3 | 2029-01-30 | 2029-04-29 | queued |
| EE/EESS | 4 | 2029-04-30 | 2029-08-27 | queued |
| Q-BIO | 10 | 2029-08-28 | 2030-06-23 | queued |

Full current state is in `StudyProjects/arxiv-top1-program/state.json`.

2026-06-14 verification: `StudyProjects/arxiv-top1-program/10_PROGRAM_STATE/group_routes/CS.csv`, `state.json`, and the Notion `arXiv Computer Science` timeline page are aligned to `2027-09-06 -> 2030-12-18`.
