# Study Project Index

Generated: 2026-06-14  
Timezone: Australia/Sydney  
Status: active

This file is the routing index for all concurrent Study Projects under `LinzeColin/Notion/StudyProjects/<project-slug>/`.

## Current Consolidated Route

Default execution through 2026-08-15 is now controlled parallel mode, because the user explicitly required every current non-arXiv Study Project to finish no later than 2026-08-15. Do not revert to strict sequential mode unless the user explicitly reauthorizes a later end date.

| Order | Project | Slug | Status | Domain | Planned window | Current progress | Notion Timeline | Last sync | Next action |
|---:|---|---|---|---|---|---|---|---|---|
| 1 | Industrial AI SaaS Builder | `industrial-ai-saas-builder` | active from 2026-06-14 | Industrial AI / RAG / SaaS / business strategy / architecture / PM / Codex / AI SWE | 2026-06-14 to 2026-07-17 | D01 complete after recall attempt 02 / 第1/34天; D02 gate open | `37fb1a98-6ba6-81d2-9a22-d08f109448d5` | 2026-06-14 | Next D02 on 2026-06-15: RAG pipeline as failure surface; output `pipeline architecture diagram + component failure-mode table`. |
| 2 | CEO Finance Strategy System | `ceo-finance-strategy-system` | scheduled parallel from 2026-06-18 | CEO/CFO commercial judgment / finance / legal basics / trading / arbitrage risk | 2026-06-18 to 2026-07-15 | not_started; next is D01 / 第1/28天 | `37fb1a98-6ba6-815a-b6c7-df67a5656fd4` | 2026-06-14 | Start D01 on 2026-06-18 after Industrial AI SaaS RAG foundation; education and decision-framework only |
| 3 | AI Workflow Operating System | `ai-workflow-operating-system` | queued | Prompt / Loop / AI Agent / Codex / Notion OS / Mermaid / software workflow | 2026-07-19 to 2026-08-15 | not_started; next is D01 / 第1/28天 | `37fb1a98-6ba6-8146-a1ac-f721aa2aff8f` | 2026-06-14 | Start D01 on 2026-07-19 unless explicitly pulled earlier; runs in parallel with Local AI Infrastructure |
| 4 | Local AI Infrastructure | `local-ai-infrastructure` | scheduled parallel from 2026-07-19 | Local LLM / NPU / local RAG / CNN / local big-data strategy simulator | 2026-07-19 to 2026-08-15 | not_started; next is D01 / 第1/28天 | `37fb1a98-6ba6-815b-b096-c70b9183d79f` | 2026-06-14 | Start D01 on 2026-07-19 in controlled parallel with AI Workflow Operating System |
| 5 | arXiv Top1 Program | `arxiv-top1-program` | active rolling program | arXiv / Q-FIN, PHYS, MATH, STAT, CS, ECON, EE/EESS, Q-BIO | rolling archive schedule | D002 active: Q-FIN `q-fin.TR` day 2/30, PHYS `quant-ph` day 2/30; MATH `math.PR` not_started until first lesson | existing arXiv timeline pages; MATH Notion page not yet linked | 2026-06-14 | Next arXiv session must include three groups: Q-FIN, PHYS, MATH |

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
| 3 | MATH | `math.PR` Probability | 2026-06-15 | not_started until first lesson |

Do not retroactively mark MATH as studied on 2026-06-14. Start it in the next arXiv daily session.

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
14. If a project is marked `assets complete but recall pending`, do not advance to the next lesson until the user completes the independent recall gate.

## Notion Placement Rule

New Study Project databases/pages should be created under `Linz Dashboard` as peers to:

- `个人价值增长`
- `制造业`
- `Re:0`
- `arXiv`
- `Codex Study Timeline`

Existing workspaces are read-only by default.
