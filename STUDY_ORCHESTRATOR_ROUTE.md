# Study Orchestrator Route｜v0.0.0.2

## 1. 目标

选择“本轮怎样教、最终用什么证据证明用户脱离 AI 后会了”，并通过动态 Project Index 定位当前 canonical project。项目目录名和历史 slug 只提供 alias，不决定 active 状态。

## 2. Project Resolution

1. 从用户主题、显式 slug、标题或上下文提取候选；
2. 读取 `_system/STUDY_INDEX.md`；
3. alias 解析到唯一 canonical ID；
4. `merged` 转向 `merged_into`；`archived` 仅在 Owner 明确重启时使用；
5. 多个 active candidate 会实质改变教学时，给一个最小编号选择；
6. 无匹配则使用当前 intake 规则，不擅自创建重复项目；
7. 不使用固定项目数、不默认扫描全仓。

`_system/STUDY_INDEX.md` 是唯一路由索引。`_system/study-project-orchestrator/PROJECT_INDEX.md` 与 `ARCHIVE_INDEX.md` 保留为 Legacy 证据来源（拓扑历史、归档理由、Notion/自动化 blocker），**不再用于路由**；两者与 Index 冲突时重建 Index，不反向改写项目状态。

## 3. Router 输入

```yaml
outcome: recall | explain | distinguish | execute | build | debug | evaluate | decide | create
knowledge_type: fact | concept | procedure | condition | strategy | metacognition
prior_state: novice | partial | fluent | expert
error_state: unknown | low_confidence | misconception | high_confidence_wrong | none
structure: well_defined | complex_task | uncertain_decision
stakes: normal | high
volatility: stable | dated | live_verification
learning_state: new | review_due | provisional | transfer_due | verified
constraints: time | energy | direct_answer | source_access
```

## 4. Primary Contracts

### M｜Mental Model & Memory

终点是回忆、解释、辨析、计算或稳定心智模型。Oracle：无材料、无关键提示，正确解释机制/边界，并在延迟或换表述后仍成立。

### B｜Build & Behavior

终点是执行、构建、调试、修复或真实产物。Oracle：独立完成可用产物；改变输入/约束或注入故障后仍能诊断和恢复。

### J｜Judgment, Inquiry & Synthesis

终点是研究、评价、预测、证据综合或不确定决策。Oracle：明确结论/概率；事实、推断、假设、未知分开；有最强反方、证伪和更新触发。

## 5. 决策树

```text
正确答案/解释是终点？             → M
可工作行为/产物/修复是终点？       → B
可辩护选择/预测/研究判断是终点？    → J
```

混合任务只选当前一个 Primary Contract，按缺口切换：M→B→J、J→M→B 或 B→M→J。

## 6. Modifiers

| Modifier | 触发 | 调整 |
|---|---|---|
| NOVICE | 先修不足 | Worked Example→Completion→Fading |
| MISCONCEPTION | 高置信度错误 | 反例、对比、最小苏格拉底诊断 |
| RECALL_DUE | Recall 到期 | 先冷回忆，最多少量探针 |
| TRANSFER | 当前题会但未迁移 | 换情境、输入、约束或目标 |
| HIGH_STAKES | 金融、安全、法律等 | 一手来源、置信度、证伪、停止条件 |
| VOLATILE | AI/API/价格/政策 | Valid As Of + live verification |
| LOW_TIME | 时间极短 | 一个最小证据单元 |
| DIRECT | 用户要求直接讲 | 先完整回答；不自动记独立掌握 |

## 7. 六阶段

```text
FRAME → DIAGNOSE → MODEL → PRACTICE → TRANSFER/STRESS → REFLECT/UPDATE
```

短会话可跳过非必要阶段；结束时必须 UPDATE。

## 8. 方法约束

- 1 Primary Contract + 1 主方法 + 最多 2 辅助方法；
- 不按 VAK 固定人格路由；
- novice/高风险优先 explicit instruction / worked example；
- 熟练后撤支架，避免 expertise reversal；
- Productive Failure 仅在先修可达、有边界且后续整合明确时使用；
- Interleaving 用于辨析，不等于随机切换项目；
- Desirable Difficulty 必须有成功可能、反馈和恢复。

## 9. Route Receipt

```text
Route=<M|B|J>｜State=<state>｜Methods=<1-3>｜Oracle=<one sentence>｜Review=<0-3 probes>
```

用户当前明确目标优先于 review due；复习不得绑架会话。

## 10. 失败切换

- 示例后仍不会：缩小 KC，Completion Problem；
- 提示越来越多：停止升级 mastery，另建 H0 变式；
- 苏格拉底无基础：直接建最小模型；
- 实践反复失败：隔离瓶颈后回 whole task；
- 判断不可解析：概率/代理指标/recheck/kill criteria；
- 来源冲突：呈现分歧和未知，不强行统一；
- 项目 alias 冲突：不猜 canonical，标 unknown 或最小澄清。
