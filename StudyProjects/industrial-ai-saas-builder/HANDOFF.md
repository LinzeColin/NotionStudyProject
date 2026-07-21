# Project Handoff

**Protocol:** v0.0.0.2
**Canonical project ID:** `industrial-ai-saas-builder`
**Status:** active
**Aliases / merged from:** [`Industrial AI SaaS Builder`]
**State source commit:** `ef1ad30`（项目最后一次写入）；install base `6cac133`
**Handoff file commit:** resolve with `git log -1 --format=%H -- StudyProjects/industrial-ai-saas-builder/HANDOFF.md`; do not self-reference
**Last updated UTC:** `2026-07-21T22:55:46Z`

## 1. Snapshot

- Stable goal：以工业 AI SaaS 为载体，建立 RAG 判断力、多模态产品判断、本地 vs 远程部署 ROI、架构与商业策略判断力（34 天加速课程）。
- Current focus：D01 完成（recall attempt 02 通过）；D02 完成（独立回忆经纠正后通过）；D03 gate 已开放。
- Default route：J（证据判断与选型决策为终点）。
- Current primary contract：J。
- Next smallest action：D03 —— RAG eval 与 trust boundary，产出 Eval rubric 与 20 题 eval set。
- Recommended start prompt：`开始学习：Industrial AI SaaS Builder D03 RAG eval 与 trust boundary`

## 2. Capability Evidence

### Reliable without AI (E3/E4)
- 无。D01 recall attempt 02 与 D02 recall 都发生在同一学习日、且紧接补救/纠正，不满足延迟独立复现条件。

### Provisional independent (E2)
- D01 独立回忆 5/5：模型记忆 vs RAG、证据/可核查性价值、强工业 RAG 案例、非 RAG-first 反例 — observed 2026-06-14（attempt 02，attempt 01 未通过后已补救）。
- D02 独立回忆通过（含纠正）：RAG pipeline 作为 failure surface — observed 2026-06-14。

### Assisted exposure only (E0/E1)
- D01 recall attempt 01 — 未通过，触发 remediation — 只证明接触过。
- D02 纠正点：RAG pipeline 失败与 LLM 生成失败不必然独立，系统不会因此自动「极不可靠」；可靠性取决于证据链是否可审计、可评测、可修复 — 该结论为同轮纠正产物，需另题 H0 复测。

### Not yet proven
- 产物独立性 — 缺失 Oracle：D01 的 RAG opportunity scorecard、RAG vs 模型记忆 vs 微调 vs 工作流自动化 vs agent 决策矩阵，以及 D02 的 RAG pipeline 架构图、组件失效模式表、最小可审计工业 RAG 架构，仓库中均记为 complete，但**没有记录这些产物由 Owner 主导完成还是 AI 生成**，因此不得计为 E4。
- 延迟保持与迁移 — 缺失 Oracle：换一个未讲过的行业场景，无提示独立判断该不该 RAG-first。
- Eval 能力 — 缺失 Oracle：独立写出 eval rubric 与可复现的 20 题 eval set。

## 3. Misconceptions, Failures & Counterevidence

- 认为 RAG pipeline 失败与 LLM 生成失败相互独立、因而系统「极不可靠」 — counterexample：失败相关时可靠性取决于证据链是否可审计、可评测、可修复 — status: reduced（需延迟复测）。
- D01 首次回忆未通过（attempt 01） — status: resolved（attempt 02 5/5 通过）。

## 4. Review Queues

### Recall
| Item | Level | Due window | Last pre-help result | Source / validity |
|---|---|---|---|---|
| 模型记忆 vs RAG 的适用边界 | R1 | next_related_session | H0 正确 5/5（2026-06-14，attempt 02） | `04_DAILY_LOGS/2026-06-14_D01_RECALL_ATTEMPT_02.md` / current |
| 证据 / 可核查性的价值 | R1 | next_related_session | H0 正确（同上） | 同上 / current |
| 非 RAG-first 的反例 | R1 | next_related_session | H0 正确（同上） | 同上 / current |
| RAG pipeline 的失效面与组件失效模式 | R1 | next_related_session | H0 通过但有纠正 | `04_DAILY_LOGS/2026-06-14_D02.md` / current |

### Reperformance
| Capability | Trigger | Variation / failure path | Last result |
|---|---|---|---|
| 对一个新行业场景判断该不该 RAG-first | variation_due | 换未讲过的行业 + 换数据可得性约束 | 未做 |
| 产出可复现的 eval rubric + 20 题 eval set | real_artifact_due | D03 必需产物；必须由 Owner 主导 | 未开始 |
| 画出最小可审计工业 RAG 架构 | failure_injection_due | 注入检索失败 / 文档过期 / 权限越界 | 已产出，独立性未记录 |

### Resolution
| Decision / prediction | Initial confidence | Resolution trigger | Kill / update condition |
|---|---|---|---|
| 计划窗口 2026-06-14→2026-07-17（34 天加速） | unknown | Owner 重新确认排期 | 窗口已过且自 2026-06-14 无新证据，需 Owner 裁决 |

## 5. Validity

- Current sources：`04_DAILY_LOGS/2026-06-14_D01*.md`、`04_DAILY_LOGS/2026-06-14_D02.md`、`05_REVIEWS/external_ai_reviews/`、`03_WEEKLY_PLANS/W01.md`、`state.json`、`metrics.csv`。
- Recheck due / trigger：计划窗口已过且自 2026-06-14 起无新证据 —— 排期需 Owner 重新确认（窗口过期不构成暂停理由）。
- Superseded knowledge：人为 `D000` / 第 0 天语义已删除；提前开始时直接用下一个真实课程号。
- Unknowns：D01/D02 产物的独立性；D02 external reviewer 尝试超时，blocker 已记录、**未采纳任何外部建议**，不得声称 external review 完成。

## 6. Operating Preferences

- Effective methods：先做独立回忆再讲解；未通过就补救并重测，不放行到下一课；每课必须有真实产出物。
- Avoid / adjust：不创建 `D000`；加速不得跳过 active recall、概念教学、必需产出、GitHub 同步、Notion 同步、验证、external review handshake 或明确 blocker 记录、state 更新、personalization 更新与下一课地图。
- Time / format preference：加速规则 —— Owner 提前开始或当天想继续时，直接进下一个真实课程号。

## 7. Legacy & Recovery

- Prior Handoff/log/state references：重建前版本 `git show 6cac133:StudyProjects/industrial-ai-saas-builder/HANDOFF.md`（含完整 D01/D02 记录清单、Notion 页面链接与 gate 明细）；`state.json`；`metrics.csv`；`04_DAILY_LOGS/`；`05_REVIEWS/`。
- Merge/alias history：吸收 `ai` 项目中 AI 基础、LLM、agent、自动化、AI 产品化范围。Prompt/loop/Codex/Notion 专属内容归 `ai-workflow-operating-system`；本地模型/NPU/CNN/模拟器归 `local-ai-infrastructure`；商业/金融/法律/套利归 `ceo-finance-strategy-system`。
- Recovery notes：recovery ref `study-os-v0.0.0.2-pre-20260721T225052Z`。

> Current executable state, not a transcript. Preserve contrary evidence and Git history; compress repetition.
