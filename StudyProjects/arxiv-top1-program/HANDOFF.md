# HANDOFF

Updated: 2026-06-22
Timezone: Australia/Sydney

## 当前目标

运行 `arxiv-top1-program`：滚动式 arXiv archive mastery 计划，同时保持三个 active slots。

## 当前状态

- 项目开始日期：2026-06-13。
- 当前 global day：D010。
- 当前 active tracks：`Q-FIN - q-fin.TR` D003 with D004 LOB/VWAP gate validated、`PHYS - quant-ph` D003、`MATH - math.PR` D003。
- 每个 archive/category 固定 30 天。
- group 总时长 = `archive_count * 30 天`，不能把一个 group 当成一个月。
- queued group 不能默认从今天开始；必须根据 active slot 释放时间计算。
- 学习笔记、Notion note、daily log、review 默认中文；只保留必要专业术语、archive code、API 名、论文名、工具名。
- 2026-06-14 PHYS / `quant-ph` D003 已完成：amplitude vs probability validated。用户已掌握 “模型 confidence/signal/score 是中间量，不是经过真实行为验证的结果”。外部 reviewer Nash 的修正仍有效：在 `quant-ph` 中，“验证”应说成重复测量形成的分布验证，不是单次真实结果验证。
- 2026-06-14 Q-FIN / `q-fin.TR` D003 已完成概念验证：用户已掌握 price 是 order book 中可执行流动性形成的结果，不是一个 quoted point；大 market order 会吃穿薄流动性并造成 market impact / slippage。
- 2026-06-22 Q-FIN / `q-fin.TR` D004 前置 LOB/VWAP gate 已完成：ask book `100.00 x50`, `100.10 x30`, `100.30 x40`，market buy 100，用户正确给出 fill levels `50/30/20`、last price `100.30`、VWAP `100.09`。Q-FIN D004 adverse selection 可以正式开始，但 D004 正课尚未完成。
- 2026-06-21 MATH / `math.PR` D001 已完成概念验证：用户已掌握概率不是单次保证，而是长期频率/分布约束，并能指出 Expected Value 与 Payoff；需要继续压实 random variable = 把现实不确定结果映射成可计算数字的规则，以及有限样本波动、variance、tail risk。
- 2026-06-21 MATH / `math.PR` D002 已完成概念验证：用户已掌握 `P(A|B)` 与 `P(B|A)` 的条件过滤差异，并能把 posterior 放入 prior、evidence、evidence reliability、EV、tail risk、action permission 的检查链。Bayesian Update 更新的是条件下概率分布/信念强度，不是执行权限。
- 2026-06-22 MATH / `math.PR` D003 已完成概念验证：Distribution、variance、tail risk validated。用户能选择较低 variance/tail risk 的策略 B，并指出亏损更小、收益更好。需要继续强化 base-rate arithmetic：`P(A)=1%`, `P(E|A)=90%`, `P(E|not A)=9%` 时 `P(A|E)≈9.17%`，不是 90%。
- 2026-06-22 Notion 已追加同步：`arXiv Mathematics` page D003 notes；`arXiv Quantitative Finance` page Q-FIN D004 gate notes。
- 2026-06-22 GitHub 已更新：daily log、system learning log、metrics、progression log、Notion sync log、external review packet/blocker log、teaching adjustments、state。
- 2026-06-22 外部复审只创建 packet，未完成 reviewer handshake：configured agent、ChatGPT、Claude、Perplexity、external reviewer 1/2 均记录 `blocked_unavailable`。不要声称 external review completed。
- 2026-06-15 至 2026-06-20 没有 GitHub 学习日志，不回填为完成进度；archive day 按验证课次推进。
- 2026-06-14 用户纠正调度策略：arXiv rolling program 默认应 balanced catch-up，不应让 PHYS 继续 D004 跑远。未完成主动回忆/同步的 PHYS D004 讲解不计入完成进度。
- 2026-06-14 Roadmap 已补建：GitHub `03_ROADMAPS/arxiv_roadmap.md`，Notion `arXiv Roadmap` page `37fb1a98-6ba6-8113-98bc-e669dcb55d3e`。
- Roadmap generation 使用 2 个 configured external agents；ChatGPT、Claude、Perplexity connector 不可用，已记录 blocker。
- `QFIN_Notion_Simple_Import_Pack.zip` 在用户提供路径未找到，已记录 blocker。
- `CS.csv` 日期与 Notion CS timeline 已在 2026-06-14 修复并核验；CS group 窗口以 `2027-09-06 -> 2030-12-18` 为准。

## 正确 group 计划窗口

| Group | Archive 数量 | 计划开始 | 计划结束 | 状态 |
|---|---:|---|---|---|
| Q-FIN | 9 | 2026-06-13 | 2027-03-09 | active |
| PHYS | 51 | 2026-06-13 | 2030-08-20 | active |
| MATH | 32 | 2026-06-15 | 2029-01-29 | active_from_2026-06-15 |
| STAT | 6 | 2027-03-10 | 2027-09-05 | queued |
| CS | 40 | 2027-09-06 | 2030-12-18 | queued |
| ECON | 3 | 2029-01-30 | 2029-04-29 | queued |
| EE/EESS | 4 | 2029-04-30 | 2029-08-27 | queued |
| Q-BIO | 10 | 2029-08-28 | 2030-06-23 | queued |

完整 schedule：`10_PROGRAM_STATE/archive_catalog.csv`。

## Notion 状态

- Codex Study Timeline database：`37eb1a986ba680bdb5f9ea2367b08991`。
- arXiv Taxonomy database：`37cb1a986ba680838ccddc8c0931281b`。
- `arXiv Roadmap` page：`37fb1a98-6ba6-8113-98bc-e669dcb55d3e`，Date `2026-06-13 -> 2030-12-18`，Project `arXiv`。
- `arXiv Quantitative Finance` page：`37eb1a98-6ba6-8133-a01b-e6fbff80849b`，Date `2026-06-13 -> 2027-03-09`，2026-06-22 已追加 Q-FIN D004 gate note。
- `arXiv Physics` page：`37eb1a98-6ba6-81a9-a1a3-e42720e82960`，Date `2026-06-13 -> 2030-08-20`。
- `arXiv Mathematics` page：`386b1a98-6ba6-81a7-a8ce-f76d95e6f511`，Date `2026-06-15 -> 2029-01-29`，2026-06-22 已追加 MATH D003 note。
- `arXiv Computer Science` page：`37eb1a98-6ba6-800a-8e95-f17a784cf2a8`，Date `2027-09-06 -> 2030-12-18`。
- 修改任何 Notion 页面前，必须先 fetch 当前 schema、属性和页面格式。

## Route Files

- Q-FIN full route：`10_PROGRAM_STATE/group_routes/Q-FIN.csv`。
- PHYS full route：`10_PROGRAM_STATE/group_routes/PHYS.csv`。
- CS full route：`10_PROGRAM_STATE/group_routes/CS.csv`。
- arXiv full roadmap：`03_ROADMAPS/arxiv_roadmap.md`。

## Automation 状态

- `study-project-daily-sync` 已改为 detached local cron。
- 目标：每天读取 GitHub/Notion 状态并同步更新，不依赖当前聊天线程。
- 如果当日没有有效学习记录，automation 应写入 missed/blocked 状态；不能伪造学习进度。

## 下一步

不要继续做项目搭建。下一次应继续概念教学，且一次只讲一个 exact archive，用中文讲解：

- 默认下一课：Q-FIN - TR D004：Adverse Selection，为什么“你成交了”有时反而是坏消息。开头先复述 2026-06-22 LOB/VWAP gate：为什么 VWAP `100.09` 不等于 last price `100.30`，也不等于 best ask `100.00`。
- Q-FIN D004 验收：用户能解释为什么立刻成交可能代表对手方或流动性提供者信息更强；能说出一个交易 agent 避免成为 uninformed side 的 action gate。
- Pending：PHYS - quant-ph D004：measurement、Born rule、repeated shots、observable，等 Q-FIN D004 或用户选择 PHYS focus mode 后再进入。
- Pending：MATH - PR D004：Expectation vs risk-adjusted decision，继续连接 distribution、variance、tail risk 与实际 action permission。

教学必须讲到可使用：概念含义、核心机制、失败模式、真实例子、决策规则、ROI 最大化行动。

每次 session 结束必须同步 GitHub，并给出后续课程。
