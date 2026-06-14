# HANDOFF

Updated: 2026-06-14  
Timezone: Australia/Sydney

## 当前目标

运行 `arxiv-top1-program`：滚动式 arXiv archive mastery 计划，同时保持三个 active slots。

## 当前状态

- 项目开始日期：2026-06-13。
- 当前 global day：D002。
- 当前 active tracks：`Q-FIN - q-fin.TR`、`PHYS - quant-ph`，以及从 2026-06-15 开始的 `MATH - math.PR`。
- 每个 archive/category 固定 30 天。
- group 总时长 = `archive_count * 30 天`，不能把一个 group 当成一个月。
- queued group 不能默认从今天开始；必须根据 active slot 释放时间计算。
- 学习笔记、Notion note、daily log、review 默认中文；只保留必要专业术语、archive code、API 名、论文名、工具名。
- 2026-06-14 D002 已完成：Q-FIN market/limit/stop order recall validated；PHYS state recall partial/usable。下一次进入 D003，不再重复 stop order 入场门，只需连接 price formation、order book depth、gap、slippage。

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
- `arXiv Quantitative Finance` page：`37eb1a98-6ba6-8133-a01b-e6fbff80849b`，Date `2026-06-13 -> 2027-03-09`。
- `arXiv Physics` page：`37eb1a98-6ba6-81a9-a1a3-e42720e82960`，Date `2026-06-13 -> 2030-08-20`。
- `arXiv Computer Science` page：`37eb1a98-6ba6-800a-8e95-f17a784cf2a8`，Date `2030-04-23 -> 2033-08-04`。
- 修改任何 Notion 页面前，必须先 fetch 当前 schema、属性和页面格式。

## Route Files

- Q-FIN full route：`10_PROGRAM_STATE/group_routes/Q-FIN.csv`。
- PHYS full route：`10_PROGRAM_STATE/group_routes/PHYS.csv`。
- CS full route：`10_PROGRAM_STATE/group_routes/CS.csv`。

## Automation 状态

- `study-project-daily-sync` 已改为 detached local cron。
- 目标：每天读取 GitHub/Notion 状态并同步更新，不依赖当前聊天线程。
- 如果当日没有有效学习记录，automation 应写入 missed/blocked 状态；不能伪造学习进度。

## 下一步

不要继续做项目搭建。下一次应进行 D003/D001 概念教学，且用中文讲解：

- Q-FIN - TR D003：price formation，价格如何由订单流、bid/ask、depth、aggressive/passive orders 形成。
- PHYS - quant-ph D003：amplitude vs probability，量子概率为什么不是普通频率直觉。
- MATH - PR D001：probability as uncertainty compression，概率如何把不确定性变成可计算对象。

教学必须讲到可使用：概念含义、核心机制、失败模式、真实例子、决策规则、ROI 最大化行动。

每次 session 结束必须同步 GitHub，并给出后续课程。
