# Teaching Adjustments

Updated: 2026-06-14
Timezone: Australia/Sydney

## Daily arXiv Session Header

每次 arXiv 日课开头必须先明确显示当前学习位置，避免用户不知道今天到底在学哪个 archive。

固定格式：

| Field | Value |
|---|---|
| Global Day | Dxxx |
| Track 1 | Group / Archive / Archive day out of 30 |
| Track 2 | Group / Archive / Archive day out of 30 |
| Today focus | 本节核心概念 |

示例：

| Field | Value |
|---|---|
| Global Day | D002 |
| Track 1 | Q-FIN / q-fin.TR Trading and Market Microstructure / Day 1 of 30 |
| Track 2 | PHYS / quant-ph Quantum Physics / Day 1 of 30 |
| Today focus | Limit Order Book、Bid-Ask Spread、Liquidity、Slippage；State、Measurement、Uncertainty |

## Notion Sync Rule

- 每次 arXiv 日课结束后，不能只同步 GitHub；如果 `state.json` 中存在对应 Notion page，必须先 fetch 页面格式，再把简洁中文学习笔记同步到对应 Notion 页面。
- Notion 是笔记本，不是数据库污染区；只追加 `学习笔记` 或同页面同格式内容，不新建乱页、不改其他 workspace。
- 同步后必须在 GitHub `07_NOTION/notion_sync_log.csv` 或等价文件记录：日期、session、page、sync scope、结果。
- 如果 Notion connector 不可用，必须在 GitHub daily log 或 sync log 里显式记录 blocker，不能沉默跳过。

## Teaching Fit

- 当用户说“模板不知道怎么填”时，不继续要求用户填模板；先给标准答案、反例、类比和可复制表达，再让用户用自己的话复述。
- 对金融市场概念，优先用真实交易流程讲解：报价、下单、撮合、成交、滑点、费用、风控、仓位、退出。
- 每个概念都必须回答“这个概念我应该怎么用”，不能只给定义。
