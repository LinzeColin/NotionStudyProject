# Project Handoff

**Protocol:** v0.0.0.2
**Canonical project ID:** `industrial-666-roi-map`
**Status:** active
**Aliases / merged from:** [`Industrial 666 ROI Map`, `industrial-666`, `全工业体系 666 小类 ROI 学习计划`]
**State source commit:** `b837db3`（项目最后一次写入）；install base `6cac133`
**Handoff file commit:** resolve with `git log -1 --format=%H -- StudyProjects/industrial-666-roi-map/HANDOFF.md`; do not self-reference
**Last updated UTC:** `2026-07-21T22:55:46Z`

## 1. Snapshot

- Stable goal：90 天第一阶段 —— 建立以工业小类为最小单元的高 ROI 判断力：分类体系、评分模型、来源核验严谨度，先做 top-100 地图，再做 top-30 深研。
- Current focus：D01 已开放但**未开课**；项目脚手架、`scoring_schema.csv` v0.1 已就绪；Notion 行级同步经 Chrome fallback 完成，页面正文与图标未完成。
- Default route：J（研究、证据综合与 ROI 判断为终点）。
- Current primary contract：J。
- Next smallest action：开 D01 —— 核验 taxonomy 与来源策略，讲清「工业小类为何是最小单元」，解释 scoring schema v0.1。
- Recommended start prompt：`开始学习：industrial-666-roi-map D01`

## 2. Capability Evidence

### Reliable without AI (E3/E4)
- 无。

### Provisional independent (E2)
- 无。项目尚未开课，无 pre-help 表现记录。

### Assisted exposure only (E0/E1)
- 项目脚手架、`10_INDUSTRIAL_DATABASE/scoring_schema.csv` v0.1、`03_WEEKLY_PLANS/W01.md` 已创建，但由工具产出，不构成能力证据。

### Not yet proven
- 「工业小类为何是最小单元」 — 缺失 Oracle：无提示独立解释，并举出一个小类比大类更能决定 ROI 的具体例子。
- Scoring schema v0.1 的可辩护性 — 缺失 Oracle：独立说明每个维度的含义、权重理由与失效场景。
- 来源核验严谨度 — 缺失 Oracle：对一个小类独立给出来源、权威级别、`valid_as_of` 与 recheck trigger。

## 3. Misconceptions, Failures & Counterevidence

- 尚无学习证据，因此暂无已暴露误区。
- 预置边界（防止误区的硬约束）：**不得声称 90 天内掌握全部 666 个小类**；先建分类、评分与来源核验严谨度，再做 top-100 地图与 top-30 深研。

## 4. Review Queues

### Recall
| Item | Level | Due window | Last pre-help result | Source / validity |
|---|---|---|---|---|
| 工业小类 vs 大类作为分析最小单元 | R0 | D01 | 未取证 | `00_PROJECT_BRIEF.md` / current |
| GB/T 4754-2017 小类口径 | R0 | D01 | 未取证 | `11_SOURCE_PROMPTS/` / recheck_due |

### Reperformance
| Capability | Trigger | Variation / failure path | Last result |
|---|---|---|---|
| 用 scoring schema 给一个小类打分并说明理由 | next_related_session | 换一个数据可得性差的小类 | 未做 |
| 为一个小类建立可核验来源清单 | real_artifact_due | 来源冲突 / 数据过期路径 | 未做 |

### Resolution
| Decision / prediction | Initial confidence | Resolution trigger | Kill / update condition |
|---|---|---|---|
| scoring schema v0.1 的维度与权重可用 | unknown | 首次实际打分后 | 若同一小类在不同来源下得分剧烈摆动则改版 |
| 计划窗口 2026-06-15→2026-09-12 | unknown | D01 实际开课日期 | 长期未开课需 Owner 重新确认 |

## 5. Validity

- Current sources：`00_PROJECT_BRIEF.md`、`01_STUDY_PLAN.md`、`03_WEEKLY_PLANS/W01.md`、`10_INDUSTRIAL_DATABASE/scoring_schema.csv`、`11_SOURCE_PROMPTS/`、`07_NOTION/notion_sync_log.csv`。
- Recheck due / trigger：taxonomy 与来源策略在 D01 核验前一律视为未验证；GB/T 4754-2017 口径需在首次打分前确认版本与适用范围。
- Superseded knowledge：无。
- Unknowns：
  - Notion connector 写入仍被重认证阻断，行级编辑经 Owner 明确授权的 Chrome fallback 完成；**页面正文与图标未完成**，不得声称 Notion 同步完成；
  - 本地图标素材 `_assets/notion-icons/study-timeline-pages/industrial-666-roi-map-b-tech-v1.svg` 已就绪，但 Notion 图标写入需要更安全的文件上传路径；
  - external review packet 已保存，但在该侧会话中无授权/连接器执行外部复核。

## 6. Operating Preferences

- Effective methods：先建方法与口径，再铺量；每个结论都要能追到来源。
- Avoid / adjust：不铺陈 666 个小类的清单；不用随机 emoji 或与现有风格不符的图标；连接器不可用时记录 blocker 而不是声称完成。
- Time / format preference：学习笔记与 Notion 正文默认中文。

## 7. Legacy & Recovery

- Prior Handoff/log/state references：重建前版本 `git show 6cac133:StudyProjects/industrial-666-roi-map/HANDOFF.md`（含完整 Notion / 图标 / external review 决策记录）；`state.json`；`metrics.csv`；`07_NOTION/notion_sync_log.csv`。
- Merge/alias history：无合并来源。
- Recovery notes：recovery ref `study-os-v0.0.0.2-pre-20260721T225052Z`。

> Current executable state, not a transcript. Preserve contrary evidence and Git history; compress repetition.
