# Study Project Index

Generated: 2026-06-13
Timezone: Australia/Sydney
Status: active

This file is the routing index for all concurrent Study Projects under `LinzeColin/Notion/StudyProjects/<project-slug>/`.

## Active Projects

| Project | Slug | Status | Domain | Notion source | Current week/day | Last sync | Next action |
|---|---|---|---|---|---|---|---|
| AI | ai | active | AI / Large Models / Agents / Automation | Notion database pending; teamspace parent tool limit | W01D01 | 2026-06-13 | Continue ai W01D01 |

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
| Duration | yes | 30/60/90 days by default |
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
├── state.json
└── HANDOFF.md
```

## Notion Placement Rule

New Study Project databases/pages should be created under `Linz Dashboard` as peers to:

- `个人价值增长`
- `制造业`
- `Re:0`
- `arXiv`

Existing workspaces are read-only by default.

## Backup Rule

Before creating or importing a new Notion Study Project workspace/database, create a backup under:

```text
NotionBackup/YYYYMMDD/
```

If a complete Notion workspace export is not available through the connector, record backup scope and gaps in the backup manifest.
