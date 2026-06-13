# arXiv 学习计划

更新日期：2026-06-13  
来源：官方 arXiv Category Taxonomy，已于 2026-06-13 检查。

## 正确项目模型

这是滚动式双 group 并行学习计划，不是每个 group 固定一个月。

| 规则 | 含义 |
|---|---|
| archive 学习周期 | 每个 archive/category 固定 30 天。 |
| group 总时长 | `archive_count * 30 天`。 |
| 当前 active 负载 | 同时只学 2 个 active group/archive。 |
| 推进规则 | 某个 group 完成后，下一个 queued group 进入空出来的 active slot。 |
| Notion Timeline Date | 写真实计划窗口；queued group 不能默认写今天。 |
| active 状态 | 由 `state.json` 和 `active_tracks.json` 记录，不从 Notion Date 推断。 |
| 学习笔记语言 | 默认中文；保留必要专业术语、archive code、API 名、论文名和工具名。 |

## Group 真实计划窗口

| Group | Archive 数量 | 计划开始 | 计划结束 | 当前状态 | 推进依据 |
|---|---:|---|---|---|---|
| Q-FIN | 9 | 2026-06-13 | 2027-03-09 | active | 项目 Day 1 启动 |
| PHYS | 51 | 2026-06-13 | 2030-08-20 | active | 项目 Day 1 启动 |
| MATH | 32 | 2027-03-10 | 2029-10-24 | queued | Q-FIN 完成后进入 slot |
| STAT | 6 | 2029-10-25 | 2030-04-22 | queued | MATH 完成后进入 slot |
| CS | 40 | 2030-04-23 | 2033-08-04 | queued | STAT 完成后进入 slot |
| ECON | 3 | 2030-08-21 | 2030-11-18 | queued | PHYS 完成后进入 slot |
| EE/EESS | 4 | 2030-11-19 | 2031-03-18 | queued | ECON 完成后进入 slot |
| Q-BIO | 10 | 2031-03-19 | 2032-01-12 | queued | EE/EESS 完成后进入 slot |

## 当前两个 active group

| Track | Group | 当前 archive | Day | Route file |
|---|---|---|---:|---|
| 1 | Q-FIN | `q-fin.TR` Trading and Market Microstructure | 1/30 | `10_PROGRAM_STATE/group_routes/Q-FIN.csv` |
| 2 | PHYS | `quant-ph` Quantum Physics | 1/30 | `10_PROGRAM_STATE/group_routes/PHYS.csv` |

## Q-FIN 学习顺序

ROI 逻辑：先学 market microstructure，因为它最直接连接 alpha、执行质量、流动性、risk control 和交易 Agent 系统判断。

| # | Archive | 为什么排在这里 |
|---:|---|---|
| 1 | `q-fin.TR` Trading and Market Microstructure | 先理解交易、流动性、spread、market impact 和执行质量。 |
| 2 | `q-fin.RM` Risk Management | 建立硬约束、损失上限、回撤控制和 fail-closed 系统。 |
| 3 | `q-fin.ST` Statistical Finance | 理解证据、信号可靠性、分布、回测和不确定性。 |
| 4 | `q-fin.PR` Pricing of Securities | 理解定价、无套利、金融工具和模型边界。 |
| 5 | `q-fin.PM` Portfolio Management | 理解仓位、组合构建和风险收益权衡。 |
| 6 | `q-fin.MF` Mathematical Finance | 补正式定价与风险模型。 |
| 7 | `q-fin.CP` Computational Finance | 学仿真、数值方法和可生产化计算。 |
| 8 | `q-fin.EC` Economics | 补经济背景和市场行为解释。 |
| 9 | `q-fin.GN` General Finance | 综合整理与迁移。 |

## PHYS 学习顺序

ROI 逻辑：优先学习信息、概率、计算、statistical mechanics、nonlinear systems 和 mathematical physics，因为这些最能迁移到 AI、Agent、市场、复杂系统、不确定性和前沿研究阅读。

| 阶段 | Archives | 目的 |
|---|---|---|
| 1 信息/概率核心 | `quant-ph`, `physics.data-an`, `physics.comp-ph`, `cond-mat.stat-mech`, `math-ph` | 建立不确定性、测量、计算和形式化推理的底层模型。 |
| 2 非线性/复杂系统 | `nlin.AO`, `nlin.CD`, `nlin.CG`, `nlin.PS`, `nlin.SI` | 理解动态、混沌、自适应、模式和涌现。 |
| 3 基础物理 | `gr-qc`, `hep-th`, `hep-ph`, `hep-ex`, `hep-lat`, `nucl-th`, `nucl-ex` | 建立理论/实验分离、模型/证据纪律。 |
| 4 天体/宇宙 | `astro-ph.CO`, `astro-ph.HE`, `astro-ph.IM`, `astro-ph.SR`, `astro-ph.EP`, `astro-ph.GA` | 训练大尺度系统理解和仪器意识。 |
| 5 凝聚态/材料 | `cond-mat.dis-nn`, `cond-mat.mes-hall`, `cond-mat.mtrl-sci`, `cond-mat.quant-gas`, `cond-mat.soft`, `cond-mat.str-el`, `cond-mat.supr-con`, `cond-mat.other` | 连接材料、器件、计算和技术趋势。 |
| 6 应用/通用物理 | `physics.acc-ph` 到 `physics.space-ph` | 覆盖应用、仪器、optics、plasma、society 和边界主题。 |

完整 PHYS 顺序保存在 `10_PROGRAM_STATE/group_routes/PHYS.csv`。

## 前 7 天：先学概念，不急着搭建

| Day | Q-FIN - TR | PHYS - quant-ph | 必须产出 |
|---:|---|---|---|
| D001 | market microstructure 研究什么；为什么成交不等于价格 | quantum physics 研究什么；为什么测量会影响可知内容 | 两张边界图：对象、机制、误用、ROI 用法 |
| D002 | order、limit order book、spread、liquidity | state、measurement、uncertainty | 两张概念卡 + 主动回忆答案 |
| D003 | price formation 和 information | amplitude vs probability | classical probability vs quantum probability 对比笔记 |
| D004 | 市场参与者、激励、adverse selection | operator 和 observable | 机制图 |
| D005 | market impact 和 execution quality | entanglement 作为信息结构 | 费曼解释 |
| D006 | trading signal vs execution edge | quantum information 对 computation/AI 的迁移 | ROI 迁移 memo |
| D007 | 周复盘和 route 校准 | 周复盘和 route 校准 | W01 review + 如有必要调整后续 archive 顺序 |

## 每日学习协议

| 步骤 | 必须做什么 |
|---|---|
| 1 | 说明当前进度：`Dxxx`、active group、archive day out of 30。 |
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
