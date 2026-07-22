# NotionStudyProject

Agent 中立、模型中立、以 GitHub 为权威的**学习操作系统**。治理架构为**双平面八文件**，融合 `LinzeColin/Governance` 的双平面七文件治理标准。

- 协议版本：`v0.0.0.3`
- 入口文件：[`AGENTS.md`](AGENTS.md)
- 当前状态与下一步：[`_system/MAINTAINER_HANDOFF.md`](_system/MAINTAINER_HANDOFF.md)
- 项目路由索引（派生，勿手改）：[`_system/STUDY_INDEX.md`](_system/STUDY_INDEX.md)

## 一、八个治理文件

| 规则内容 | 治理文件 | 对应 Governance |
|---|---|---|
| Agent 角色、权限、优先级、启动读取顺序、四道门、项目登记、安全、何时保存 | [`AGENTS.md`](AGENTS.md) | `00_我在哪` |
| 产品目标、范围、非目标、关键结果、成本收益、什么时候该推翻重来 | [`STUDY_PRODUCT.md`](STUDY_PRODUCT.md) | `01_产品需求` |
| 教学方、维护方、GitHub、项目状态之间的数据流与职责；**口径字典** | [`STUDY_ARCHITECTURE.md`](STUDY_ARCHITECTURE.md) | `02_系统架构` + `03_口径字典` |
| 项目解析、新建与每日流程、M/B/J 路由、修饰符、方法选择顺序 | [`STUDY_ORCHESTRATOR_ROUTE.md`](STUDY_ORCHESTRATOR_ROUTE.md) | `04_操作流程` |
| 教学方法、适用条件、禁忌、方法冲突与切换条件 | [`TEACHING_METHOD_REGISTRY.md`](TEACHING_METHOD_REGISTRY.md) | 本仓特有 |
| 提示等级、证据等级、验收标准、复习三队列、会话结束、怎么算做完 | [`SESSION_ACCEPTANCE_AND_REVIEW.md`](SESSION_ACCEPTANCE_AND_REVIEW.md) | `05_执行与验收` |
| 记忆、增量合并、并发、隐私、恢复、协议演进与回滚、变更史 | [`MEMORY_RECOVERY_AND_EVOLUTION.md`](MEMORY_RECOVERY_AND_EVOLUTION.md) | `06_运维手册` |
| 本机 Skill 的可勾选规则清单与冲突裁决 | [`SKILL_RULES_CHECKLIST.md`](SKILL_RULES_CHECKLIST.md) | 本仓特有 |

## 二、四道门

改动后必须跑 `bash _system/validation/conformance_check.sh`（期望退出码 0）：

| 门 | 规则 |
|---|---|
| **体积门** | 治理文件超出行数上限 → 失败。**去精简内容，不要调大上限** |
| **中文门** | 治理文件正文出现未登记的英文术语 → 失败。术语登记在口径字典 |
| **证据纯净门** | 项目交接文件的「无 AI 独立证据」区出现提示后完成或 AI 生成字样 → 失败 |
| **登记门** | 有 `active` / `paused` 项目没登记进下方登记表 → 失败 |

**「绿的门是假门」：** 证据没接通时必须显示「未评估」「未取证」，门保持红，不做假绿。

## 三、项目登记表（与 Notion 保持一致）

> **强制规则：** 任何 `active` / `paused` 项目必须**同时**登记在本表和 Notion `Codex Study Timeline` 数据库，两处一致。
> Notion 登记地址：<https://app.notion.com/p/37eb1a986ba680bdb5f9ea2367b08991?v=37eb1a986ba68040b4f4000cc8b21956>
> 未登记不得开课。Notion 连接器不可用时在第四节记录阻塞，**不得声称已同步**。

### 在跑项目

| # | 项目 | 短名 | 状态 | 默认路由 | 当前焦点 | 下一步 |
|---:|---|---|---|---|---|---|
| 1 | arXiv 顶级计划 | `arxiv-top1-program` | active | M | 金融 `q-fin.TR` 第4课已验收、物理 `quant-ph` 第4课开讲后暂停、数学 `math.PR` 第3课已验收 | 先确认物理轨道是否恢复；未恢复则走数学第4课 |
| 2 | AI 工作流操作系统 | `ai-workflow-operating-system` | active | B | 第4、5课完成；第6课评测已开始未验收 | 用严重失败案例压实第6课判定题 |
| 3 | 工业 AI SaaS 构建 | `industrial-ai-saas-builder` | active | J | 第1、2课完成，第3课已开放 | 第3课：检索增强的评测与信任边界，产出评分标准 + 20 题评测集 |
| 4 | 量化 Agent 工作台 | `quant-agent-workspace` | active | B | 第1、2课完成，第3课已开放 | 第3课：把研究想法转成可证伪的策略契约 |
| 5 | 全工业体系 666 小类 ROI 学习计划 | `industrial-666-roi-map` | active | J | 第1课已开放未开课；评分模型 v0.1 就绪 | 第1课：核验分类与来源策略，讲清小类为何是最小单元 |
| 6 | AI时代技术-产业-投资判断力 | `ai-tech-industry-investment-judgment` | active | J | 项目已建，第1课未开始 | 第1课：按 30 天压缩版起步，先立研究与模拟决策边界 |
| 7 | CEO 财务战略系统 | `ceo-finance-strategy-system` | active | J | 已排期，从未开课 | 第1课：教育与决策框架优先，讲清不提供法律金融建议这条边界 |
| 8 | GPU 机器学习系统与模型训练 | `gpu-ml-systems-model-training` | active | B | 已排期，从未开课；依赖真实硬件 | 第1课：先做硬件与环境实测，硬件核实前不规划昂贵训练 |
| 9 | 本地 AI 基础设施 | `local-ai-infrastructure` | active | M | 计划窗口内，从未开课 | 第1课：概念优先，把每个基础设施决策连到成本、隐私、可靠性与投入产出 |

**暂停项目：** 无。

### 历史项目（不路由，仅存档）

| 项目 | 短名 | 状态 | 说明 |
|---|---|---|---|
| 提示工程与循环工程 | `prompt-engineering-loop-engineering` | merged | 2026-06-14 并入 `ai-workflow-operating-system`；目录与历史保留 |
| AI（首版广域路线） | `ai` | archived | 2026-06-14 拆分为 4 个后继项目；**裸词「AI」不作为别名**，命中时给编号选择 |
| Notion Windows Markdown 操作 | `notion-windows-markdown-operator` | archived | 2026-06-14 归档，在当前路线之外 |
| DLM 流动 Agent 成本冲刺 | `dlm-flow-agent-cost-sprint` | **unknown** | 项目文件完整但两份旧索引都未收录 → 待 Owner 一句话裁决，暂不路由、不删除 |

## 四、Notion 同步状态

| 项目 | Notion 登记 | 最后核对 | 阻塞 |
|---|---|---|---|
| 全部 9 个在跑项目 | **待人工核对** | 未核对 | 本次维护无 Notion 写入连接器，未能自动比对两处一致性 |

> **当前已知阻塞：** 本次运行的 Agent 没有 Notion 连接器，因此**无法自动核验**上表 9 个项目在 `Codex Study Timeline` 中的登记是否与本 README 一致。按登记门规则，此处如实记录阻塞，**未声称已同步**。
> 下次任何具备 Notion 连接器的 Agent 接手时，应逐行比对并把本表「最后核对」填上日期。

## 五、仓库结构

```text
八个治理文件                              规则本身（人类可读面）
README.md                                项目登记表 + 八文件对照（与 Notion 一致）
CLAUDE.md / GEMINI.md / .github/ / .agents/   各 Agent 的薄入口，不复制规则
StudyProjects/<短名>/                     项目内容：简介、计划、每日记录、复盘、交接
_system/STUDY_INDEX.md                    派生路由索引（勿手改，只能重建）
_system/MAINTAINER_HANDOFF.md             维护连续性：现在到哪了、下一步做什么
_system/templates/                        交接、会话增量、教学与接管提示词模板
_system/validation/                       四道门与结构检查脚本 + 验证报告
_system/study-project-orchestrator/       历史记录与旧索引（保留为证据，不再路由）
NotionBackup/ · _assets/                  Notion 快照与图标资产
```

## 六、怎么开始

**学习（任意可实时读仓库的大模型）：**

```text
开始学习：<项目名或主题>
```

**维护（任意具备写权限的 Agent）：**

```bash
git fetch origin && git log --oneline -5 origin/main
cat AGENTS.md _system/MAINTAINER_HANDOFF.md _system/STUDY_INDEX.md
bash _system/validation/conformance_check.sh
```

收尾必须同时满足：改动已合进 `main`、远端只剩 `main` 一条分支、0 未决合并请求、0 待办事项、本地无遗留分支与工作树。
