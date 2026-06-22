# External AI Review Packet - 2026-06-22 - Q-FIN D004

Project: `arxiv-top1-program`
Timezone: Australia/Sydney
Calendar Global Day: D010
Session: Q-FIN `q-fin.TR` D004 Adverse Selection

## User Requirements

- 中文默认。
- 一次只讲一个 exact archive。
- 保存和同步必须有 GitHub/Notion 证据。
- 区分提示后复述和独立迁移，不能把 AI 模板当作用户掌握证据。
- 优先真实交易系统判断、ROI、风控和可执行 action gate。

## Concepts Covered

Topic: Adverse Selection in trading and market microstructure.

Core teaching:

```text
成交成功不等于交易质量好。
如果 limit order 刚成交后 mid/mark 快速朝自己不利方向移动，
这笔 fill 可能来自 informed trader / toxic flow。
```

## User Evidence

### VWAP recall

User answer: weighted average needs weights; described low-price volume pulling the average lower. Corrected away from “吸筹” narrative toward order book depth and matching mechanism.

Score: 4/5.

### Limit buy scenario

Prompt: `limit buy 100`, filled, then mid goes to `99.40`.

User repeated the provided template almost exactly. Marked as prompt-assisted, not independent mastery.

### Limit sell transfer scenario

Prompt: `limit sell 100`, filled, then mid goes to `100.70`.

User answer: likely hit by more informed buyer; fill may be toxic flow; system should reduce size, widen spread, pause signal, or require extra confirmation.

Correction: user wrote “跌到 100.70”; for `limit sell 100`, mid moved up to 100.70. Mechanism still correct.

Score: 4/5, independent transfer passed.

## Current Weak Points

1. User may use narrative terms like “吸筹”; keep forcing microstructure language.
2. Direction words need precision: for sell at 100 then mid 100.70, price moved up, not down.
3. User understands adverse selection but should later connect it to spread compensation, queue position, post-fill markout, and passive quote control.

## Review Questions

1. Is it correct to mark Q-FIN `q-fin.TR` D004 as validated after the independent limit-sell transfer?
2. Should the next default lesson be PHYS `quant-ph` D004 for balanced rotation, or Q-FIN D005 for continuity?
3. What minimum active recall should begin the next Q-FIN lesson?
4. What should be deferred to avoid overloading the user?

## Connector Status

No external reviewer was completed in this turn. Record configured agent, ChatGPT, Claude, Perplexity, and two additional reviewer attempts as `blocked_unavailable` / not invoked. This packet is for future review handoff and must not be treated as completed external review.