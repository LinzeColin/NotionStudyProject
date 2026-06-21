# Reminder Plan

Purpose: bring the user back to Codex daily. Reminder is not the main teaching surface.

## Default Prompt

```plain text
Continue ai-tech-industry-investment-judgment. Tell me today's Day X/30, start with active recall, then teach today's concept and sync GitHub/Notion.
```

## Schedule

No detached automation was created in this side conversation. If automation is requested later, update the existing `study-project-daily-sync` cron rather than creating a thread-dependent heartbeat.

## Daily Completion Gate

Every daily session should end with:

1. GitHub daily log/state update.
2. Notion page sync if connector is available.
3. External review handshake or explicit blocker log.
4. Next 7-day preview adjusted to current performance.
