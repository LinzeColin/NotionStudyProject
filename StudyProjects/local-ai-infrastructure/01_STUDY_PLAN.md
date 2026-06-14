# Local AI Infrastructure - 28-Day Plan

Start: 2026-07-19  
End: 2026-08-15  
Timezone: Australia/Sydney  
Schedule mode: controlled parallel with `ai-workflow-operating-system`

## 2026-06-14 Authorized Scope Integration

User selected:

| Decision | Value |
|---|---|
| Integration mode | A: integrate into existing Study Projects, do not create a new project by default |
| GPU budget mode | A now: local/current hardware plus limited remote GPU experiments; new computer arrives 2026-06-30 with larger GPU memory, CPU, and storage |
| Training-large-models scope | C: distributed training / pretraining is future standalone scope, not forced into this 28-day project |

This 28-day route preserves the same dates and end cap while absorbing Remote GPU, 32B/70B quantized inference, multimodal/vision, large-document RAG/embedding/knowledge base, and local data analysis. From-scratch pretraining and distributed training are treated as decision literacy only unless a future 60-90 day project is explicitly opened.

## Route

| Day | Date | Theme | Required output |
|---:|---|---|---|
| D01 | 2026-07-19 | Local + remote AI infrastructure map | Local/API/remote GPU stack map + decision rule |
| D02 | 2026-07-20 | Model serving options | Ollama / llama.cpp / vLLM-style serving checklist |
| D03 | 2026-07-21 | GGUF, quantization, 32B/70B memory math | Quantization and memory tradeoff table |
| D04 | 2026-07-22 | Model selection and context limits | Local vs API vs remote GPU model selection matrix |
| D05 | 2026-07-23 | Large document RAG ingestion | Ingestion pipeline spec for many documents |
| D06 | 2026-07-24 | Embedding, vector DB, hybrid search, reranking | Retrieval eval table + source governance checklist |
| D07 | 2026-07-25 | W1 review | Local/remote LLM + RAG infrastructure review memo |
| D08 | 2026-07-26 | GPU / CPU / NPU concepts | Hardware role comparison card |
| D09 | 2026-07-27 | Remote GPU workflow | Remote GPU cost/security/reproducibility runbook |
| D10 | 2026-07-28 | Benchmarking | Latency/throughput/VRAM/cost test plan |
| D11 | 2026-07-29 | Vision model foundations | CNN/vision concept card |
| D12 | 2026-07-30 | Multimodal and image-generation pipeline | Vision/image generation pipeline diagram |
| D13 | 2026-07-31 | Industrial/finance multimodal use cases | Multimodal use-case ROI matrix |
| D14 | 2026-08-01 | W2 review | Hardware + vision/multimodal readiness review |
| D15 | 2026-08-02 | Local data analysis requirements | Local data-analysis PRD v0.1 |
| D16 | 2026-08-03 | Time-series/event/document data model | Data schema and event/document model |
| D17 | 2026-08-04 | Backtest/event loop | Simulation loop diagram |
| D18 | 2026-08-05 | Strategy rules and metrics | Strategy metric checklist |
| D19 | 2026-08-06 | Scaling and storage | Local storage/compute architecture table |
| D20 | 2026-08-07 | Dashboard/reporting | Simulator/report template |
| D21 | 2026-08-08 | W3 review | Local data + simulator architecture review |
| D22 | 2026-08-09 | Local LLM + simulator integration | LLM-assisted simulation workflow |
| D23 | 2026-08-10 | RAG over simulation logs and research files | Simulation/research log RAG spec |
| D24 | 2026-08-11 | Performance/cost optimization | Local/API/remote GPU optimization checklist |
| D25 | 2026-08-12 | Privacy, security, and data boundary | Local AI security boundary map |
| D26 | 2026-08-13 | Fine-tuning / LoRA decision boundary | Fine-tuning vs RAG vs prompting vs pretraining decision matrix |
| D27 | 2026-08-14 | Final demo design | Final demo script: local/remote model + RAG + data workflow |
| D28 | 2026-08-15 | Final review | Local AI Infrastructure playbook v1 + future GPU training decision gate |

## Parallel Learning Rule

This project runs beside AI Workflow OS. Each day must answer one practical question:

> 这个本地/远程基础设施概念如何让 agent workspace 更便宜、更快、更私密、更可靠，或者更可验证？

## Hardware Timing Rule

Before 2026-06-30, do not assume the new machine is available. Preserve decisions as `current hardware / API / remote GPU` comparisons. After 2026-06-30, future agents should update hardware assumptions based on the actual machine specs, not guesses.

## Training Boundary Rule

Training large models is not the main line here. This project teaches:

- Why fine-tuning/LoRA is different from RAG.
- When fine-tuning is higher ROI than prompting or RAG.
- Why from-scratch pretraining and distributed training require a dedicated 60-90 day project.
- What hardware/cost/eval signals would justify opening `GPU ML Systems & Model Training`.

## Daily Rule

Each day must connect infrastructure to a business, industrial, finance, research, or agent-workspace decision use case. Scaffolding does not count as learning unless the user can explain the concept, failure mode, ROI use case, and verification method.
