# Project Handoff

**Protocol:** v0.0.0.2
**Canonical project ID:** `arxiv-top1-program`
**Status:** active
**Aliases / merged from:** [`arXiv Top1 Program`, `arxiv`]
**State source commit:** `ad23b51`（项目最后一次写入）；install base `6cac133`；2026-06-23 暂停证据（原 `31409cb`）已吸收进 `main`，见 `_system/study-project-orchestrator/2026-06-23_PAUSED_SYNC_RECORD.md`
**Handoff file commit:** resolve with `git log -1 --format=%H -- StudyProjects/arxiv-top1-program/HANDOFF.md`; do not self-reference
**Last updated UTC:** `2026-07-21T22:55:46Z`

## 1. Snapshot

- Stable goal：滚动式 arXiv archive mastery 计划，长期同时保持三个 active group slot；每个 archive/category 固定 30 天，group 总时长 = `archive_count × 30 天`。
- Current focus：`Q-FIN q-fin.TR` D004 已验收；`MATH math.PR` D003 已验收；`PHYS quant-ph` D003 已验收、D004 已开讲但被 Owner 在 2026-06-23 要求暂停。
- Default route：M（概念回忆与机制解释为主，判断题作为 J 探针）。
- Current primary contract：M。
- Next smallest action：先确认 `PHYS quant-ph` D004 是否恢复。恢复则从「为什么 amplitude/confidence 不是 probability/action permission」冷回忆起步；不恢复则按 balanced route 进入 `MATH math.PR` D004（Expectation vs risk-adjusted decision），或按 Owner 指定 focus mode 进入 `Q-FIN q-fin.TR` D005（Toxic flow / spread compensation）。
- Recommended start prompt：`开始学习：arXiv，先确认 PHYS quant-ph D004 是否恢复`

## 2. Capability Evidence

### Reliable without AI (E3/E4)
- 无。当前没有满足「延迟后 H0 独立复现」或「真实产物/已解析判断」的记录。

### Provisional independent (E2)
- LOB walk 与 VWAP 计算 — H0 独立：ask book `100.00×50 / 100.10×30 / 100.30×40`，market buy 100，正确给出 fill `50/30/20`、last price `100.30`、VWAP `100.09` — observed 2026-06-22（评分 4/5）。
- Adverse selection 机制迁移 — H0 独立完成反向场景：`limit sell 100` 成交后 mid 到 `100.70`，正确判断可能被 informed buyer 打中、fill 可能来自 toxic flow，应降低挂单尺寸、扩大 spread、暂停信号或要求额外确认 — observed 2026-06-22（评分 4/5）。**同轮存在方向词纠正（把「上涨到 100.70」说成「下跌」），按合同不升级为 E3。**
- Variance / tail risk 策略选择 — H0 独立选择方差与尾部风险更小的策略 B 并给出理由 — observed 2026-06-22（`MATH math.PR` D003）。

### Assisted exposure only (E0/E1)
- Adverse selection 的 `limit buy` 标准模板复述 — highest hint：提示后复述（H2 级） — 明确不计为独立掌握。
- `PHYS quant-ph` D004「amplitude-like → p_raw / p_exec 决策链路」 — 课程已开讲即被暂停，无独立表现记录。

### Not yet proven
- Base-rate 算术 — 缺失 Oracle：在 `P(A)=1%`、`P(E|A)=90%`、`P(E|not A)=9%` 条件下，无提示独立算出 `P(A|E)≈9.17%`，并说明低 base rate 下假阳性绝对数量为何淹没真阳性。
- 「amplitude-like 是内部中间量，不能直接当 probability 使用」 — 缺失 Oracle：暂停记录中该句归属不明（无法判定是 Owner 独立表述还是教学反馈），恢复 PHYS 轨道时必须用 H0 冷回忆重新取证。
- 延迟保持 — 缺失 Oracle：以上 E2 项均未做跨会话延迟复测。

## 3. Misconceptions, Failures & Counterevidence

- 把 `P(E|A)` 直接当作 `P(A|E)` — counterexample：`P(A)=1%`、`P(E|A)=90%`、`P(E|not A)=9%` 时 `P(A|E)≈9.17%` 而非 90% — status: open。
- 用「吸筹/洗盘」等叙事词替代 microstructure 语言 — counterexample：必须改用 order book、toxic flow、post-fill markout 表述 — status: reduced。
- 方向词不精确：`limit sell 100` 成交后 mid 到 `100.70` 是上涨不是下跌 — status: reduced（同轮已纠正，需延迟复测）。
- 把「成交成功」当作交易质量好 — counterexample：fill 后持续 adverse movement 时，成交本身是风险信号 — status: reduced。
- 教学素材曾出现错误数字（原称 A/B 策略 EV 相近，实际 A EV=0、B EV=0.65）— status: resolved，**不得把该错误数字当作概念证据**。

## 4. Review Queues

### Recall
| Item | Level | Due window | Last pre-help result | Source / validity |
|---|---|---|---|---|
| VWAP vs last price vs best ask | R1 | next_related_session | H0 正确（4/5，2026-06-22） | `04_DAILY_LOGS/2026-06-22_QFIN_q-fin.TR_D004.md` / current |
| Adverse selection 与 post-fill markout | R1 | next_related_session | H0 反向场景正确，有方向词纠正 | 同上 / current |
| Base-rate 算术 `P(A\|E)` | R0 | next_related_session | 未完成 | `04_DAILY_LOGS/2026-06-22_MATH_math.PR_D003_QFIN_gate.md` / current |
| Distribution / variance / tail risk | R1 | next_related_session | H0 正确 | 同上 / current |
| amplitude vs probability vs action permission | R0 | PHYS 轨道恢复时 | 未取证（会话被暂停） | `_system/study-project-orchestrator/2026-06-23_PAUSED_SYNC_RECORD.md` / unknown |

### Reperformance
| Capability | Trigger | Variation / failure path | Last result |
|---|---|---|---|
| LOB walk + VWAP 计算 | next_related_session | 换 book 深度与订单方向（market sell / 部分成交） | H0 正确（2026-06-22） |
| 从 post-fill 价格移动判断 fill 质量 | variation_due | 换成 partial fill、跨价位成交、延迟 markout 窗口 | H0 正确（2026-06-22） |

### Resolution
| Decision / prediction | Initial confidence | Resolution trigger | Kill / update condition |
|---|---|---|---|
| balanced route（三轨道轮转）优于 focus mode | unknown | Owner 明确选择 focus mode 时 | Owner 指定 Q-FIN focus 即改为 focus |
| group 计划窗口（Q-FIN→2027-03-09、PHYS→2030-08-20、MATH→2029-01-29） | unknown | 任一 slot 提前释放或 Owner 改排期 | 实际进度与窗口偏离时重算，不回填历史日期 |

## 5. Validity

- Current sources：`10_PROGRAM_STATE/group_routes/{Q-FIN,PHYS,CS}.csv`、`03_ROADMAPS/arxiv_roadmap.md`、`04_DAILY_LOGS/2026-06-22_*`、`10_PROGRAM_STATE/progression_log.csv`、`metrics.csv`。
- Recheck due / trigger：PHYS 轨道恢复时；任一 group slot 释放时重算 queued group 起始日（**不得默认从当天开始**）。
- Superseded knowledge：教学素材中的 A/B 策略 EV 旧数值已作废。
- Unknowns：
  - `PHYS quant-ph` D004 于 2026-06-23 开讲后被 Owner 要求暂停，**等待明确恢复指令**；该记录原本只存在于孤立分支 `sync/pause-20260623`（`31409cb`），现已吸收进 `main`（`_system/study-project-orchestrator/2026-06-23_PAUSED_SYNC_RECORD.md`），分支已删除；
  - 原文「用户反馈：已反馈『amplitude-like 是内部中间量，不能直接当 probability 使用』」**归属不明**，不计任何证据等级，恢复轨道时须 H0 冷回忆重新取证；
  - external review 全部 `blocked_unavailable`（configured agent、ChatGPT、Claude、Perplexity、external 1/2），**不得声称 external review completed**；
  - Q-FIN D004 只创建了 review packet，未完成 reviewer handshake。

## 6. Operating Preferences

- Effective methods：明确区分「提示后复述」与「独立迁移」；用 buy/sell 对称场景检验是否真正理解；先给可用结论再讲机制。
- Avoid / adjust：不要用叙事词替代 microstructure 术语；不要一课混入多个 archive 的内容（Owner 明确要求「只讲一个 archive」）；不要回填历史学习日期（例如不得把 MATH 追记为 2026-06-14 已学）。
- Time / format preference：学习笔记、daily log、review、Notion 正文默认中文；只保留必要专业术语、archive code、论文名、API 名与工具名。

## 7. Legacy & Recovery

- Prior Handoff/log/state references：本文件重建前的版本见 `git show 6cac133:StudyProjects/arxiv-top1-program/HANDOFF.md`；精简学习记录见 `_system/study-project-orchestrator/LEARNING_LOG.md`；机器状态见 `state.json`；指标见 `metrics.csv` 与 `10_PROGRAM_STATE/progression_log.csv`；group 计划窗口与 Notion/automation 细节见重建前 Handoff。
- Merge/alias history：无合并来源。
- Recovery notes：recovery ref `study-os-v0.0.0.2-pre-20260721T225052Z`。暂停记录 canonical 副本：`_system/study-project-orchestrator/2026-06-23_PAUSED_SYNC_RECORD.md`（原始 commit `31409cb`，分支已删，仍可 `git cat-file -p 31409cb...` 取回）。`study-project-daily-sync` 为 detached local cron，无有效学习记录时应写 missed/blocked，不得伪造进度。

> Current executable state, not a transcript. Preserve contrary evidence and Git history; compress repetition.
