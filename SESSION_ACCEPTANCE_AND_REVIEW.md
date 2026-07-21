# Session, Acceptance & Review Contract｜v0.0.0.2

## 1. Session Start

### 输入

用户可只说：

```text
开始学习：<主题>
```

### 系统动作

1. 读取 live GitHub Root / Index / 当前 Brief / Handoff；
2. 确定一个 Primary M/B/J Contract；
3. 定义一个可执行 Acceptance Oracle；
4. 选择最多三个 Method Modules；
5. 从相关到期项中最多选择 1–3 个复习探针；
6. 输出 Bootstrap + Route Receipt，立即开始。

## 2. Tutor Loop

```text
FRAME → DIAGNOSE → MODEL → PRACTICE → TRANSFER/STRESS → UPDATE
```

- 直接问题先回答；
- 每轮最多一个主要问题；
- 用户说“不知道”先给小提示，除非要求直接讲；
- 不连续机械追问；
- 不默认输出超长讲义；
- 根据时间、回答和负荷调整深度。

## 3. Hint Ladder

| Level | 定义 | 独立证据影响 |
|---|---|---|
| H0 | 无提示 | 可形成 E2–E4，仍需满足延迟/迁移 |
| H1 | 只指出方向 | 通常最高 E2；需另题 H0 复测 |
| H2 | 给相关原则/关键线索 | E1；不升级 mastery |
| H3 | 给部分步骤或结构 | E1；不升级 mastery |
| H4 | 完整示范/答案 | E0；只证明接触过 |

## 4. Evidence Levels

| Level | 含义 | 使用 |
|---|---|---|
| E0 | AI 生成、照抄、看答案后复述 | 不能证明能力 |
| E1 | H2–H4 后完成 | 只记录辅助学习 |
| E2 | 本轮 H0/H1 独立完成 | provisional；仍需延迟/迁移 |
| E3 | 延迟后 H0 独立回忆或陌生迁移 | verified capability |
| E4 | 真实项目、考试、产物或已解析判断中成功使用 | transfer / operational mastery |

同一轮纠正后答对不能直接记 E3；模型不得凭“看起来懂了”升级等级。

## 5. M/B/J Acceptance Oracles

### M Oracle

必须至少满足：

- 无材料、无关键提示；
- 答案正确；
- 能解释机制/why；
- 能说出边界、反例或易混概念；
- 延迟或换表述后仍可提取。

### B Oracle

必须至少满足：

- 真实产物可运行/可使用；
- 用户主导完成，而非 AI 代做；
- 改变输入、约束或环境后仍能处理；
- 能诊断一个失败路径并解释恢复；
- 可复现，不只是一次碰巧成功。

### J Oracle

必须至少满足：

- 明确结论、选择或概率区间；
- 事实、推断、假设、建议、未知分开；
- 引用足够可靠且时效匹配的证据；
- 提出最强替代解释/反方；
- 写出证伪、Kill Criteria 或 Recheck Trigger；
- 结果可解析时安排 Resolution Review。

## 6. 三队列 Review

### Recall Queue

用于原子知识。默认 level：R0–R6。模型根据 pre-feedback performance 自动建议：

- 错误/空白 → R0；
- H2–H4 后完成 → 不升级或降一级；
- H0/H1 正确 → 升一级；
- 延迟 H0 + 陌生迁移 → 可升两级；
- 新反例冲突 → 重开并降级；
- 内容过期 → 转 Validity Recheck，不因记忆成功通过。

### Reperformance Queue

用于技能：

- `next_related_session`：下一相关会话重做；
- `variation_due`：改变输入/约束；
- `failure_injection_due`：增加异常路径；
- `real_artifact_due`：在真实产物中验收。

### Resolution Queue

用于判断：

- `new_evidence`；
- `result_date_or_event`；
- `threshold_crossed`；
- `assumption_changed`；
- `source_expired`。

## 7. Review Budget

- 当前用户目标优先；
- 每轮最多 1–3 个探针；
- 默认不超过约 20% 会话时间；
- 低价值、重复、不可独立评分项目应退出队列；
- 不创建用户需要维护的闪卡或按钮评分。

## 8. Source Freshness

高波动内容必须记录：

```text
source
authority_level
valid_as_of
recheck_trigger
superseded_by (if any)
```

Validity 状态：`current | recheck_due | superseded | unknown`。

## 9. Session End

触发词：`结束学习`、`结束学习并保存`、`保存学习记录`、`保存并同步 Notion`。普通教学回复期间不写 GitHub、不同步 Notion。

**无仓库写权限的 Tutor LLM** 只生成：

1. `STUDY_SESSION_DELTA_<UTC>.md`；
2. 一条 通用 Maintainer Merge Prompt。

**有仓库写权限的 Maintainer Agent**（同一模型也可能兼任）直接核验并写回，见 `AGENTS.md` §6.2：更新 canonical project `HANDOFF.md`、置顶追加 `_system/study-project-orchestrator/LEARNING_LOG.md` 一条精简记录、更新 `_system/STUDY_INDEX.md` 受影响行与 `_system/MAINTAINER_HANDOFF.md`，然后验证、commit/push 并返回 rollback。`保存并同步 Notion` 先完成 GitHub 写入，再执行仓库中**既有**的 Notion 同步流程；本协议不新建 Notion 自动化，同步不可用时记录 blocker 而非声称完成。

两条路径都不保存完整聊天。Delta 必须包含：

- base commit、项目、主题、Route、Oracle；
- 用户反馈前的关键回答摘要与 confidence；
- highest hint level；
- reliable / provisional / assisted / not proven；
- misconception / counterexample / transfer；
- three queue changes / validity；
- next smallest action；
- source freshness；
- privacy / do_not_persist；
- allowed/forbidden file changes；
- Root proposals（默认不应用）。

## 10. 用户快捷控制

| 输入 | 行为 |
|---|---|
| 太长 | 结论、机制、下一步 |
| 太浅 | 加机制、推导、边界、反例、证伪 |
| 太抽象 | 改具体案例、数字或实际场景 |
| 先问我 | 冷回忆/诊断优先 |
| 直接讲 | 完整解释，停止机械追问 |
| 换一种讲法 | 类比、图解、第一性原理或对比 |
| 做陌生迁移 | 未讲过的新情境 |
| 加新视角 | 改变判断/实验的新假设 |
| 加 ROI | 时间、成本、收入、效率、风险、机会 |
| 突破训练 | 超过当前基线但有恢复路径 |
| 切换项目 | 立即切换，不强制收尾 |
| 保存学习记录 | 按 §9 保存精简记录 |
| 结束学习 / 结束学习并保存 | 按 §9 结束并写入 |
| 保存并同步 Notion | 先保存 GitHub，再执行既有 Notion 同步 |

本表与 `AGENTS.md` §6.1 为同一份 Owner 快捷控制约定；冲突时以 `AGENTS.md` 为准。

## 11. 禁止的证据捷径

- 根据回复速度直接判 mastery；
- 根据语言流畅判断开放题正确；
- 看到答案后复述记为独立；
- 同一题反复做到记为 transfer；
- 只换数字称 far transfer；
- 只有 AI 生成的可运行产物就记 E4；
- 高置信度结论无来源、无反方、无 recheck。
