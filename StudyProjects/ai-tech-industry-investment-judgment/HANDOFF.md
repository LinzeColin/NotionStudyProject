# Project Handoff

**Protocol:** v0.0.0.2
**Canonical project ID:** `ai-tech-industry-investment-judgment`
**Status:** active
**Aliases / merged from:** [`AI Tech Industry Investment Judgment`, `AI时代技术-产业-投资判断力`]
**State source commit:** `0f3967d`（项目最后一次写入）；install base `6cac133`
**Handoff file commit:** resolve with `git log -1 --format=%H -- StudyProjects/ai-tech-industry-investment-judgment/HANDOFF.md`; do not self-reference
**Last updated UTC:** `2026-07-21T22:55:46Z`

## 1. Snapshot

- Stable goal：建立 AI 时代「技术 → 产业 → 投资」的判断力。模块包含 AI 能力、基础设施、电力瓶颈、公司研究、财务模型、Reverse DCF、模拟组合、监控 Dashboard 与 Memo 产出。
- Current focus：项目已创建（GitHub 文件夹、Notion 备份与页面、Timeline 选项均已完成），**D01 未开始**。
- Default route：J（研究、证据综合与概率判断为终点）。
- Current primary contract：J。
- Next smallest action：开 D01 —— 按 30 天压缩版起步，先确立研究与模拟决策边界（不做真实资金、不做期权/杠杆任务）。
- Recommended start prompt：`开始学习：AI时代技术-产业-投资判断力 D01`

## 2. Capability Evidence

### Reliable without AI (E3/E4)
- 无。

### Provisional independent (E2)
- 无。项目尚未开课，无 pre-help 表现记录。

### Assisted exposure only (E0/E1)
- 项目脚手架与 30 天计划由工具产出，不构成能力证据。

### Not yet proven
- 技术 → 产业 → 投资的传导链 — 缺失 Oracle：无提示独立说明一项 AI 能力变化如何改变某产业的成本/需求结构，再如何改变某公司的现金流假设。
- Reverse DCF — 缺失 Oracle：独立从当前价格反推市场隐含增长假设，并指出该假设的证伪条件。
- 证据分层 — 缺失 Oracle：把事实、推断、假设与未知分开陈述，并给出置信区间与 recheck trigger。

## 3. Misconceptions, Failures & Counterevidence

- 尚无学习证据，因此暂无已暴露误区。
- 预置边界：本项目为研究与模拟决策系统，**不做真实资金交易、不做期权/杠杆任务**；不提供个性化投资建议。

## 4. Review Queues

### Recall
| Item | Level | Due window | Last pre-help result | Source / validity |
|---|---|---|---|---|
| AI 能力 → 产业成本/需求 → 公司现金流 的传导链 | R0 | D01 | 未取证 | `00_PROJECT_BRIEF.md` / recheck_due |
| Reverse DCF 的输入与隐含假设 | R0 | 财务模型模块 | 未取证 | `01_STUDY_PLAN.md` / current |

### Reperformance
| Capability | Trigger | Variation / failure path | Last result |
|---|---|---|---|
| 对一家公司写出压缩版研究 Memo | real_artifact_due | 换行业 + 换数据可得性 | 未做 |
| 搭一个模拟组合与监控 Dashboard | real_artifact_due | 注入假设失效 / 数据源中断 | 未做 |

### Resolution
| Decision / prediction | Initial confidence | Resolution trigger | Kill / update condition |
|---|---|---|---|
| 30 天压缩仍能覆盖全部模块（压缩交付深度，不删模块） | high（Owner 2026-06-21 明确） | D01–D10 实际推进速度 | 若模块被迫删减则回到更长周期 |
| 计划窗口 2026-06-21→2026-07-20 | unknown | Owner 重新确认排期 | 窗口已过且从未开课，需 Owner 裁决 |

## 5. Validity

- Current sources：`00_PROJECT_BRIEF.md`、`01_STUDY_PLAN.md`、`02_TOP1_STRATEGY.md`、`state.json`、`_system/study-project-orchestrator/2026-06-21_NEW_PROJECT_AI_TECH_INVESTMENT.md`、`NotionBackup/20260621/`。源材料：`投资逻辑分析.rtf`（Owner 本地文件，未纳入仓库）。
- Recheck due / trigger：本项目内容高波动（AI 能力、基础设施、电力、估值），**所有结论必须带 source、authority_level、`valid_as_of` 与 recheck trigger**；计划窗口 2026-06-21→2026-07-20 已过且从未开课，排期需 Owner 重新确认（窗口过期不构成暂停理由）。
- Superseded knowledge：原 90 天 / 结束日 2026-09-18 的排期已作废，改为 30 天 / 2026-07-20。
- Unknowns：external review 在建项侧会话中记为 `blocked_unavailable`。

## 6. Operating Preferences

- Effective methods：先立边界与证据规则，再进模块；每个判断带置信度与证伪条件。
- Avoid / adjust：不给个性化投资建议；不把 AI 生成的模型输出当作 Owner 的判断证据。
- Time / format preference：30 天压缩 —— 交付物为最小可用资产，不删模块。

## 7. Legacy & Recovery

- Prior Handoff/log/state references：重建前版本 `git show 6cac133:StudyProjects/ai-tech-industry-investment-judgment/HANDOFF.md`（含 Notion 页面 ID/URL 与时长变更明细）；`state.json`；建项记录 `_system/study-project-orchestrator/2026-06-21_NEW_PROJECT_AI_TECH_INVESTMENT.md`。
- Merge/alias history：无合并来源。**注意**：本项目于 2026-06-21 创建，但当时未写入 Legacy `PROJECT_INDEX.md`（原因：该文件当时有未处理的脏改动），因此旧索引缺失本项目 —— 已在 `_system/STUDY_INDEX.md` 修正。
- Recovery notes：recovery ref `study-os-v0.0.0.2-pre-20260721T225052Z`。

> Current executable state, not a transcript. Preserve contrary evidence and Git history; compress repetition.
