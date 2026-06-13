# Study Project Index

Generated: 2026-06-13
Timezone: Australia/Sydney
Status: active

This file is the routing index for all concurrent Study Projects under `LinzeColin/Notion/StudyProjects/<project-slug>/`.

## Active Projects

| Project | Slug | Status | Domain | Notion source | Current week/day | Last sync | Next action |
|---|---|---|---|---|---|---|---|
| AI | ai | active | AI / Large Models / Agents / Automation | Codex Study Timeline `37eb1a986ba680bdb5f9ea2367b08991`; D01 page `37eb1a986ba681098a14d2c8c71f3715` | W01D01 / 第1/28天 | 2026-06-13 | Complete D01 baseline active recall and Personal AI leverage map |
| arXiv Top1 Program | arxiv-top1-program | active | arXiv / Q-FIN, PHYS, MATH, STAT, CS, ECON, EE/EESS, Q-BIO | Codex Study Timeline `37eb1a986ba680bdb5f9ea2367b08991`; Q-FIN page `37eb1a986ba68133a01be6fbff80849b`; PHYS page `37eb1a986ba681a9a1a3e42720e82960`; CS page `37eb1a986ba6800a8e95f17a784cf2a8`; arXiv Taxonomy database `37cb1a986ba680838ccddc8c0931281b` | D001 / active archives `Q-FIN - q-fin.TR` and `PHYS - quant-ph`; rule: archive=30d, group=archive_count*30d | 2026-06-13 | Teach D001 concept-first only after presenting corrected Q-FIN/PHYS routes |

## Routing Rules

Before reading or writing any project state:

1. Identify the intended project from explicit `project-slug`, Notion page URL/title, domain name, or week/day code.
2. Match it against this index.
3. If there is no matching project, run the new project intake lock.
4. If multiple projects match, ask the user to choose from a numbered list.
5. Write only to the selected project folder under `StudyProjects/<project-slug>/`.

## New Project Minimum Fields

| Field | Required | Notes |
|---|---|---|
| Project name | yes | Human-readable name |
| Slug | yes | Folder name under `LinzeColin/Notion/StudyProjects/` |
| Learning goal | yes | Understand, apply, monetize/career, expert judgment |
| Domain/industry | yes | Broad field |
| Subdomain/content focus | yes | Concrete track chosen from high-ROI options |
| Duration | yes | 28/30/60/90 days by default depending on context |
| Day 1 start date | yes | Every daily session must show 第X/Y天 |
| Explicit authorization | yes | Required before starting learning content |
| Daily time | yes | 30, 45-60, or 90+ minutes |
| Notion source | optional at start | Page/database URL when available |
| Reminder mode | yes | Return-to-Codex trigger |

## Default Folder Structure Per Project

```text
StudyProjects/<project-slug>/
├── 00_PROJECT_BRIEF.md
├── 01_STUDY_PLAN.md
├── 02_TOP1_STRATEGY.md
├── 03_WEEKLY_PLANS/
├── 04_DAILY_LOGS/
├── 05_REVIEWS/
├── 06_PERSONALIZATION/
├── 07_NOTION/
├── 08_REMINDERS/
├── 09_FRONTIER/
├── metrics.csv
└── HANDOFF.md
```

For rolling programs, also use:

```text
10_PROGRAM_STATE/
├── active_tracks.json
├── archive_catalog.csv
├── progression_log.csv
└── group_routes/
```

## Notion Placement Rule

New Study Project databases/pages should be created under `Linz Dashboard` as peers to:

- `个人价值增长`
- `制造业`
- `Re:0`
- `arXiv`
- `Codex Study Timeline`

Existing workspaces are read-only by default.

## Backup Rule

Before creating or importing a new Notion Study Project workspace/database, create a backup under:

```text
NotionBackup/YYYYMMDD/
```

If a complete Notion workspace export is not available through the connector, record backup scope and gaps in the backup manifest.
