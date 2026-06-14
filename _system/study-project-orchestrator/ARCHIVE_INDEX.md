# Study Project Archive Index

Updated: 2026-06-14  
Timezone: Australia/Sydney  
Purpose: prevent archived, superseded, or paused Study Project folders from being counted as active daily learning obligations.

## Archive Rule

`PROJECT_INDEX.md` is the routing source of truth. Folders listed here are retained for historical memory only. Do not mark them as missed, do not send reminders, and do not continue them unless the user explicitly reactivates the exact project in `PROJECT_INDEX.md`.

## Archived Projects

| Project | Slug | Archive type | Archived at | Superseded by | Action for future agents |
|---|---|---|---|---|---|
| AI | `ai` | superseded broad route | 2026-06-14 | `industrial-ai-saas-builder`, `ai-workflow-operating-system`, `local-ai-infrastructure`, `gpu-ml-systems-model-training` | Do not route new AI/LLM/Agent lessons here. Use current route by topic. |
| Prompt Engineering and Loop Engineering | `prompt-engineering-loop-engineering` | superseded duplicate route | 2026-06-14 | `ai-workflow-operating-system` | Do not run Phase B/C or project-specific reminder unless explicitly reactivated. |
| Notion Windows Markdown Operator | `notion-windows-markdown-operator` | paused outside current route | 2026-06-14 | none | Do not count in default Study Project queue; reactivate only by explicit user request. |

## Automation Cleanup

| Automation | Action | Date | Notes |
|---|---|---|---|
| `prompt-loop-study-daily-reminder` | paused | 2026-06-14 | Project-specific reminder for archived prompt-loop route. |
| `study-project-daily-sync` | updated | 2026-06-14 | Keeps running, but now reads `PROJECT_INDEX.md` as source of truth and skips archived projects listed here. |

## Notion Cleanup Status

Attempted minimal Notion Timeline property cleanup on 2026-06-14 after fetching the existing database schema and page formats.

Result: blocked. The fetched Timeline pages for `ai`, `prompt-engineering-loop-engineering`, and `notion-windows-markdown-operator` were returned with a `deleted` marker, and `update_properties` for `Tags` failed with `validation_error`.

No Notion pages were modified. Do not claim Notion archive sync is complete. If Notion archive labels are still needed later, first verify whether these pages are in trash/deleted state, then ask before restoring or moving any page.
