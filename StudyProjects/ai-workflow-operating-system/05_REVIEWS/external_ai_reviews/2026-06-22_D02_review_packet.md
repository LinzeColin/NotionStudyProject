# External AI Review Packet｜AI Workflow OS D02｜2026-06-22

Project: `ai-workflow-operating-system`
Progress: D02 / 第2/28天
Theme: Context Contract and Context Budget
GitHub daily log: `StudyProjects/ai-workflow-operating-system/04_DAILY_LOGS/2026-06-22-D02.md`
Notion page: https://app.notion.com/p/37fb1a986ba68146a1acf721aa2aff8f

## User Requirements

- The user wants AI workflow learning to be high ROI, low token, low friction, proactive, and self-running.
- The user rejects manual long prompts and repeated user-side correction.
- Codex must not claim learning completion without Study Project state, GitHub sync, Notion sync, and next-step routing.

## Concepts Taught

- Context Contract is not more background. It is a minimal, authority-ranked context budget.
- Minimum context item: source, authority, freshness, purpose, evidence, exclusion rule.
- `context_used` is the proof surface for what the agent loaded and why.
- Old memory/chat can route but should not be treated as direct completion evidence without revalidation.

## Current Weak Points

- The teaching run improved after D01, but still depends on the user calling out missing workflow steps.
- Need better automatic startup behavior: state -> active recall -> one core concept -> artifact -> GitHub/Notion sync -> review packet.
- Need avoid over-updating schedules when multiple lessons happen in one day unless acceleration is explicit.

## Questions For Reviewers

1. Is `context_used` the right minimum proof surface for context discipline?
2. Are the authority ladder and exclusion rules too complex for daily use?
3. What should be deferred until D03 Output Contracts?
4. What is the highest-ROI next exercise for the user?
