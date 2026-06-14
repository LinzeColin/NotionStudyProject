# arXiv 学习计划

更新日期：2026-06-14  
来源：官方 arXiv Mathematics archive/category taxonomy 已于 2026-06-14 核对，用于补建 MATH route。  
模式：滚动式三 group 并行学习计划。

## 正确项目模型

这不是每个 group 固定一个月。学习单位是 archive/category；每个 archive 固定 30 天。

| 规则 | 含义 |
|---|---|
| archive 学习周期 | 每个 archive/category 固定 30 天。 |
| group 总时长 | `archive_count * 30 天`。 |
| 当前 active 负载 | 从 2026-06-15 开始同时推进 3 个 active group/archive。 |
| 当前 active groups | Q-FIN `q-fin.TR`、PHYS `quant-ph`、MATH `math.PR`。 |
| 推进规则 | 某个 group 完成后，下一个 queued group 进入空出来的 active slot。 |
| Notion Timeline Date | 写真实计划窗口；queued group 不能默认写今天。 |
| active 状态 | 由 `state.json` 和 `active_tracks.json` 记录，不从 Notion Date 推断。 |
| 学习笔记语言 | 默认中文；保留必要专业术语、archive code、API 名、论文名和工具名。 |

## Group 真实计划窗口

| Group | Archive 数量 | 计划开始 | 计划结束 | 当前状态 | 推进依据 |
|---|---:|---|---|---|---|
| Q-FIN | 9 | 2026-06-13 | 2027-03-09 | active | 项目 Day 1 启动 |
| PHYS | 51 | 2026-06-13 | 2030-08-20 | active | 项目 Day 1 启动 |
| MATH | 32 | 2026-06-15 | 2029-01-29 | active from next arXiv session | 第三个 active slot |
| STAT | 6 | 2027-03-10 | 2027-09-05 | queued | Q-FIN 完成后进入 slot 1 |
| CS | 40 | 2027-09-06 | 2030-12-18 | queued | STAT 完成后进入 slot 1 |
| ECON | 3 | 2029-01-30 | 2029-04-29 | queued | MATH 完成后进入 slot 3 |
| EE/EESS | 4 | 2029-04-30 | 2029-08-27 | queued | ECON 完成后进入 slot 3 |
| Q-BIO | 10 | 2029-08-28 | 2030-06-23 | queued | EE/EESS 完成后进入 slot 3 |

## 当前三个 active group

| Track | Group | 当前 archive | Day | Route file |
|---|---|---|---:|---|
| 1 | Q-FIN | `q-fin.TR` Trading and Market Microstructure | 2/30 | `10_PROGRAM_STATE/group_routes/Q-FIN.csv` |
| 2 | PHYS | `quant-ph` Quantum Physics | 2/30 | `10_PROGRAM_STATE/group_routes/PHYS.csv` |
| 3 | MATH | `math.PR` Probability | 0/30, starts 2026-06-15 | `10_PROGRAM_STATE/group_routes/MATH.csv` |

## MATH 学习顺序

ROI 逻辑：先学 `math.PR` Probability，因为它直接连接 Q-FIN 的随机过程/风险、PHYS 的概率/测量、AI 的不确定性建模，以及现实决策中的证据质量。随后进入 Statistics Theory、Optimization and Control、Information Theory、Numerical Analysis、Dynamical Systems。

完整 MATH route 存在 `10_PROGRAM_STATE/group_routes/MATH.csv`。

## 前 7 天：三组同步，但仍保持概念优先

| Day | Q-FIN - TR | PHYS - quant-ph | MATH - PR | 必须产出 |
|---:|---|---|---|---|
| D001 | market microstructure 研究什么；为什么成交不等于价格 | quantum physics 研究什么；为什么测量会影响可知内容 | 从“事件发生可能性”理解 probability，不把概率当玄学预测 | 三张边界图：对象、机制、误用、ROI 用法 |
| D002 | order、limit order book、spread、liquidity | state、measurement、uncertainty | sample space、event、probability measure | 三张概念卡 + 主动回忆答案 |
| D003 | price formation 和 information | amplitude vs probability | random variable：把现实结果映射成可计算对象 | 概率/状态/成交价三者的“压缩现实”对比笔记 |
| D004 | 市场参与者、激励、adverse selection | operator 和 observable | expectation：长期平均与单次结果的区别 | 机制图 |
| D005 | market impact 和 execution quality | entanglement 作为信息结构 | variance / tail risk：为什么平均收益不等于可承受收益 | 费曼解释 |
| D006 | trading signal vs execution edge | quantum information 对 computation/AI 的迁移 | conditional probability / Bayes：新信息如何更新判断 | ROI 迁移 memo |
| D007 | 周复盘和 route 校准 | 周复盘和 route 校准 | 周复盘和 route 校准 | W01 review + 如有必要调整后续 archive 顺序 |

## 每日学习协议

| 步骤 | 必须做什么 |
|---|---|
| 1 | 说明当前进度：`Dxxx`、三个 active group、archive day out of 30。 |
| 2 | 先做上一节主动回忆。 |
| 3 | 先深讲一个核心概念，再进入练习。 |
| 4 | 说明这个概念我应该怎么用。 |
| 5 | 连接到决策质量、ROI、工作、学习和生产效率。 |
| 6 | 给一个小产出任务。 |
| 7 | 学完后更新 GitHub state/logs。 |
| 8 | 结束时给出后续课题，并根据表现动态调整。 |

## 停止条件

- 没有 route order、date window、archive count，不开始新 archive。
- 没有读取 Notion 当前 schema/page format，不修改 Notion。
- 概念没有讲清、回忆、使用，不把项目搭建当学习进度。
- 不用 model confidence 替代硬规则、证据和验证。
