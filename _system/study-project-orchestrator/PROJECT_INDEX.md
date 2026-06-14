# Study Project Index

Generated: 2026-06-14  
Timezone: Australia/Sydney  
Status: active

This file is the routing index for all concurrent Study Projects under `LinzeColin/Notion/StudyProjects/<project-slug>/`.

## Current Consolidated Route

Default execution through 2026-08-15 is now controlled parallel mode, because the user explicitly required every current non-arXiv Study Project to finish no later than 2026-08-15. Do not revert to strict sequential mode unless the user explicitly reauthorizes a later end date.

| Order | Project | Slug | Status | Domain | Planned window | Current progress | Notion Timeline | Last sync | Next action |
|---:|---|---|---|---|---|---|---|---|---|
| 1 | Industrial AI SaaS Builder | `industrial-ai-saas-builder` | active from 2026-06-14 | Industrial AI / RAG / SaaS / business strategy / architecture / PM / Codex / AI SWE | 2026-06-14 to 2026-07-17 | D01 started early / 第1/34天; D01 output pending | `37fb1a98-6ba6-81d2-9a22-d08f109448d5` | 2026-06-14 | Continue/complete D01: RAG judgment + Industrial SaaS ROI; output `RAG opportunity scorecard + decision matrix` |
| 2 | CEO Finance Strategy System | `ceo-finance-strategy-system` | scheduled parallel from 2026-06-18 | CEO/CFO commercial judgment / finance / legal basics / trading / arbitrage risk | 2026-06-18 to 2026-07-15 | D000 / 第0/28天 | `37fb1a98-6ba6-815a-b6c7-df67a5656fd4` | 2026-06-14 | Start D01 on 2026-06-18 after Industrial AI SaaS RAG foundation; education and decision-framework only |
| 3 | AI Workflow Operating System | `ai-workflow-operating-system` | queued | Prompt / Loop / AI Agent / Codex / Notion OS / Mermaid / software workflow | 2026-07-19 to 2026-08-15 | D000 / 第0/28天 | `37fb1a98-6ba6-8146-a1ac-f721aa2aff8f` | 2026-06-14 | Start after Project 1 unless explicitly pulled earlier; runs in parallel with Local AI Infrastructure |
| 4 | Local AI Infrastructure | `local-ai-infrastructure` | scheduled parallel from 2026-07-19 | Local LLM / NPU / local RAG / CNN / local big-data strategy simulator | 2026-07-19 to 2026-08-15 | D000 / 第0/28天 | `37fb1a98-6ba6-815b-b096-c70b9183d79f` | 2026-06-14 | Start D01 on 2026-07-19 in controlled parallel with AI Workflow Operating System |
| 5 | arXiv Top1 Program | `arxiv-top1-program` | active rolling program | arXiv / Q-FIN, PHYS, MATH, STAT, CS, ECON, EE/EESS, Q-BIO | rolling archive schedule | D002 active: Q-FIN `q-fin.TR` day 2/30, PHYS `quant-ph` day 2/30; MATH `math.PR` starts 2026-06-15 as third active group | existing arXiv timeline pages; MATH Notion page not yet linked | 2026-06-14 | Next arXiv session must include three groups: Q-FIN, PHYS, MATH |

## Non-arXiv End-Date Cap

All current non-arXiv Study Projects now end on or before 2026-08-15:

| Project | End date | Meets cap |
|---|---|---|
| Industrial AI SaaS Builder | 2026-07-17 | yes |
| CEO Finance Strategy System | 2026-07-15 | yes |
| AI Workflow Operating System | 2026-08-15 | yes |
| Local AI Infrastructure | 2026-08-15 | yes |

## arXiv Parallel Rule

arXiv now runs three active groups daily:

| Slot | Group | Current archive | Start | Archive day |
|---:|---|---|---|---:|
| 1 | Q-FIN | `q-fin.TR` Trading and Market Microstructure | 2026-06-13 | 2/30 |
| 2 | PHYS | `quant-ph` Quantum Physics | 2026-06-13 | 2/30 |
| 3 | MATH | `math.PR` Probability | 2026-06-15 | 0/30 until first lesson |

Do not retroactively mark MATH as studied on 2026-06-14. Start it in the next arXiv daily session.

## Notion Sync

`Codex Study Timeline` database:

- Database ID: `37eb1a986ba680bdb5f9ea2367b08991`
- Data source: `collection://37eb1a98-6ba6-80ad-94e0-000bbda7ab85`
- Backup before previous mutation: `NotionBackup/20260614/codex_study_timeline_before_project_sync.md`
- Existing timeline rows use the exact project name as `Project` value.

## Merged / Superseded Standalone Projects

These folders remain as historical evidence and should not be used as active standalone plans unless the user explicitly reactivates them.

| Old project | Old slug | Status | Merged into | Notes |
|---|---|---|---|---|
| AI | `ai` | merged/superseded | `industrial-ai-saas-builder`, `ai-workflow-operating-system`, `local-ai-infrastructure`, `ceo-finance-strategy-system` | See `StudyProjects/ai/MERGED_INTO_20260614.md` |
| Prompt Engineering and Loop Engineering | `prompt-engineering-loop-engineering` | merged/superseded | `ai-workflow-operating-system` | See `StudyProjects/prompt-engineering-loop-engineering/MERGED_INTO_20260614.md` |
| Levnovo/Lenovo Notion | not confirmed as a folder in this run | conceptually merged | `ai-workflow-operating-system` | Treated as Notion workspace OS scope; do not modify Notion without reading current format first |

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
12. Do not change the 2026-08-15 cap for non-arXiv projects without explicit user authorization.
13. For fixed-duration Study Projects, do not create artificial `D000` / `第0天`; if the user starts early, advance to the next real lesson number and keep all sync/check/review steps.

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
