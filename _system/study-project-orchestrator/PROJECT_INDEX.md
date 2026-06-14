# Study Project Index

Generated: 2026-06-14  
Timezone: Australia/Sydney  
Status: active

This file is the routing index for all concurrent Study Projects under `LinzeColin/Notion/StudyProjects/<project-slug>/`.

## Current Consolidated Route

Default execution through 2026-08-15 is controlled parallel mode for the existing non-arXiv projects. `GPU ML Systems & Model Training` is an explicit later-end exception authorized on 2026-06-14, because the user asked to open the previously conditional 60-90 day training-systems project starting 2026-06-30.

| Order | Project | Slug | Status | Domain | Planned window | Current progress | Notion Timeline | Last sync | Next action |
|---:|---|---|---|---|---|---|---|---|---|
| 1 | Industrial AI SaaS Builder | `industrial-ai-saas-builder` | active from 2026-06-14 | Industrial AI / RAG / SaaS / multimodal product judgment / local-vs-remote deployment ROI / business strategy / architecture / PM / Codex / AI SWE | 2026-06-14 to 2026-07-17 | D01 complete after recall attempt 02 / 第1/34天; D02 gate open | `37fb1a98-6ba6-81d2-9a22-d08f109448d5` | 2026-06-14 | Next D02 on 2026-06-15: RAG pipeline as failure surface; output `pipeline architecture diagram + component failure-mode table`. |
| 2 | Quant Agent Workspace | `quant-agent-workspace` | active from 2026-06-14 | Quantitative trading / agent workspace / paper trading / risk controls | 2026-06-14 to 2026-07-04 | D02 active / 第2/21天; 6-attempt review recorded; Case 2-3 passed; Case 1 fixed-format rewrite pending | `37fb1a98-6ba6-8166-9090-fcf04f072208` | 2026-06-14 | Continue W01D02. Rewrite Case 1 in fixed format; D3 remains closed until Case 1 passes. |
| 3 | CEO Finance Strategy System | `ceo-finance-strategy-system` | scheduled parallel from 2026-06-18 | CEO/CFO commercial judgment / finance / legal basics / trading / arbitrage risk | 2026-06-18 to 2026-07-15 | not_started; next is D01 / 第1/28天 | `37fb1a98-6ba6-815a-b6c7-df67a5656fd4` | 2026-06-14 | Start D01 on 2026-06-18 after Industrial AI SaaS RAG foundation; education and decision-framework only |
| 4 | GPU ML Systems & Model Training | `gpu-ml-systems-model-training` | scheduled from 2026-06-30 | GPU ML systems / CUDA / PyTorch / distributed training / FSDP / ZeRO / NCCL / Megatron-LM / DeepSpeed / model training operations | 2026-06-30 to 2026-09-27 | not_started; next is D01 / 第1/90天 | `37fb1a98-6ba6-81f1-929a-fd4290f4be04` | 2026-06-14 | Start D01 on 2026-06-30 with actual hardware/environment profile; do not plan expensive training before hardware and budget are verified. |
| 5 | AI Workflow Operating System | `ai-workflow-operating-system` | queued | Prompt / Loop / AI Agent / Codex / Notion OS / Mermaid / software workflow / local-remote model tool routing / RAG as tool / multimodal tool workflow | 2026-07-19 to 2026-08-15 | not_started; next is D01 / 第1/28天 | `37fb1a98-6ba6-8146-a1ac-f721aa2aff8f` | 2026-06-14 | Start D01 on 2026-07-19 unless explicitly pulled earlier; runs in parallel with Local AI Infrastructure; keep model/RAG/multimodal capabilities as bounded tools. |
| 6 | Local AI Infrastructure | `local-ai-infrastructure` | scheduled parallel from 2026-07-19 | Remote GPU / Local LLM / 32B-70B quantized models / local RAG / large document knowledge base / multimodal / NPU / CNN / local big-data strategy simulator / training decision literacy | 2026-07-19 to 2026-08-15 | not_started; next is D01 / 第1/28天 | `37fb1a98-6ba6-815b-b096-c70b9183d79f` | 2026-06-14 | Start D01 on 2026-07-19 in controlled parallel with AI Workflow Operating System; verify actual new machine specs after 2026-06-30 before changing hardware assumptions. |
| 7 | arXiv Top1 Program | `arxiv-top1-program` | active rolling program | arXiv / Q-FIN, PHYS, MATH, STAT, CS, ECON, EE/EESS, Q-BIO | rolling archive schedule | D002 validated: Q-FIN `q-fin.TR` day 2/30, PHYS `quant-ph` day 2/30; MATH `math.PR` not_started until first lesson | existing arXiv timeline pages; MATH Notion page not yet linked | 2026-06-14 | Next arXiv session must include three groups: Q-FIN D003, PHYS D003, MATH D001 |

## Archived / Superseded Projects

Archive source: `_system/study-project-orchestrator/ARCHIVE_INDEX.md`.

| Project | Slug | Status | Reason | Reactivation rule |
|---|---|---|---|---|
| AI | `ai` | archived superseded | Broad AI route split into current higher-ROI projects. | Explicit user reactivation only. |
| Prompt Engineering and Loop Engineering | `prompt-engineering-loop-engineering` | archived superseded | Prompt/loop route merged into `ai-workflow-operating-system`; project-specific reminder paused. | Explicit user reactivation only. |
| Notion Windows Markdown Operator | `notion-windows-markdown-operator` | archived outside current route | Practical operator sprint should not pollute current Study queue. | Explicit user reactivation only. |

## 2026-06-14 Scope Integration

User confirmed:

| Decision | Value |
|---|---|
| Existing-project integration | A: authorized. Do not create a new Study Project by default. |
| GPU budget mode | A now: current/local hardware plus limited remote GPU experiments. New computer expected on 2026-06-30 with larger GPU memory, CPU, and storage. Verify actual specs after arrival. |
| Training large models | C: distributed training / pretraining belongs to a future standalone project if explicitly opened. |

Routing:

| Topic | Routing |
|---|---|
| Remote GPU | `local-ai-infrastructure` |
| 32B / 70B quantized local models | `local-ai-infrastructure` |
| Large-document RAG / embedding / knowledge base | `industrial-ai-saas-builder` for judgment + `local-ai-infrastructure` for implementation |
| Image generation / vision / multimodal | `industrial-ai-saas-builder` for use-case ROI + `local-ai-infrastructure` for pipeline/runtime |
| Large local data analysis | `local-ai-infrastructure` + `ai-workflow-operating-system` as tool workflow |
| Local/remote/RAG/multimodal as agent tools | `ai-workflow-operating-system` |
| From-scratch pretraining / distributed training | `gpu-ml-systems-model-training`, scheduled 2026-06-30 to 2026-09-27 |

System record: `_system/study-project-orchestrator/2026-06-14_SCOPE_UPDATE_GPU_RAG_MULTIMODAL.md`.

## Non-arXiv End-Date Cap

Existing non-arXiv Study Projects remain capped at 2026-08-15. The newly authorized `GPU ML Systems & Model Training` project is an explicit exception because the user opened a 60-90 day route starting 2026-06-30.

| Project | End date | Meets cap |
|---|---|---|
| Industrial AI SaaS Builder | 2026-07-17 | yes |
| Quant Agent Workspace | 2026-07-04 | yes |
| CEO Finance Strategy System | 2026-07-15 | yes |
| AI Workflow Operating System | 2026-08-15 | yes |
| Local AI Infrastructure | 2026-08-15 | yes |
| GPU ML Systems & Model Training | 2026-09-27 | explicit exception authorized 2026-06-14 |

## arXiv Parallel Rule

arXiv now runs three active groups daily:

| Slot | Group | Current archive | Start | Archive day |
|---:|---|---|---|---:|
| 1 | Q-FIN | `q-fin.TR` Trading and Market Microstructure | 2026-06-13 | 2/30 validated |
| 2 | PHYS | `quant-ph` Quantum Physics | 2026-06-13 | 2/30 |
| 3 | MATH | `math.PR` Probability | 2026-06-15 | not_started until first lesson |

Do not retroactively mark MATH as studied on 2026-06-14. Start it in the next arXiv daily session.

## Routing Rules

Before reading or writing any project state:

1. Identify the intended project from explicit `project-slug`, Notion page URL/title, domain name, or week/day code.
2. Match it against this index.
3. If there is no matching project, run the new project intake lock.
4. If multiple projects match, ask the user to choose from a numbered list.
5. Write only to the selected project folder under `StudyProjects/<project-slug>/`.
6. Learning notes, daily logs, reviews, and Notion note content must be Chinese by default. Keep English only for professional terms, archive codes, exact source titles, API names, and tool names.
7. `study-project-daily-sync` is a detached local cron sync. It must read GitHub/Notion directly and must not rely on the current chat thread.
8. Do not route new AI/Agent/LLM lessons to the old `ai` folder unless explicitly reactivated.
9. Do not route new Prompt/Loop lessons to the old `prompt-engineering-loop-engineering` folder unless explicitly reactivated.
10. Do not count `notion-windows-markdown-operator` as an active Study Project unless explicitly reactivated.
11. Read `_system/study-project-orchestrator/ARCHIVE_INDEX.md` before any daily sync, missed-study check, or reminder routing. Archived folders are historical memory only.
12. Do not mutate Notion until the target database/page schema, visible properties, and current formatting have been fetched.
13. For consolidated projects, use the exact project name in the Notion `Project` select property.
14. Do not change the 2026-08-15 cap for non-arXiv projects without explicit user authorization.
15. For fixed-duration Study Projects, do not create artificial `D000` / `第0天`; if the user starts early, advance to the next real lesson number and keep all sync/check/review steps.
16. If a project is marked `assets complete but recall pending`, do not advance to the next lesson until the user completes the independent recall gate.
17. `GPU ML Systems & Model Training` now exists as `gpu-ml-systems-model-training`; do not create duplicates. Route distributed training, from-scratch pretraining literacy, CUDA/NCCL/FSDP/ZeRO/Megatron/DeepSpeed, and training-systems operations there.

## Notion Placement Rule

New Study Project databases/pages should be created under `Linz Dashboard` as peers to:

- `个人价值增长`
- `制造业`
- `Re:0`
- `arXiv`
- `Codex Study Timeline`

Existing workspaces are read-only by default.
