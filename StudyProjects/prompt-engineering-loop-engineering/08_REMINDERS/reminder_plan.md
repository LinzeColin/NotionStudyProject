# Reminder Plan

Purpose: bring the user back to Codex. Reminders do not replace the learning surface.

## Active Automations

| Automation | ID | Kind | Schedule | Role | Status |
|---|---|---|---|---|---|
| Study Project Daily Sync | `study-project-daily-sync` | cron | daily 18:10 Sydney | Detached GitHub/Notion sync for active projects listed in `PROJECT_INDEX.md`; skips this archived project | ACTIVE |
| Prompt Loop Study Daily Reminder | `prompt-loop-study-daily-reminder` | cron | daily 09:00 Sydney, 21 occurrences | Historical project-specific reminder | PAUSED on 2026-06-14 |

## Archive Status

This project is archived and superseded by `ai-workflow-operating-system`. Do not send project-specific reminders or mark missed study unless the user explicitly reactivates it.

## Default Return Prompt

```text
Reactivate prompt-engineering-loop-engineering only if explicitly authorized.
```

## Missed Study Rule

Archived projects are excluded from missed-study checks. If this project is reactivated later and no actual minutes are recorded by 18:00 Sydney on a study day, mark `missed_study_today: true` in `state.json` and use:

```text
未完成今天学习打卡。请优先返回并同步今日学习：Continue prompt-engineering-loop-engineering W01Dxx and sync my Notion notes.
```
