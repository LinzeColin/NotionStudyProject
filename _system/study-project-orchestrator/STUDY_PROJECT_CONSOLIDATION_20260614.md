# Study Project Consolidation - 2026-06-14

Timezone: Australia/Sydney

## Purpose

Consolidate the user's broad learning portfolio into four high-ROI Study Projects, while preserving old folders as historical evidence.

No Notion page/database was modified during this consolidation. Notion updates require a separate main-workflow run that first reads current Notion schema and page format.

## New Project Set

| Order | Project | Slug | Duration | Planned window | Status |
|---:|---|---|---:|---|---|
| 1 | Industrial AI SaaS Builder | `industrial-ai-saas-builder` | 34 days | 2026-06-15 to 2026-07-18 | active from 2026-06-15 |
| 2 | AI Workflow Operating System | `ai-workflow-operating-system` | 28 days | 2026-07-19 to 2026-08-15 | queued |
| 3 | Local AI Infrastructure | `local-ai-infrastructure` | 28 days | 2026-08-16 to 2026-09-12 | queued |
| 4 | CEO Finance Strategy System | `ceo-finance-strategy-system` | 28 days | 2026-09-13 to 2026-10-10 | queued |

## Absorbed Existing Projects

| Old project | Old slug | New destination |
|---|---|---|
| AI / Agent / LLM / Automation | `ai` | Split across all four projects, mainly `industrial-ai-saas-builder`, `ai-workflow-operating-system`, and `local-ai-infrastructure` |
| Prompt Engineering and Loop Engineering | `prompt-engineering-loop-engineering` | `ai-workflow-operating-system` |
| Levnovo/Lenovo Notion | not confirmed as a GitHub folder in this run | Conceptually merged into `ai-workflow-operating-system` as Notion workspace OS |

## Scope Mapping

| Topic | Destination |
|---|---|
| 3-day local vectorized RAG | `industrial-ai-saas-builder` D01-D03, then deeper local version in `local-ai-infrastructure` |
| 3-day SaaS | `industrial-ai-saas-builder` D04-D06 |
| 4-week business strategy / analysis / acumen | `industrial-ai-saas-builder` W2 and `ceo-finance-strategy-system` |
| 4-week architect / PM / rotary kiln / Codex | `industrial-ai-saas-builder` W3 and `ai-workflow-operating-system` |
| 4-week AI Software Engineering | `industrial-ai-saas-builder` W4 plus `ai-workflow-operating-system` and `local-ai-infrastructure` |
| Programming / software development | `ai-workflow-operating-system` |
| NPU applications | `local-ai-infrastructure` |
| Mermaid | `ai-workflow-operating-system` |
| Startup CEO legal knowledge | `ceo-finance-strategy-system` |
| Local LLM Deployment | `local-ai-infrastructure` |
| Local big-data strategy simulator | `local-ai-infrastructure`, with finance interpretation in `ceo-finance-strategy-system` |
| Web-wide arbitrage opportunities | `ceo-finance-strategy-system` |
| CNN | `local-ai-infrastructure` |
| Investment / finance / trading / stocks / futures | `ceo-finance-strategy-system` |

## Execution Rule

Default mode is sequential to reduce context pollution and improve Top 1% compression:

1. Finish `industrial-ai-saas-builder` first.
2. Then run `ai-workflow-operating-system`.
3. Then run `local-ai-infrastructure`.
4. Then run `ceo-finance-strategy-system`.

Parallel mode requires explicit user override and separate daily logs per project.

## Next Main-Workflow Actions

1. On 2026-06-15, start `industrial-ai-saas-builder` Day 1/34.
2. If Notion timeline updates are required, first read current Notion database schema/page format, then update timeline rows.
3. Do not continue old `ai` or `prompt-engineering-loop-engineering` as active standalone plans unless user explicitly reactivates them.