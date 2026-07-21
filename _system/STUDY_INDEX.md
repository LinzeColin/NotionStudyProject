# Study Index｜v0.0.0.2

> **Derived view.** 本文件由当前仓库 HEAD 动态发现生成，安装时和每次项目拓扑变化后必须重建。禁止把任务包预设或旧的固定项目清单复制进来。项目 `HANDOFF.md`、`00_PROJECT_BRIEF.md` 与可靠仓库证据高于本派生视图。

## Generation Receipt

- inventory_source_commit: `6cac133a7e6352fe5db71904055f22d61d3e79b3`
- supplementary_evidence_absorbed: `31409cb05ae5d140fa5702d65d535342611cce11`（原孤立分支 `sync/pause-20260623`）已于 2026-07-21 吸收进 `main`，canonical 副本 `_system/study-project-orchestrator/2026-06-23_PAUSED_SYNC_RECORD.md`；分支已删除
- index_file_commit: RESOLVE_WITH_GIT_LOG_DO_NOT_SELF_REFERENCE — `git log -1 --format=%H -- _system/STUDY_INDEX.md`
- generated_at_utc: `2026-07-21T22:55:46Z`
- discovery_agent: Claude Code / claude-opus-4-8 (Implementer Agent)
- discovery_inputs: `StudyProjects/*/{00_PROJECT_BRIEF.md,HANDOFF.md,state.json,MERGED_INTO_*.md}`、`_system/study-project-orchestrator/{PROJECT_INDEX.md,ARCHIVE_INDEX.md,LEARNING_LOG.md,*.md}`、`git log`/`git ls-remote`
- candidate_directory_count: 13
- canonical_project_count: 13
- active_count: 9
- paused_count: 0
- merged_count: 1
- archived_count: 2
- unknown_count: 1

计数由发现过程得出，不是固定值。`13 = 9 active + 0 paused + 1 merged + 2 archived + 1 unknown`。

## Canonical Projects

| Canonical ID | Title | Status | Aliases / Merged From | Merged Into | Brief | Handoff | Default Route | Current Focus | Next Action | Review / Trigger | Validity | State Source Commit |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| `arxiv-top1-program` | arXiv Top1 Program | active | `arXiv Top1 Program`、`arxiv` | — | `StudyProjects/arxiv-top1-program/00_PROJECT_BRIEF.md` | `StudyProjects/arxiv-top1-program/HANDOFF.md` | M | 三条 active track：`Q-FIN q-fin.TR` D004 validated、`PHYS quant-ph` D004 已开讲后被 Owner 暂停、`MATH math.PR` D003 validated | 先确认 PHYS `quant-ph` D004 是否恢复；未恢复则按 balanced route 处理 `MATH math.PR` D004 或 Owner 指定 focus | Recall：VWAP vs last price vs best ask、adverse selection、toxic flow、post-fill markout、base-rate 算术 | current | `ad23b51` + 已吸收的 `31409cb` |
| `ai-workflow-operating-system` | AI Workflow Operating System | active | `Prompt Engineering and Loop Engineering`、`prompt-engineering-loop-engineering`、`AI Workflow OS` | — | `StudyProjects/ai-workflow-operating-system/00_PROJECT_BRIEF.md` | `StudyProjects/ai-workflow-operating-system/HANDOFF.md` | B | D04 Action Gate、D05 State Machine 完成；D06 Evaluation 已开始未验收 | D06 critical-failure 判定题：10 个任务过 8，失败 2 个是「权限不足仍继续执行」，是 80% 可靠还是不可上线缺陷 | Reperformance：Research/Execution/Risk Gate 归因；`killed` vs `blocked`；state transition 不可跳级 | recheck_due（计划窗口 2026-06-22→2026-07-18 已过） | `f475430` |
| `industrial-ai-saas-builder` | Industrial AI SaaS Builder | active | `Industrial AI SaaS Builder` | — | `StudyProjects/industrial-ai-saas-builder/00_PROJECT_BRIEF.md` | `StudyProjects/industrial-ai-saas-builder/HANDOFF.md` | J | D01、D02 完成（D02 独立回忆经纠正后通过），D03 gate 开放 | D03：RAG eval 与 trust boundary，产出 Eval rubric + 20 题 eval set | Reperformance：RAG vs 模型记忆判断；Recall：可核查性价值、非 RAG-first 反例 | recheck_due（计划窗口 2026-06-14→2026-07-17 已过） | `ef1ad30` |
| `quant-agent-workspace` | Quant Agent Workspace | active | `Quant Agent Workspace` | — | `StudyProjects/quant-agent-workspace/00_PROJECT_BRIEF.md` | `StudyProjects/quant-agent-workspace/HANDOFF.md` | B | D01、D02 完成，D03 gate 开放；`OrderIntent` schema 与 data source matrix 已产出 | D03 Strategy Hypothesis Design：把研究想法转成可证伪的 strategy contract | Reperformance：三案例分级与 fail-closed blocker 复做（换输入） | recheck_due（计划窗口 2026-06-14→2026-07-04 已过） | `30096ff` |
| `industrial-666-roi-map` | 全工业体系 666 小类 ROI 学习计划 | active | `Industrial 666 ROI Map`、`industrial-666` | — | `StudyProjects/industrial-666-roi-map/00_PROJECT_BRIEF.md` | `StudyProjects/industrial-666-roi-map/HANDOFF.md` | J | D01 开放未完成；scaffold、scoring schema v0.1、Notion 行级同步（Chrome fallback）已就绪 | D01：核验 taxonomy 与来源策略，讲清小类为何是最小单元，解释 scoring schema v0.1 | Resolution：GB/T 4754-2017 口径与来源可靠性核验 | recheck_due（来源与口径尚未核验） | `b837db3` |
| `ai-tech-industry-investment-judgment` | AI时代技术-产业-投资判断力 | active | `AI Tech Industry Investment Judgment` | — | `StudyProjects/ai-tech-industry-investment-judgment/00_PROJECT_BRIEF.md` | `StudyProjects/ai-tech-industry-investment-judgment/HANDOFF.md` | J | 项目已创建，D01 未开始；2026-06-21 由 90 天压缩为 30 天（压缩交付深度，不删模块） | D01：按 30 天压缩版开课，先定义研究与模拟决策边界（不做真实资金/杠杆任务） | Resolution：AI 能力/基础设施/电力瓶颈等高波动结论需 valid_as_of 与 recheck | recheck_due（高波动领域 + 计划窗口 2026-06-21→2026-07-20 已过） | `0f3967d` |
| `ceo-finance-strategy-system` | CEO Finance Strategy System | active | `CFO Finance Project`、`CEO/CFO Finance Strategy` | — | `StudyProjects/ceo-finance-strategy-system/00_PROJECT_BRIEF.md` | `StudyProjects/ceo-finance-strategy-system/HANDOFF.md` | J | 计划中，从未开课；无既有 HANDOFF，已按当前证据新建 | D01：教育与决策框架优先，明确不提供法律/金融/交易建议 | Resolution：开课时间与窗口需 Owner 确认 | recheck_due（计划窗口 2026-06-18→2026-07-15 已过且从未开课） | `d49824d` |
| `gpu-ml-systems-model-training` | GPU ML Systems & Model Training | active | `GPU ML Systems & Model Training`、`gpu-ml-systems` | — | `StudyProjects/gpu-ml-systems-model-training/00_PROJECT_BRIEF.md` | `StudyProjects/gpu-ml-systems-model-training/HANDOFF.md` | B | 计划中，从未开课；D01 依赖真实硬件 profile | D01：先做硬件/环境 profile，再规划任何训练实验；昂贵训练需 run contract（预算上限 + 停止条件） | Reperformance：硬件到位后做 profile 产物 | recheck_due（硬件假设未核验） | `333ab08` |
| `local-ai-infrastructure` | Local AI Infrastructure | active | `Local AI Infrastructure` | — | `StudyProjects/local-ai-infrastructure/00_PROJECT_BRIEF.md` | `StudyProjects/local-ai-infrastructure/HANDOFF.md` | M | 计划窗口 2026-07-19→2026-08-15 内，从未开课；无既有 HANDOFF，已按当前证据新建 | D01：概念优先，把每个基础设施决策连到本地/远程 agent、RAG 的成本、隐私、可靠性与 ROI | Resolution：本机实际规格需在采购/到货后核验 | current | `02a20a2` |
| `prompt-engineering-loop-engineering` | Prompt Engineering and Loop Engineering | merged | `prompt-loop`、`Prompt/Loop Engineering` | `ai-workflow-operating-system` | `StudyProjects/prompt-engineering-loop-engineering/00_PROJECT_BRIEF.md` | `StudyProjects/prompt-engineering-loop-engineering/HANDOFF.md`（历史） | — | 2026-06-14 并入 `ai-workflow-operating-system`；目录与历史保留 | 不路由。新的 Prompt/Loop/Tool/Eval 学习一律进入 `ai-workflow-operating-system` | — | — | `c0c8105` |
| `ai` | AI（首版广域 AI 路线） | archived | `ai`（slug 精确匹配；裸词「AI」不作为 alias） | — | `StudyProjects/ai/00_PROJECT_BRIEF.md` | `StudyProjects/ai/HANDOFF.md`（历史） | — | 2026-06-14 归档：广域 AI 路线被拆分为 4 个当前项目 | 不路由。superseded_by：`industrial-ai-saas-builder`、`ai-workflow-operating-system`、`local-ai-infrastructure`、`gpu-ml-systems-model-training` | — | — | `c0c8105` |
| `notion-windows-markdown-operator` | Notion Windows Markdown Operator | archived | `Notion Windows Markdown Operator` | — | `StudyProjects/notion-windows-markdown-operator/00_PROJECT_BRIEF.md` | `StudyProjects/notion-windows-markdown-operator/HANDOFF.md`（历史） | — | 2026-06-14 归档：在当前合并路线之外 | 不路由。仅在 Owner 明确重启时恢复 | — | — | `c0c8105` |
| `dlm-flow-agent-cost-sprint` | DLM Flow Agent Cost Sprint | unknown | `dlm-sprint`、`DLM Flow Agent Cost Sprint` | — | `StudyProjects/dlm-flow-agent-cost-sprint/00_PROJECT_BRIEF.md` | `StudyProjects/dlm-flow-agent-cost-sprint/HANDOFF.md`（未重建） | — | 证据冲突：目录、Brief、Handoff、state 齐全且 `status=plan_enriched_zero_base_patch`，但 Legacy `PROJECT_INDEX.md` 与 `ARCHIVE_INDEX.md` **都未列出**它 | 不自动路由、不删除。需要 Owner 一句话裁决：active / paused / archived | — | unknown | `e67fafa` |

## Alias Resolution

| Alias / 旧称 | Resolves to |
|---|---|
| `Prompt Engineering and Loop Engineering`、`prompt-engineering-loop-engineering`、`prompt-loop` | `ai-workflow-operating-system`（经 `merged_into`） |
| `Industrial 666 ROI Map`、`industrial-666`、`全工业体系 666 小类 ROI 学习计划` | `industrial-666-roi-map` |
| `AI Tech Industry Investment Judgment`、`AI时代技术-产业-投资判断力` | `ai-tech-industry-investment-judgment` |
| `CFO Finance Project`、`CEO/CFO Finance Strategy` | `ceo-finance-strategy-system` |
| `GPU ML Systems & Model Training`、`gpu-ml-systems` | `gpu-ml-systems-model-training` |
| `dlm-sprint`、`DLM Flow Agent Cost Sprint` | `dlm-flow-agent-cost-sprint`（status `unknown`，不自动路由） |

**歧义保护：** 裸词「AI」不注册为 alias —— 它同时可能指向 `ai`（archived）、`ai-workflow-operating-system`、`ai-tech-industry-investment-judgment`、`industrial-ai-saas-builder`。遇到裸词「AI」时给一个最小编号选择，不猜测。

**Merge graph：** 唯一一条边 `prompt-engineering-loop-engineering → ai-workflow-operating-system`；目标项目 `merged_into` 为空。无环。

`ai` 是 archived 而非 merged：它被拆分为四个后继项目，没有单一 `merged_into` 目标，因此保留为独立 canonical ID + `superseded_by` 列表，以保证「alias 唯一解析」不被破坏。

## Discovery Rules

- `status`：`active | paused | merged | archived | unknown`；
- 每个 alias 只解析到一个 canonical project；
- `merged_into` 图无环；
- merged/archived 默认不路由；
- unknown 保留但不自动路由、不删除；
- Handoff/Brief 与可靠的当前仓库证据高于本派生视图；
- 冲突时重建 Index，不反向改写项目状态；
- 目录存在不等于项目 active；计划窗口过期不等于项目 paused/archived —— 只有 Owner 明确要求才能改状态；
- `inventory_source_commit` 是发现所依据的输入快照；本文件所在 commit 用 `git log -1 --format=%H -- _system/STUDY_INDEX.md` 解析，不写自引用 SHA。

## Known Gaps & Unknowns

1. `dlm-flow-agent-cost-sprint` 状态 `unknown`：两份 Legacy 索引都未收录，但项目文件完整。等 Owner 一句话裁决，其余项目不受阻塞。
2. 【已解决】原孤立分支 `sync/pause-20260623`（`31409cb`，与 main 无共同祖先）承载 2026-06-23 的暂停同步记录：arXiv `PHYS / quant-ph` 当日课程「amplitude-like → p_raw / p_exec」被 Owner 要求暂停，等待明确恢复指令。该记录已原文吸收进 `main`（`_system/study-project-orchestrator/2026-06-23_PAUSED_SYNC_RECORD.md`）并补录到 `LEARNING_LOG.md`，分支已按 Owner 指令删除。判读为**会话级**暂停，因此 `arxiv-top1-program` 仍为 `active`；PHYS 轨道待 Owner 明确恢复。
3. Legacy `PROJECT_INDEX.md` 已漂移：生成时间标注 2026-06-22，但未收录 2026-06-21 建立的 `ai-tech-industry-investment-judgment`，也未收录 `dlm-flow-agent-cost-sprint`。原因见 `_system/study-project-orchestrator/2026-06-21_NEW_PROJECT_AI_TECH_INVESTMENT.md`（当时工作树有未处理脏改动）。本 Index 已按 HEAD 事实修正。
4. `ceo-finance-strategy-system` 与 `local-ai-infrastructure` 在本次安装前**没有** `HANDOFF.md`，已按当前证据新建，能力证据一律写 `not yet proven`。
5. 多个项目的计划窗口已过期且无新证据（见 Validity 列）。按 Owner 规则，这不构成暂停理由，只是排期需要 Owner 重新确认。
6. Notion 侧存在既有 blocker（connector 重认证、图标写入、已删除页面），记录在 Legacy `ARCHIVE_INDEX.md` 与各项目 `07_NOTION/`。本协议不新建 Notion 自动化。
