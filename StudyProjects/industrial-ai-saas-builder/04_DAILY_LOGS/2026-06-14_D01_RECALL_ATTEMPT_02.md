# D01 RAG Recall Attempt 02 - 2026-06-14

Project: `industrial-ai-saas-builder`  
Week: W01  
Day: D01  
Progress: 第1/34天  
Type: independent recall attempt  
Status: passed; D02 gate open

## User Answers

| Question | User answer | Score | Diagnosis |
|---|---|---:|---|
| 1. RAG 和 model memory 的区别是什么？ | Model memory 是模型参数里的通用印象；RAG 是模型回答前先查授权资料，把证据交给 LLM 再回答。 | 5/5 | 核心区别清楚：参数内通用印象 vs 外部授权证据检索。 |
| 2. 为什么 RAG 的价值是可检查证据，而不是模型更聪明？ | RAG 的价值不是让模型更聪明，而是让答案有来源、可检查、可审计、可修复。 | 5/5 | 已抓住 RAG 的核心价值：traceability / auditability / repairability。 |
| 3. 举一个具体工业强 RAG 场景。 | 操作员问某个报警过去怎么处理，系统检索 SOP、报警历史、维修工单、事故复盘，给出带来源解释。 | 5/5 | 场景具体，资料源明确，输出是证据化解释，不是泛化预测。 |
| 4. 举一个具体工业非 RAG-first 场景，并说明更好的工具。 | 查询当前温度、压力、转速、电流；更好的工具是实时数据库、time-series API、dashboard 或 rules。 | 5/5 | 边界准确：实时状态/结构化数据不应 RAG-first。 |

## Result

Recall attempt 02 passed.

The user can now distinguish:

- Model memory vs RAG.
- RAG value vs model intelligence.
- Strong industrial RAG evidence lookup vs real-time data query.

## D02 Gate

D02 may start next:

- Day: D02 / 第2/34天
- Topic: RAG pipeline as failure surface
- Core question: Where can a RAG system fail before the answer is generated?
- Required output: RAG pipeline architecture diagram + component failure-mode table

## Teaching Adjustment

The successful pattern was not asking for abstract explanation first, but giving a fill-in structure and requiring concrete industrial examples. Keep this pattern for D02: pipeline component -> failure mode -> industrial consequence -> detection method.
