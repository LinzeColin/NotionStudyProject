# Project Handoff

**Protocol:** v0.0.0.2
**Canonical project ID:** `ceo-finance-strategy-system`
**Status:** active
**Aliases / merged from:** [`CFO Finance Project`, `CEO/CFO Finance Strategy`]
**State source commit:** `d49824d`（项目最后一次写入）；install base `6cac133`
**Handoff file commit:** resolve with `git log -1 --format=%H -- StudyProjects/ceo-finance-strategy-system/HANDOFF.md`; do not self-reference
**Last updated UTC:** `2026-07-21T22:55:46Z`

> **本文件为首次创建。** 安装 Study OS v0.0.0.2 之前本项目没有 `HANDOFF.md`，内容全部由当前 HEAD 的 `00_PROJECT_BRIEF.md`、`01_STUDY_PLAN.md`、`state.json` 与 Legacy 索引推导，**没有任何学习证据被编造**。

## 1. Snapshot

- Stable goal：建立 CEO/CFO 级的商业、法律、财务、交易与机会筛选判断力（28 天），并直接反哺 `industrial-ai-saas-builder` 的 ICP、定价、风险、单位经济与 go/no-go 决策。
- Current focus：已排期、**从未开课**。
- Default route：J（可辩护的选择、预测与研究判断为终点）。
- Current primary contract：J。
- Next smallest action：开 D01 —— 教育与决策框架优先，先讲清「不提供法律/金融/交易建议」这条边界如何改变问题的问法。
- Recommended start prompt：`开始学习：CEO Finance Strategy System D01`

## 2. Capability Evidence

### Reliable without AI (E3/E4)
- 无。

### Provisional independent (E2)
- 无。项目尚未开课，无 pre-help 表现记录。

### Assisted exposure only (E0/E1)
- `00_PROJECT_BRIEF.md`、`01_STUDY_PLAN.md` 由工具产出，不构成能力证据。

### Not yet proven
- 商业判断 — 缺失 Oracle：无提示独立对一个具体机会给出 go/no-go 结论，并分开陈述事实、推断、假设与未知。
- 单位经济 — 缺失 Oracle：独立算出并解释某业务的单位经济与其失效条件。
- 法律风险分类 — 缺失 Oracle：独立指出一个创业场景中的主要法律风险类别，并提出该问专业人士的具体问题。
- 机会筛选框架 — 缺失 Oracle：产出一个可复用的机会来源与验证框架，而不是随机追机会。

## 3. Misconceptions, Failures & Counterevidence

- 尚无学习证据，因此暂无已暴露误区。
- 预置边界：本项目是**教育与决策框架建设**，不是法律、金融或交易建议。任何真实交易或法律行动都需要属地专业审阅与明确的执行控制。

## 4. Review Queues

### Recall
| Item | Level | Due window | Last pre-help result | Source / validity |
|---|---|---|---|---|
| 单位经济的构成与失效条件 | R0 | D01–D05 | 未取证 | `01_STUDY_PLAN.md` / current |
| 创业法律风险的主要类别 | R0 | 法律模块 | 未取证 | `00_PROJECT_BRIEF.md` / recheck_due（属地相关） |

### Reperformance
| Capability | Trigger | Variation / failure path | Last result |
|---|---|---|---|
| 对一个具体机会写出 go/no-go 备忘 | real_artifact_due | 换行业 + 换资金约束 | 未做 |
| 用本地策略模拟器把财务想法变成可测试假设 | real_artifact_due | 注入假设失效 / 数据缺失 | 未做 |

### Resolution
| Decision / prediction | Initial confidence | Resolution trigger | Kill / update condition |
|---|---|---|---|
| 与 `industrial-ai-saas-builder` 并行能互相增强 | medium（2026-06-14 排期理由） | 两个项目各推进两周后 | 若并行导致两边都停滞则改串行 |
| 计划窗口 2026-06-18→2026-07-15 | unknown | Owner 重新确认排期 | 窗口已过且从未开课，需 Owner 裁决 |

## 5. Validity

- Current sources：`00_PROJECT_BRIEF.md`、`01_STUDY_PLAN.md`、`state.json`、Legacy `_system/study-project-orchestrator/PROJECT_INDEX.md`。
- Recheck due / trigger：计划窗口 2026-06-18→2026-07-15 已过且从未开课，排期需 Owner 重新确认（**窗口过期不构成暂停理由**）；法律与税务内容属地相关且会变，必须带 `valid_as_of`。
- Superseded knowledge：`current_day` 的 `D000` 语义已在 `d49824d` 中移除。
- Unknowns：本项目与 `ai-tech-industry-investment-judgment` 在「投资/交易判断」上存在范围重叠 —— 当前按 Legacy 定义划分（本项目偏 CEO/CFO 商业与机会筛选，投资判断项目偏技术-产业-投资传导链），若 Owner 认为重复需明确裁决。

## 6. Operating Preferences

- Effective methods：先立边界与证据规则，再进案例；每个结论带最强反方与证伪条件。
- Avoid / adjust：不提供个性化法律/金融/交易建议；不把 AI 生成的分析当作 Owner 的判断证据。
- Time / format preference：未记录（项目未开课）。

## 7. Legacy & Recovery

- Prior Handoff/log/state references：无既有 Handoff（本文件为首次创建）。状态来源：`state.json`、`00_PROJECT_BRIEF.md`、Legacy `PROJECT_INDEX.md` 第 3 行。
- Merge/alias history：吸收 `ai` 项目中 AI 商业/金融/交易判断与机会筛选范围。aliases 见文件头，取自 `state.json.aliases`。
- Recovery notes：recovery ref `study-os-v0.0.0.2-pre-20260721T225052Z`。

> Current executable state, not a transcript. Preserve contrary evidence and Git history; compress repetition.
