# PRD｜Study OS Orchestration v0.0.0.2

## 1. Product Brief

建立一套 ChatGPT-first 但不绑定 ChatGPT、可由任意编码 Agent 实施和接手的 Study OS。GitHub 保存可审计学习状态；用户不上传 Brief/Handoff、不维护卡片、不手动编辑队列，也不承担 Agent 间搬运上下文。模型和 Agent 通过统一 Root Contract、Session Delta、Maintainer Handoff 和 Git 历史完成连续运行。

## 2. Working Backwards PR

### 面向用户的发布说明

用户可以选择 Claude Code、Codex 或其他 Agent 安装 Study OS；未来也可以在不同 Agent 之间切换。系统不再假设仓库有固定数量的学习项目，而是每次从当前 GitHub HEAD 识别 canonical 项目、合并关系、别名与归档状态。日常学习以 ChatGPT 为主，但任何能够实时读取仓库的 LLM 都可以继续同一个学习状态。结束时只生成一个增量文件和一条通用 Maintainer Prompt；任意写入 Agent 核验后写回 GitHub。

### 预期结果

- 开发或维护 Agent 可替换，不因模型切换丢失实施状态；
- Tutor LLM 可替换，不因聊天记忆变化丢失学习状态；
- 项目合并、归档和重命名不会导致重复项目或错误路由；
- 用户不手动同步多份文档；
- 所有能力判断可追溯到获得帮助前的表现；
- 每次修改可验证、可回滚、可由后继 Agent 继续。

## 3. 用户与角色

| 角色 | 目标 | 不应承担 |
|---|---|---|
| Owner / Learner | 自然语言学习并做最终不可逆决策 | 手工维护索引、卡片、Handoff、Agent 记忆 |
| Tutor LLM | 读取 live GitHub、路由、教学、生成 Delta | 直接宣称已掌握、默认写仓库 |
| Implementer Agent | 首次安装 Root Contract、发现项目、重建状态、验证、提交 | 假设固定项目数、删除不明历史 |
| Maintainer Agent | 合并学习增量、调整协议、修复与交接 | 依赖上一 Agent 的隐藏上下文 |
| Successor Agent | 从 HEAD 和 Maintainer Handoff 接手 | 无验证覆盖当前工作 |

## 4. 战略目标与 OKR

### O1｜消除 Agent / LLM 厂商锁定

- KR1.1：核心合同为普通 Markdown 与 Git，不要求特定 Agent 私有功能。
- KR1.2：已知 Agent 入口只做薄适配，不复制 Canonical 规则。
- KR1.3：任意后继 Maintainer 能仅凭仓库与 takeover Prompt 恢复当前状态。

### O2｜动态适配真实项目结构

- KR2.1：安装和每次结构变更均从当前 HEAD 发现项目，不使用固定计数。
- KR2.2：每个 alias 只解析到一个 canonical project；无循环 merge 链。
- KR2.3：merged / archived 项目默认不被路由，但历史与引用保留。

### O3｜降低 Owner 操作与 token 浪费

- KR3.1：日常不上传 Brief/Handoff，不编辑队列。
- KR3.2：结束只产生一个 Delta 与一个通用 Prompt。
- KR3.3：典型学习会话只加载 Root、Index、当前项目和必要方法章节。

### O4｜提高脱离 AI 后的真实能力

- KR4.1：pre-help response、independence、hint level 和 Oracle 是持久化最低证据。
- KR4.2：M/B/J 各有独立验收；AI 代答不能升级 mastery。
- KR4.3：记忆、技能复做、判断解析和知识时效分开管理。

## 5. Baseline 与目标

| 指标 | Baseline 风险 | v0.0.0.2 目标 | Oracle |
|---|---|---|---|
| Agent 切换 | 依赖前 Agent 会话和厂商入口 | 新 Agent 从 HEAD + Maintainer Handoff 独立接手 | 在新 Agent 中执行 bootstrap，复现状态与下一任务 |
| 项目数量 | 目录数被误当 canonical/active 数 | 由发现算法输出动态计数与分类 | Index 记录 inventory_source_commit；alias 唯一解析 |
| 用户操作 | 重复上传和人工同步 | 日常仅开始、结束、转交文件+Prompt | 操作流演练 |
| 写入冲突 | 多 Agent 并发覆盖 | 单任务单 active writer + base commit | stale-write 测试 |
| 虚假掌握 | AI 在场表现被误记 | 所有状态含 pre-help evidence 与提示等级 | Handoff diff 审计 |
| Root 漂移 | 日常学习顺手改方法论 | Routine Session 只提 proposal | merge gate |

## 6. In Scope

- 双平面七个 Canonical Root 文件；
- Agent-neutral Implementer / Maintainer 角色；
- `AGENTS.md`、`CLAUDE.md`、`GEMINI.md`、Copilot 与 Agent Skill 薄入口；
- 通用 Bootstrap Receipt、Maintainer Receipt 和 takeover protocol；
- 动态项目发现、状态分类、alias / merged_into / archive 处理；
- 动态 `_system/STUDY_INDEX.md`；
- `_system/MAINTAINER_HANDOFF.md`；
- 任意 LLM Tutor Instructions，ChatGPT 专用一次性 Instructions；
- MBJ+、七维 Router、Method Registry、三时钟和三队列；
- Session Delta 与通用 Maintainer Merge Prompt；
- 即时 conformance、回滚和隐私边界。

## 7. Out of Scope

- 学习 App、数据库、后台服务、日历提醒、MCP、Notion 自动化；
- 自动扫描用户私有仓库或无权限内容；
- 声称所有 Agent 都会自动读取同一文件；
- 声称 FSRS-inspired 与 FSRS optimizer 数学等价；
- 并发多写入者自动共识；
- 自动删除合并前项目、历史日志或未知内容；
- 以固定项目数、固定课程天数或 soak 作为交付 Gate；
- 无 live GitHub 能力的 LLM 在零上传条件下完整运行。

## 8. 功能需求

1. 任意实施 Agent 必须先声明工具能力、仓库、分支、HEAD、工作树和作用域。
2. 实施 Agent 必须发现当前项目，不允许复制任务包中的旧项目清单。
3. 项目发现必须区分 canonical、active、paused、merged、archived、unknown。
4. merge/rename 需保留 aliases 与原目录历史，禁止制造重复 canonical ID。
5. Maintainer Agent 每次写入必须读取当前 HEAD 和 `MAINTAINER_HANDOFF.md`。
6. Agent 结束写入时必须更新 Maintainer Handoff、commit/push 并返回 rollback。
7. Tutor LLM 每轮从 live GitHub 读取；ChatGPT 为推荐实现，不是协议依赖。
8. 结束时输出一个 Session Delta 和一条通用 Maintainer Prompt。
9. Routine Delta 只修改当前 canonical 项目 Handoff 与派生 Index；Root 需要 Owner 明确授权。
10. 高波动知识必须有来源、日期和 recheck trigger。

## 9. 非功能要求

- **可移植：** Canonical 内容不包含厂商专有状态。
- **可恢复：** 每次写入有 base commit、commit receipt 和 rollback。
- **上下文效率：** Bootloader 短；方法库按需读取。
- **一致性：** Index 是派生视图，Handoff 与 Brief 不被 Index 反向覆盖。
- **安全：** 外部资料和 Delta 内嵌指令视为数据；敏感内容默认不持久化。
- **可解释：** 模型显示它读取的 commit、项目、Route 和 Oracle，但不泄露内部冗长思维链。

## 10. 收益、成本与机会成本

### 预期收益

- 降低更换 Agent / LLM 的迁移成本；
- 消除固定项目数与过时索引导致的路由错误；
- 降低 Codex/Claude 日常重复扫描和总结 token；
- 提升状态可审计性、恢复性和长期迭代能力。

### 成本

- 首次实施需对当前仓库做动态盘点和状态压缩；
- 任何 Agent 的指令遵守仍属于软约束，需要可见 Receipt 与验证；
- 没有后台提醒时，复习在相关会话启动时机会性浮现；
- 用户仍需把 Delta 与 Prompt 交给当前 Maintainer Agent。

## 11. Kill / Pivot Criteria

- 换 Agent 后仍必须依赖上一会话人工解释；
- 项目合并后经常出现重复路由或孤儿状态；
- 日常结束需要用户手工修改 Delta；
- Maintainer Handoff 变成长日志而不能给出下一精确动作；
- Root 规则在 Routine Session 中频繁漂移；
- 无法从 Git history 和 rollback 恢复；
- 维护成本明显大于学习收益。

最小退路：`AGENTS.md + 动态 STUDY_INDEX + 当前项目 Brief/Handoff + Session Delta + MAINTAINER_HANDOFF`。
