# Reminder Plan

Purpose: bring the user back to Codex. Reminders do not replace the learning surface.

## Active Automations

| Automation | ID | Kind | Schedule | Role | Status |
|---|---|---|---|---|---|
| Study Project Daily Sync | `study-project-daily-sync` | cron | daily 18:10 Sydney | Detached GitHub/Notion sync, missed-study check, Phase C guard | ACTIVE |
| Prompt Loop Study Daily Reminder | `prompt-loop-study-daily-reminder` | cron | daily 09:00 Sydney, 21 occurrences | Detached reminder that reads GitHub/Notion state and does not rely on a chat thread | ACTIVE |

## Phase C Guard

The reminder and daily sync must not treat the project as complete after the 7-day B sprint. Phase C is scheduled for 2026-06-21 to 2026-07-04 and remains conditional on the W01 review.

## Default Return Prompt

```text
Continue prompt-engineering-loop-engineering W01D01. Start with active recall, then build Prompt Contract v1 and sync Notion notes.
```

## Missed Study Rule

If no actual minutes are recorded by 18:00 Sydney on a study day, mark `missed_study_today: true` in `state.json` and use:

```text
未完成今天学习打卡。请优先返回并同步今日学习：Continue prompt-engineering-loop-engineering W01Dxx and sync my Notion notes.
```
