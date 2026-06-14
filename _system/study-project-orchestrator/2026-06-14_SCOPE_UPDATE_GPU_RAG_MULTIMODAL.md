# Scope Update - GPU / RAG / Multimodal / Model Training

Date: 2026-06-14  
Timezone: Australia/Sydney  
Status: authorized and applied to existing Study Projects

## User Choices

| Decision | User choice | Meaning |
|---|---|---|
| 1 | A | Integrate new topics into existing Study Projects first; do not create a new project by default. |
| 2 | A now; new computer on 2026-06-30 | Current mode is local/current hardware plus limited remote GPU experiments. After 2026-06-30, verify actual new machine GPU memory, CPU, and storage before updating assumptions. |
| 3 | C | Distributed training / from-scratch pretraining is future standalone scope, not forced into existing 28-day projects. |

## Applied Routing

| Topic | Project routing | Notes |
|---|---|---|
| Remote GPU | `local-ai-infrastructure` | Learn access, cost, security, reproducibility, local-vs-remote tradeoff. |
| Locally running 32B / 70B quantized models | `local-ai-infrastructure` | Learn memory math, quantization, serving, benchmark, quality/cost tradeoff. |
| Large-document RAG / embedding / knowledge base | `industrial-ai-saas-builder` + `local-ai-infrastructure` | SaaS project handles judgment/ROI/eval; Local project handles implementation/infrastructure. |
| Image generation / vision / multimodal | `industrial-ai-saas-builder` + `local-ai-infrastructure` | SaaS project handles use-case judgment; Local project handles pipeline/runtime basics. |
| Large local data analysis | `local-ai-infrastructure` + `ai-workflow-operating-system` | Local handles compute/data pipeline; AI Workflow handles tool workflow. |
| Training large models | Future conditional project | Only decision literacy / LoRA/fine-tuning boundary in current projects. Distributed training/pretraining requires future 60-90 day project. |

## Files Updated

| File | Change |
|---|---|
| `StudyProjects/local-ai-infrastructure/00_PROJECT_BRIEF.md` | Added integrated scope, hardware timing, and future training boundary. |
| `StudyProjects/local-ai-infrastructure/01_STUDY_PLAN.md` | Revised D01-D28 route without changing dates. |
| `StudyProjects/local-ai-infrastructure/02_TOP1_STRATEGY.md` | Created missing Top1 strategy. |
| `StudyProjects/local-ai-infrastructure/state.json` | Added scope integration fields. |
| `StudyProjects/industrial-ai-saas-builder/02_TOP1_STRATEGY.md` | Added SaaS judgment boundaries for RAG/multimodal/local-vs-remote/training. |
| `StudyProjects/ai-workflow-operating-system/00_PROJECT_BRIEF.md` | Added model/RAG/multimodal/data-analysis tool workflow scope. |
| `StudyProjects/ai-workflow-operating-system/02_TOP1_STRATEGY.md` | Created missing Top1 strategy. |
| `StudyProjects/ai-workflow-operating-system/state.json` | Added tool backlog and integration fields. |

## External Review

A multi-agent reviewer evaluated the proposed routing before write. Adopted conclusion: existing-project integration is correct; do not create a new Study Project unless training systems become the main explicit target.

Separate ChatGPT/Claude/Perplexity connectors were not available in this tool context; no claim is made that they reviewed this update.

## Guardrails

- Do not change project dates without explicit authorization.
- Do not start `GPU ML Systems & Model Training` unless user explicitly authorizes a separate 60-90 day route.
- Do not let infrastructure setup count as learning unless the user can explain concept, failure mode, ROI use case, and verification method.
- After 2026-06-30, verify the new computer specs before changing local hardware assumptions.
