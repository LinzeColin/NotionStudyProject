# AI Workflow Operating System Handoff

Updated: 2026-06-22 20:44 AEST  
Timezone: Australia/Sydney  
Status: active

## Current State

- Project: AI Workflow Operating System
- Slug: `ai-workflow-operating-system`
- Today's project learning session is ended by user request.
- Current learning position: D04 Action Gate / Stop Condition completed; D05 State Machine / Workflow State completed; D06 Evaluation / Evals started but not validated.
- Latest saved learning log: `_system/study-project-orchestrator/LEARNING_LOG.md`, entry `2026-06-22 20:44 AEST｜AI Workflow Operating System｜D04-D06｜约 35 分钟`.
- Do not treat D06 as complete until the user answers the critical-failure eval question or receives a direct explanation.

## Key User Feedback

- User gave D03 teaching quality score 0/10 because the explanation was too theoretical and unrealistic.
- User does not want to memorize or repeatedly type long prompts.
- Teaching must convert concepts into short trigger phrases, embedded workflow rules, and practical agent behavior.
- The highest-ROI teaching pattern is: realistic use first, mechanism second, template only if it removes future work.
- User expects progress to be saved when asking to record/end a session; do not require them to act as a checklist.

## Corrected D03 Understanding

- Output Contract is not a long prompt the user must remember.
- Output Contract should be embedded into `AGENTS.md`, skill rules, workflow defaults, and final response formats.
- User-facing trigger can be short, for example: `给我可验收结果` or `按 Output Contract 重做`.
- `completed` without changed files, validation, evidence, or artifacts should be treated as `unvalidated`.

## D04 Completed

Topic: Action Gate / Stop Condition.

User's key answers:

- Live trading automatic gates should include shadow trading, sufficient model validation / data research, and explicit stop loss / stop conditions.
- If model signal is strong but spread expands and liquidity worsens, the correct action is not to place the order.

Teaching correction:

- Shadow trading / model validation / data research are mostly Research Gate / pre-live gates.
- Spread and liquidity problems first belong to Execution / Market Gate, not Risk Gate.
- Risk Gate handles exposure, loss, drawdown, and position sizing.
- Kill Switch is for system-level or accumulated failures, not every single spread widening event.
- No human interference does not mean no gates; it means gates are hard rules executed automatically.

## D05 Completed

Topic: State Machine / Workflow State.

User's key answers:

- `killed` is a strong stop/final-like state in a state machine.
- `blocked_missing_permission` should explain missing permissions and stop, not continue editing.

Teaching correction:

- `killed` cannot be bypassed by a natural-language “continue”; recovery must go through review/re-arm/revalidate.
- `blocked` is not always final; it is a current-path stop state. Once unblocked, the agent must return to the correct prior state and rerun gates instead of jumping ahead.
- State Machine decides what actions are currently allowed; Action Gate decides whether a particular action can pass now.

## D06 In Progress

Topic: Evaluation / Evals.

User answered:

- Agent reliability should be measured by fixed test results / pass percentage, not confidence.

Next question to continue:

> 如果 Agent 在 10 个测试任务里通过 8 个，但失败的 2 个都是“权限不足时仍然继续执行”，这是 80% 可靠，还是严重不可上线缺陷？为什么？

Expected teaching direction:

- It is not simply 80% reliable.
- Critical failures override aggregate pass rate.
- Permission-boundary failures, unauthorized execution, live-trading risk breaches, and failure to stop are release blockers even if overall pass rate looks high.
- Eval design needs both pass rate and critical-failure gates.

## Next Lessons

- D06: Evaluation / Evals, critical failure vs aggregate pass rate.
- D07: Agent Operating Manual, how to turn contracts/gates/state/evals into one reusable agent workflow without long user prompts.

## Save Rules

- Ordinary teaching does not write GitHub unless user asks to save/sync/end session.
- If user asks to record progress or end learning, save concise records to `LEARNING_LOG.md` and update this file.
- Do not sync Notion unless user explicitly says `保存并同步 Notion`.
