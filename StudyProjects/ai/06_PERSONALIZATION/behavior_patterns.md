# Behavior Patterns

Project: AI
Updated: 2026-06-13

## Known Patterns

| Pattern | Evidence | Workflow Response |
|---|---|---|
| User wants agent to reduce human interference | User requested automatic GitHub/Notion connection | Persist state and route by project index |
| User values ROI over volume | Repeated preference statements | Every session ends in high-ROI action/output |
| User dislikes polluted Notion | User said Notion is a notebook | Keep Notion clean; write durable logs to GitHub |
| User may run multiple projects at once | Explicit concern | Use `_system/study-project-orchestrator/PROJECT_INDEX.md` before writing |

## To Observe

- Daily available time.
- Best explanation depth.
- Whether reminders actually bring the user back.
- Which outputs create real productivity gains.
