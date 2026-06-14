# D01 RAG Recall Attempt 01 - 2026-06-14

Project: `industrial-ai-saas-builder`  
Week: W01  
Day: D01  
Progress: 第1/34天  
Type: independent recall attempt  
Status: not passed; remediation required before D02

## User Answers

| Question | User answer | Score | Diagnosis |
|---|---|---:|---|
| 1. RAG 和 model memory 的区别是什么？ | 不知道 | 0/5 | 核心区别仍未建立。D02 不推进。 |
| 2. 为什么 RAG 的价值是可检查证据，而不是模型更聪明？ | 因为 RAG 的数据来源是现有的已经保存的有权限能访问的数据库，提供推理依据产出证据来源 | 3/5 | 方向正确，但范围过窄：RAG 来源不只是数据库，也包括文档、日志、SOP、手册、历史案例；价值不是“推理依据”本身，而是证据可追溯、可检查、可审计。 |
| 3. 举一个强 RAG 工业场景和一个不该 RAG-first 的场景。 | 寻找历史、规律、根据过去总结下一步；不能的是问未来的天气怎么样 | 2/5 | 强 RAG 场景说得太泛，容易误把预测/规律发现当 RAG；天气例子不是工业 SaaS 核心边界，应该换成实时数据、控制动作、优化、审批流或 SQL 报表。 |

## Corrective Teaching

### Q1 标准答案

Model memory 是模型训练时压进参数里的通用知识。它像一个人多年读书后的印象：能说出很多合理答案，但不保证知道你的最新内部资料，也不能天然给出来源。

RAG 是模型回答前的外部证据检索机制。它不改模型参数，而是在每次回答前，从你授权的资料库里找相关证据，把证据放进上下文，再让 LLM 基于这些证据回答。

最短区别：

> Model memory = 模型自己脑子里的通用印象；RAG = 回答前先查你的资料并带证据回答。

### Q2 纠偏

用户答案方向正确：RAG 依赖可访问的已有资料，能提供证据来源。

需要加强：

1. 来源不只数据库，也可以是 PDF、SOP、日志、手册、工单、事故报告、班组记录、网页、知识库。
2. RAG 不是自动保证正确；它只是提供可检查的证据链。
3. 证据还要被检查：引用是否存在、是否过期、是否真的支持结论。
4. 价值不是“模型更聪明”，而是“回答可被追问、审计、修复”。

### Q3 纠偏

“寻找历史、规律、根据过去总结下一步”太宽。RAG 擅长找历史证据和案例，但不等于预测模型、优化模型或自动决策系统。

强 RAG 工业场景应该这样说：

> 操作员问：这个报警过去出现过几次？当时 SOP 怎么要求处理？历史事故报告和维修工单里怎么解释？系统检索报警日志、SOP、维修记录、事故复盘，然后给出带来源的解释。

不该 RAG-first 的工业场景应该这样说：

> 用户问：当前回转窑温度、压力、转速、电流是多少？这应查实时数据库/time-series API，而不是查文档。

或：

> 系统要自动调节燃料供给或风量。这不是 RAG-first，应使用控制模型、仿真、规则、权限和 fail-closed 风控。

## Pass Criteria Still Pending

D02 may start only after the user can answer:

1. Model memory 和 RAG 的区别。
2. RAG 为什么提供可检查证据链，而不是让模型更聪明。
3. 一个具体工业强 RAG 场景。
4. 一个具体工业非 RAG-first 场景。

## Next Micro-Recall Prompt

用下面这个格式重新回答即可：

```text
1. Model memory 是___；RAG 是___。
2. RAG 的价值不是___，而是___。
3. 强 RAG 场景：___。
4. 不该 RAG-first 场景：___，更好的工具是___。
```
