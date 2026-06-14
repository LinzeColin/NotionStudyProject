# Study Project Index

Generated: 2026-06-14
Timezone: Australia/Sydney
Status: active

This file is the routing index for all concurrent Study Projects under `LinzeColin/Notion/StudyProjects/<project-slug>/`.

## Current Consolidated Route

Default execution is sequential unless the user explicitly chooses parallel mode. This reduces context pollution and improves Top 1% compression.

| Order | Project | Slug | Status | Domain | Planned window | Current progress | Notion Timeline | Last sync | Next action |
|---:|---|---|---|---|---|---|---|---|---|
| 1 | Industrial AI SaaS Builder | `industrial-ai-saas-builder` | active from 2026-06-15 | Industrial AI / RAG / SaaS / business strategy / architecture / PM / Codex / AI SWE | 2026-06-15 to 2026-07-18 | D000; tomorrow is 第1/34天 | `37fb1a98-6ba6-81d2-9a22-d08f109448d5` | 2026-06-14 | Start revised D01: RAG judgment + Industrial SaaS ROI; output `RAG opportunity scorecard + decision matrix` |
| 2 | AI Workflow Operating System | `ai-workflow-operating-system` | queued | Prompt / Loop / AI Agent / Codex / Notion OS / Mermaid / software workflow | 2026-07-19 to 2026-08-15 | D000 / 第0/28天 | `37fb1a98-6ba6-8146-a1ac-f721aa2aff8f` | 2026-06-14 | Start after Project 1 unless explicitly parallelized |
| 3 | Local AI Infrastructure | `local-ai-infrastructure` | queued | Local LLM / NPU / local RAG / CNN / local big-data strategy simulator | 2026-08-16 to 2026-09-12 | D000 / 第0/28天 | `37fb1a98-6ba6-815b-b096-c70b9183d79f` | 2026-06-14 | Start after Project 2 unless explicitly parallelized |
| 4 | CEO Finance Strategy System | `ceo-finance-strategy-system` | queued | Business strategy / CEO legal basics / finance / trading / arbitrage | 2026-09-13 to 2026-10-10 | D000 / 第0/28天 | `37fb1a98-6ba6-815a-b6c7-df67a5656fd4` | 2026-06-14 | Start after Project 3 unless explicitly parallelized |
| 5 | arXiv Top1 Program | `arxiv-top1-program` | active rolling program | arXiv / Q-FIN, PHYS, MATH, STAT, CS, ECON, EE/EESS, Q-BIO | rolling archive schedule | D002 active archives `Q-FIN - q-fin.TR` and `PHYS - quant-ph`; archive=30d, group=archive_count*30d | existing arXiv timeline pages | 2026-06-14 | D003: stop-order recall, bid/ask + order book bridge, then Q-FIN price formation + PHYS amplitude vs probability |

## Notion Sync

`Codex Study Timeline` database:

- Database ID: `37eb1a986ba680bdb5f9ea2367b08991`
- Data source: `collection://37eb1a98-6ba6-80ad-94e0-000bbda7ab85`
- Backup before mutation: `NotionBackup/20260614/codex_study_timeline_before_project_sync.md`
- Schema change: `Project` select options now include all four consolidated project names.
- Created timeline rows use the exact project name as `Project` value.

## Merged / Superseded Standalone Projects

These folders remain as historical evidence and should not be used as active standalone plans unless the user explicitly reactivates them.

| Old project | Old slug | Status | Merged into | Notes |
|---|---|---|---|---|
| AI | `ai` | merged/superseded | `industrial-ai-saas-builder`, `ai-workflow-operating-system`, `local-ai-infrastructure`, `ceo-finance-strategy-system` | See `StudyProjects/ai/MERGED_INTO_20260614.md` |
| Prompt Engineering and Loop Engineering | `prompt-engineering-loop-engineering` | merged/superseded | `ai-workflow-operating-system` | See `StudyProjects/prompt-engineering-loop-engineering/MERGED_INTO_20260614.md` |
| Levnovo/Lenovo Notion | not confirmed as a folder in this run | conceptually merged | `ai-workflow-operating-system` | Treated as Notion workspace OS scope; do not modify Notion without reading current format first |

## Consolidation Record

See `_system/study-project-orchestrator/STUDY_PROJECT_CONSOLIDATION_20260614.md`.

## Routing Rules

Before reading or writing any project state:

1. Identify the intended project from explicit `project-slug`, Notion page URL/title, domain name, or week/day code.
2. Match it against this index.
3. If there is no matching project, run the new project intake lock.
4. If multiple projects match, ask the user to choose from a numbered list.
5. Write only to the selected project folder under `StudyProjects/<project-slug>/`.
6. Learning notes, daily logs, reviews, and Notion note content must be Chinese by default. Keep English only for professional terms, archive codes, exact source titles, API names, and tool names.
7. `study-project-daily-sync` is a detached local cron sync. It must read GitHub/Notion directly and must not rely on the current chat thread.
8. Do not route new AI/Agent/LLM lessons to the old `ai` folder unless explicitly reactivated.
9. Do not route new Prompt/Loop lessons to the old `prompt-engineering-loop-engineering` folder unless explicitly reactivated.
10. Do not mutate Notion until the target database/page schema, visible properties, and current formatting have been fetched.
11. For consolidated projects, use the exact project name in the Notion `Project` select property.

## New Project Minimum Fields

| Field | Required | Notes |
|---|---|---|
| Project name | yes | Human-readable name |
| Slug | yes | Folder name under `LinzeColin/Notion/StudyProjects/` |
| Learning goal | yes | Understand, apply, monetize/career, expert judgment |
| Domain/industry | yes | Broad field |
| Subdomain/content focus | yes | Concrete track chosen from high-ROI options |
| Duration | yes | 28/30/60/90 days by default depending on context |
| Day 1 start date | yes | Every daily session must show 第X/Y天 or the rolling equivalent |
| Explicit authorization | yes | Required before starting learning content |
| Daily time | yes | 30, 45-60, or 90+ minutes |
| Notion source | optional at start | Page/database URL when available |
| Reminder mode | yes | Return-to-Codex trigger or detached local sync |

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
