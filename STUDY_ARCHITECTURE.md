# Study OS v0.0.0.2｜架构与关键决策

## 1. 双平面

### Plane A｜Learning Control Plane

```text
Outcome / Oracle
→ MBJ Route
→ Learner Diagnosis
→ Method Selection
→ Tutor Loop
→ Independent Acceptance
```

### Plane B｜Continuity & Governance Plane

```text
GitHub HEAD
→ Tutor LLM read
→ Session Delta(base_commit)
→ Active Maintainer Agent reconcile/write
→ commit + MAINTAINER_HANDOFF + rollback
→ successor Agent / Tutor LLM
```

## 2. Agent-neutral 角色模型

| 角色 | 可以由谁承担 | 权限 |
|---|---|---|
| Tutor LLM | ChatGPT、Claude、Gemini 或其他可 live-read GitHub 的 LLM | 默认只读教学与生成 Delta |
| Implementer Agent | Claude Code、Codex、Gemini CLI、Copilot Agent 或其他可执行 Agent | 首次安装、验证、commit/push |
| Maintainer Agent | 任意具备当前仓库写入能力的 Agent | 合并 Session、协议调整、恢复 |
| Reviewer Agent | 任意独立 LLM/Agent | 只读复核，不与写入者共享未验证假设 |

协议不指定永久“唯一 Agent”。它指定的是 **单任务单 active writer**：同一作用域同一时间只有一个 Maintainer Agent 写入；任务完成后可以换 Agent。

## 3. 跨 Agent 接力协议

### 3.1 Bootstrap

后继 Agent 必须读取：

1. 当前平台的已知入口；
2. `/AGENTS.md`；
3. `/_system/MAINTAINER_HANDOFF.md`；
4. 当前 `git status`、HEAD、最近相关 commits；
5. 本次任务所需 Canonical 文件。

输出：

```text
MAINTAINER_BOOTSTRAP
agent=<tool/model or unknown>
repo=<owner/repo>
branch=<branch>
head=<sha>
worktree=<clean|dirty>
capabilities=<read,write,commands,test,commit,push>
mode=<install|takeover|session_merge|root_change|recovery>
scope=<files/domains>
```

### 3.2 Active Writer Lease

Lease 不是服务或锁文件，而是任务合同：

- base commit；
- scope；
- active agent；
- 禁止并发覆盖；
- 完成后 commit/push、更新 Maintainer Handoff；
-若发现同域并发变化，做三方合并或触发 Stop Condition。

### 3.3 Handoff

`MAINTAINER_HANDOFF.md` 保存当前可执行状态，不保存完整聊天：完成内容、验证、未完成、下一精确动作、风险、修改文件、rollback 和工作树状态。

### 3.4 Preemption-safe Checkpoint

Agent 在主动换手、上下文即将耗尽或工具可能中断前，必须优先留下可访问状态：提交并 push 一个可逆 checkpoint，或在 push 无权限时输出 patch 路径、dirty files 与精确恢复命令，并同步 Maintainer Handoff。不同运行环境无法恢复仅存在于前 Agent 本地且未提交的改动；不得把这种不可见状态描述为“可无缝接手”。

## 4. 动态项目发现

### 4.1 为什么不能按目录计数

项目目录可能仍存在但已合并、归档或 superseded；一个 canonical 项目也可能包含多个子路线。项目数量必须从当前 HEAD 的证据推断，而不是写死。

### 4.2 候选发现

实施 Agent 搜索：

- 当前项目根目录及其历史索引；
- 包含 `00_PROJECT_BRIEF.md`、`PROJECT_BRIEF.md`、`HANDOFF.md`、课程入口或被路由文件引用的目录；
- 现有 `PROJECT_INDEX`、`ARCHIVE_INDEX`、README、Handoff 中的 active / merged / archived 声明。

### 4.3 分类

```text
active      当前可路由
paused      保留但不默认推进
merged      已并入另一个 canonical project
archived    历史只读
unknown     证据冲突；默认不自动路由、不删除
```

### 4.4 Evidence Precedence

项目拓扑冲突时按以下优先级裁决：

1. Owner 最新、明确且具体的合并/归档/复活指令；
2. current HEAD 中最新 canonical Brief/Handoff 与显式 topology metadata；
3. current project/archive index 与最近相关 commit/diff；
4. 目录名和文件存在性；
5. 旧日志、旧排期和聊天摘要。

“可能已经合并”等不确定表述是调查线索，不足以直接改拓扑；Agent 应核验后分类，证据仍冲突则标 `unknown` 并继续处理其他明确项目。

### 4.5 Canonical ID 与 Alias

- 每个 canonical project 有唯一 ID；
- old slug / old title / merged source 可作为 alias；
- alias 必须解析到一个 canonical ID；
- `merged_into` 链不得循环；
- merged/archived 目录保留 Git 历史，默认不创建新的 Routine Handoff 写入；
- ambiguous 项目以 `unknown` 保留，实施不因普通歧义阻塞，其余系统可继续。

## 5. Canonical Fact Domains

| 事实域 | Canonical 位置 | 写入者 |
|---|---|---|
| 全局协议 | 七个 Root 文件 | Owner 授权的当前 Maintainer Agent |
| 项目稳定目标 | canonical project Brief | 当前 Maintainer Agent |
| 项目当前能力状态 | canonical project `HANDOFF.md` | 当前 Maintainer Agent |
| 项目导航与 aliases | `_system/STUDY_INDEX.md`（派生） | 当前 Maintainer Agent |
| Maintainer 连续性 | `_system/MAINTAINER_HANDOFF.md` | 每次写入任务的当前 Agent |
| 会话增量 | `STUDY_SESSION_DELTA_*.md` 临时文件 | Tutor LLM 生成；Maintainer 消费 |
| 审计和恢复 | Git history / recovery ref | Git |

## 6. Learning Runtime

### MBJ

- **M｜Mental Model & Memory：** 回忆、解释、辨析、长期保持。
- **B｜Build & Behavior：** 执行、构建、调试、恢复、真实产物。
- **J｜Judgment, Inquiry & Synthesis：** 研究、证据综合、概率判断、证伪与决策。

### 七维 Router

Outcome、knowledge type、prior state、error state、task structure、stakes/volatility、memory/transfer state。

### 三时钟

Memory、Capability、Validity。

### 三队列

Recall、Reperformance、Resolution。用户不维护卡片或评分；模型根据 pre-help performance 提议变化，Maintainer 核验写回。

## 7. Context Loading

Tutor LLM 典型读取：

```text
AGENTS.md
STUDY_ORCHESTRATOR_ROUTE.md
_system/STUDY_INDEX.md
selected canonical Brief + Handoff
relevant Method Registry section + sources
```

Maintainer Agent 典型读取：

```text
AGENTS.md
_system/MAINTAINER_HANDOFF.md
current git status / log
relevant Root contract
affected project state or implementation task pack
```

## 8. Known Agent Adapters

- Codex：`AGENTS.md`；
- Claude Code：`CLAUDE.md` 导入 Canonical Contract；
- Gemini CLI：`GEMINI.md`；
- GitHub Copilot：`.github/copilot-instructions.md`；
- Agent Skills：`.agents/skills/study-os/SKILL.md`；
- 未知 Agent：使用 Generic Initial / Takeover Prompt 显式加载。

适配器是入口，不是强制执行保证；Receipt 和可重放验证负责发现未加载问题。

## 9. Session Delta 与 Merge

Tutor LLM 结束时生成一个通用 Delta。当前 Maintainer Agent：

```text
verify repo/branch/protocol/base_commit
→ resolve canonical project through dynamic Index
→ verify pre-help evidence/hints/privacy
→ merge into canonical Handoff
→ update affected Index row and Maintainer Handoff
→ immediate checks
→ commit/push
→ return receipt + rollback
```

## 10. Degraded Paths

| 场景 | 行为 |
|---|---|
| Tutor 无 GitHub live read | 明确 `GITHUB_NOT_VERIFIED`；不声称当前状态；零上传模式不保证完整连续性 |
| Agent 不支持自动入口 | 使用 Generic Prompt 显式要求读取 Root 与 Handoff |
| base commit 过期 | 当前 HEAD 上三方语义合并；同域冲突才暂停 |
| 项目状态不明 | 标 `unknown`，不自动路由、不删除；继续处理明确项目 |
| 前 Agent 未留下 Handoff | 从 Git log/diff/任务包重建最小 Handoff，并记录缺口 |
| 工作树有用户改动 | 不 discard；隔离分支/worktree 或限定提交文件 |

## 11. ADR

- ADR-001：Markdown/Git 为跨 Agent 公共底座。
- ADR-002：ChatGPT 是默认 Tutor，不是协议依赖。
- ADR-003：Maintainer Agent 可替换；单任务单 active writer。
- ADR-004：项目数量运行时发现；不写死。
- ADR-005：合并项目通过 canonical ID + alias + history 处理。
- ADR-006：`MAINTAINER_HANDOFF.md` 是跨 Agent 实施连续性最小载体。
- ADR-007：不接外部 FSRS；保留三队列的零人工机制。
- ADR-008：Known adapters + Generic Prompt；不声称任意 Agent 自动加载。
- ADR-009：Routine Session 不改 Root。
- ADR-010：无等待、无 soak；即时 Conformance Gate。
