# Project Handoff

**Protocol:** v0.0.0.2
**Canonical project ID:** `quant-agent-workspace`
**Status:** active
**Aliases / merged from:** [`Quant Agent Workspace`]
**State source commit:** `30096ff`（项目最后一次写入）；install base `6cac133`
**Handoff file commit:** resolve with `git log -1 --format=%H -- StudyProjects/quant-agent-workspace/HANDOFF.md`; do not self-reference
**Last updated UTC:** `2026-07-21T22:55:46Z`

## 1. Snapshot

- Stable goal：建立一个量化 Agent 工作台的判断与构建能力（21 天）：研究 → 可证伪策略契约 → 数据源分级 → `OrderIntent` → 风控与 kill switch → 人工确认执行。
- Current focus：D01、D02 完成，D03 gate 已开放；`OrderIntent` schema、kill conditions、`09_FRONTIER/data_source_matrix.md` 已产出。
- Default route：B（可工作产物与可复现流程为终点）。
- Current primary contract：B。
- Next smallest action：D03 Strategy Hypothesis Design —— 把研究想法转成可证伪的 strategy contract。
- Recommended start prompt：`开始学习：Quant Agent Workspace W01D03 Strategy Hypothesis Design`

## 2. Capability Evidence

### Reliable without AI (E3/E4)
- 无。所有通过记录均发生在 2026-06-14 当天，且多项经过重测/补救，不满足延迟独立复现条件。

### Provisional independent (E2)
- 纸面/模型收益与真实收益的差异来源 — H0 独立答出时间窗口、摩擦、市场变化、滑点、spread、事件敏感性 — observed 2026-06-14（D01 Q1 评分 3/5）。
- D02 三案例分级 — Case 1 最终复测 5/5，固定格式给出 `Grade=A`、`OrderIntent=conditional` 与 fail-closed blockers（freshness SLA、市场关闭/停牌、异常 spread/depth、未知延迟、风控 gate 失败、未知 `tradable_at`、更强来源冲突）；Case 2 5/5；Case 3 4/5 — observed 2026-06-14。

### Assisted exposure only (E0/E1)
- D01 Q2 / Q3 — 需要重测后才通过 — 只记录辅助学习。
- D02 Case 1 的早期尝试 — 经六轮 review 与多次修正才达成最终格式 — 不计为独立掌握。

### Not yet proven
- 产物独立性 — 缺失 Oracle：`OrderIntent` schema、kill conditions、`data_source_matrix.md` 已存在，但**未记录由 Owner 主导完成**，不得计为 E4。
- 可证伪策略契约 — 缺失 Oracle：独立把一个研究想法写成含证伪条件与 kill criteria 的 strategy contract（D03 目标）。
- 延迟保持 — 缺失 Oracle：以上 E2 项均未跨会话复测。

## 3. Misconceptions, Failures & Counterevidence

- D01 Q1 只得 3/5，Q2/Q3 首次未通过 — status: resolved（重测通过，D01 gate 关闭）。
- 把「减少真实交易的时间损耗」直接理解为自动下单 — counterexample：已安全改写为 `supervised live execution workflow`（Agent 监控、校验、风控、生成 `OrderIntent` 并告警；人工确认执行） — status: resolved。
- Case 3 仅 4/5，分级理由仍有缺口 — status: open。

## 4. Review Queues

### Recall
| Item | Level | Due window | Last pre-help result | Source / validity |
|---|---|---|---|---|
| 纸面收益 vs 真实收益的差异来源 | R1 | next_related_session | H0 部分正确 3/5（2026-06-14） | `04_DAILY_LOGS/2026-06-14_D01.md` / current |
| 数据源分级与 trade-use 字段 | R1 | next_related_session | H0 正确（Case 2 5/5） | `09_FRONTIER/data_source_matrix.md` / current |
| fail-closed blocker 清单 | R1 | next_related_session | H0 正确（Case 1 复测 5/5） | `04_DAILY_LOGS/2026-06-14_D02.md` / current |

### Reperformance
| Capability | Trigger | Variation / failure path | Last result |
|---|---|---|---|
| 对新数据源做分级并给出 `OrderIntent` 结论 | variation_due | 换来源类型 + 制造 freshness / 冲突场景 | Case 1–3 通过（含一次 4/5） |
| 写出可证伪 strategy contract | real_artifact_due | D03 必需产物，必须 Owner 主导 | 未开始 |
| 触发 kill switch 后的恢复流程 | failure_injection_due | 注入数据源中断 / 风控 gate 失败 | 未做 |

### Resolution
| Decision / prediction | Initial confidence | Resolution trigger | Kill / update condition |
|---|---|---|---|
| 计划窗口 2026-06-14→2026-07-04（21 天） | unknown | Owner 重新确认排期 | 窗口已过且自 2026-06-14 无新证据，需 Owner 裁决 |
| supervised live execution 足以覆盖 Owner 的时间损耗诉求 | unknown | Owner 实际使用后反馈 | 若人工确认环节成为瓶颈则重新设计 |

## 5. Validity

- Current sources：`04_DAILY_LOGS/2026-06-14_D01.md`、`04_DAILY_LOGS/2026-06-14_D02.md`、`03_WEEKLY_PLANS/W01.md`、`09_FRONTIER/source_log.csv`、`09_FRONTIER/data_source_matrix.md`、`05_REVIEWS/external_ai_reviews/2026-06-14_D02_review_results.md`、`state.json`、`metrics.csv`。
- Recheck due / trigger：计划窗口已过且自 2026-06-14 起无新证据 —— 排期需 Owner 重新确认（窗口过期不构成暂停理由）。
- Superseded knowledge：无。
- Unknowns：D02 六轮 review 中 `Nietzsche`、`Archimedes`、`Ramanujan` 完成，ChatGPT / Claude / Perplexity 记为 `blocked_unavailable`（无可调用 reviewer connector/API/浏览器会话），**不得声称外部复核完整完成**。

## 6. Operating Preferences

- Effective methods：固定输出格式的案例分级（`Grade` + `OrderIntent` + fail-closed blockers）；未通过就重测；把安全边界写进产物而不是口头约束。
- Avoid / adjust：不做真实资金自动下单；不把 `OrderIntent` 设计成可直接执行；人工确认关口与 kill switch 是强制项。
- Time / format preference：先给可用判断规则，再补机制。

## 7. Legacy & Recovery

- Prior Handoff/log/state references：重建前版本 `git show 6cac133:StudyProjects/quant-agent-workspace/HANDOFF.md`；`state.json`；`metrics.csv`；`04_DAILY_LOGS/`；`05_REVIEWS/`。
- Merge/alias history：无合并来源。
- Recovery notes：recovery ref `study-os-v0.0.0.2-pre-20260721T225052Z`。本地 `study-project-orchestrator` skill 已于 2026-06-14 更新为要求 Agent + ChatGPT + Claude + Perplexity + 两个额外外部 reviewer 的默认名单，且至少 5 次可追溯尝试才可声称完成 —— 该要求属本地 skill，不属本仓协议。

> Current executable state, not a transcript. Preserve contrary evidence and Git history; compress repetition.
