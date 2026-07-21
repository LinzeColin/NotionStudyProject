# Project Handoff

**Protocol:** v0.0.0.2
**Canonical project ID:** `ai-workflow-operating-system`
**Status:** active
**Aliases / merged from:** [`AI Workflow OS`, `Prompt Engineering and Loop Engineering`, `prompt-engineering-loop-engineering`, `prompt-loop`]
**State source commit:** `f475430`（项目最后一次写入）；install base `6cac133`
**Handoff file commit:** resolve with `git log -1 --format=%H -- StudyProjects/ai-workflow-operating-system/HANDOFF.md`; do not self-reference
**Last updated UTC:** `2026-07-21T22:55:46Z`

## 1. Snapshot

- Stable goal：建立可用的 AI 工作流操作系统判断力 —— Prompt / Context / Output / Loop / Tool Contract、Action Gate、State Machine、Eval Flywheel、Trace Review、Failure Taxonomy 与 Codex 式任务执行。
- Current focus：D04 Action Gate / Stop Condition 完成；D05 State Machine / Workflow State 完成；D06 Evaluation / Evals 已开始但**未验收**。
- Default route：B（可工作行为与工作流产物为终点）。
- Current primary contract：B。
- Next smallest action：用 critical-failure 案例压实 D06，不讲长理论 —— 「Agent 在 10 个测试任务里通过 8 个，但失败的 2 个都是『权限不足时仍然继续执行』，这是 80% 可靠还是严重不可上线缺陷？为什么？」
- Recommended start prompt：`开始学习：AI Workflow OS，直接进 D06 critical failure 判定`

## 2. Capability Evidence

### Reliable without AI (E3/E4)
- 无。当前没有满足「延迟后 H0 独立复现」或「真实产物/已解析判断」的记录。

### Provisional independent (E2)
- Live trading agent 的上线前 gate — H0 独立答出 shadow trading、足够模型验证与数据研究、明确止损/停止条件 — observed 2026-06-22（D04，评分 4/5）。归因层级经教学纠正。
- 「模型信号强但 spread 扩大、流动性变差时不下单」 — H0 独立给出正确动作 — observed 2026-06-22（D04）。
- State machine 中 `killed` 是 final / 强停止状态 — H0 独立回答 — observed 2026-06-22（D05，评分 4/5）。
- `blocked_missing_permission` 时应先说明缺什么权限并停止 — H0 独立回答 — observed 2026-06-22（D05）。
- 陌生迁移：把 `blocked_missing_permission` 迁移到 Codex 改 GitHub 的权限场景（权限恢复后回到合适前置状态重新验证，不能直接跳回 editing 或 merged） — observed 2026-06-22。**同轮存在 `blocked` 语义纠正，按合同不升级为 E3。**
- 「测试 Agent 可靠性应看测试通过率而不是自信表达」 — H0 独立回答 — observed 2026-06-22（D06 起步）。

### Assisted exposure only (E0/E1)
- D06 Evaluation / Evals 的完整框架 — highest hint：教学讲解为主，未完成独立判定题 — 不计为掌握。
- Output Contract 的正确定位（应嵌入 `AGENTS.md`、skill 规则、workflow 默认与最终响应格式，而不是要背的长 prompt） — 该理解是教学纠正后的结论（D03），highest hint：H4 — 需另题 H0 复测。

### Not yet proven
- Critical failure 判定 — 缺失 Oracle：无提示独立说明「80% 通过率但失败项是越权/权限不足仍继续执行」为何是不可上线缺陷而不是 80% 可靠。
- Research Gate / Execution-Market Gate / Risk-Kill Gate 三层归因 — 缺失 Oracle：换一个非交易场景（例如部署或数据管道）后无提示正确归因。
- 真实产物 — 缺失 Oracle：尚无用户主导完成、可运行/可复现的 workflow 产物。

## 3. Misconceptions, Failures & Counterevidence

- 把上线前 gate、运行中 risk gate、kill switch 放在同一层 — counterexample：spread/流动性问题首先属于 Execution/Market Gate（描述当前订单能否以合理成本成交），Risk Gate 管敞口/亏损/回撤/仓位，Kill Switch 管系统级或累积性失败 — status: reduced。
- 把 `blocked` 理解成 final stage — counterexample：`blocked` 是当前路径停止状态，不等于永远结束；`killed`/`blocked` 不能被一句自然语言「继续」跳过，必须走 review / re-arm / revalidate — status: reduced。
- 把「no human interference」理解成「no gate」 — counterexample：Action Gate 不是人工确认，而是由代码、配置、risk engine、state machine 自动执行的硬规则 — status: reduced。
- 把高 pass rate 当作可上线 — counterexample：失败项若是越权交易、权限不足仍执行、风险失控，则属 critical failure — status: open（D06 待验）。
- 把 `completed` 当作完成 — counterexample：没有改动文件、验证、证据或产物的 `completed` 应视为 `unvalidated` — status: reduced。

## 4. Review Queues

### Recall
| Item | Level | Due window | Last pre-help result | Source / validity |
|---|---|---|---|---|
| Research Gate vs Execution/Market Gate vs Risk/Kill Gate | R1 | next_related_session | H0 部分正确，归因经纠正 | `_system/study-project-orchestrator/LEARNING_LOG.md` 2026-06-22 20:44 / current |
| `killed` vs `blocked` 语义 | R1 | next_related_session | H0 正确（`killed`），`blocked` 经纠正 | 同上 / current |
| state transition 不可跳级 | R1 | next_related_session | H0 正确（Codex 迁移场景） | 同上 / current |
| eval pass rate 与 critical failure 的区别 | R0 | next session | 未完成 | 同上 / current |
| Output Contract 的落地形态 | R0 | next_related_session | H4 后理解，未独立复测 | 同上 / current |

### Reperformance
| Capability | Trigger | Variation / failure path | Last result |
|---|---|---|---|
| 判断某个动作该被哪一层 gate 拦截 | next_related_session | 换成部署 / 数据管道 / 内容发布场景 | H0 部分正确（2026-06-22） |
| 设计一个最小 eval set 并给出 pass/fail 规则 | real_artifact_due | 加入至少一个 critical-failure 项 | 未开始 |
| 画出并解释一个 workflow state machine | variation_due | 注入权限失败与外部依赖失败路径 | H0 迁移正确（2026-06-22） |

### Resolution
| Decision / prediction | Initial confidence | Resolution trigger | Kill / update condition |
|---|---|---|---|
| 「短触发词 + 嵌入式规则」比长 prompt 模板 ROI 更高 | high（Owner 明确偏好） | 下次实际使用工作流时 | 若短触发词导致结果不可验收则修订 |
| 计划窗口 2026-06-22→2026-07-18 | unknown | Owner 重新确认排期 | 窗口已过且无新证据，需 Owner 裁决 |

## 5. Validity

- Current sources：`04_DAILY_LOGS/`、`05_REVIEWS/external_ai_reviews/`、`state.json`、`_system/study-project-orchestrator/LEARNING_LOG.md`（2026-06-22 三条记录）。
- Recheck due / trigger：计划窗口 2026-06-22→2026-07-18 已过且自 2026-06-22 起无新证据 —— 排期需 Owner 重新确认（**窗口过期不构成暂停理由**）。
- Superseded knowledge：D03 早期把 Output Contract 讲成需要记忆的长 prompt，已作废。
- Unknowns：D06 是否恢复；absorbed 的 prompt/loop 旧内容中哪些已被独立验证。

## 6. Operating Preferences

- Effective methods：先讲现实系统如何自动执行 gate，再讲机制；用 trading agent 与 Codex GitHub 修改互相迁移；避免长 prompt 模板。
- Avoid / adjust：**不要讲理论堆砌**（D03 被 Owner 打 0/10，理由是过于理论、不现实）；不要让 Owner 背诵或反复输入长 prompt；不要要求 Owner 充当 checklist —— Owner 说记录/结束时就应保存进度。
- Time / format preference：现实用法优先，机制其次，模板只在能减少未来工作量时才给。

## 7. Legacy & Recovery

- Prior Handoff/log/state references：重建前版本 `git show 6cac133:StudyProjects/ai-workflow-operating-system/HANDOFF.md`；`state.json`；`04_DAILY_LOGS/`；`_system/study-project-orchestrator/LEARNING_LOG.md`。
- Merge/alias history：2026-06-14 吸收 `prompt-engineering-loop-engineering` 全部范围（Prompt / Context / Output / Loop / Tool Contract、Eval Flywheel、Trace Review、Failure Taxonomy、Codex 式任务执行）。来源目录与历史保留在 `StudyProjects/prompt-engineering-loop-engineering/`，声明见该目录 `MERGED_INTO_20260614.md`。同时吸收 `ai` 项目的 prompt/context/tool/agent loop/evals/Codex workflow 范围。
- Recovery notes：recovery ref `study-os-v0.0.0.2-pre-20260721T225052Z`。

> Current executable state, not a transcript. Preserve contrary evidence and Git history; compress repetition.
