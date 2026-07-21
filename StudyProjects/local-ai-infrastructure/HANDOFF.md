# Project Handoff

**Protocol:** v0.0.0.2
**Canonical project ID:** `local-ai-infrastructure`
**Status:** active
**Aliases / merged from:** [`Local AI Infrastructure`]
**State source commit:** `02a20a2`（项目最后一次写入）；install base `6cac133`
**Handoff file commit:** resolve with `git log -1 --format=%H -- StudyProjects/local-ai-infrastructure/HANDOFF.md`; do not self-reference
**Last updated UTC:** `2026-07-21T22:55:46Z`

> **本文件为首次创建。** 安装 Study OS v0.0.0.2 之前本项目没有 `HANDOFF.md`，内容全部由当前 HEAD 的 `00_PROJECT_BRIEF.md`、`01_STUDY_PLAN.md`、`02_TOP1_STRATEGY.md`、`state.json` 与 Legacy 索引推导，**没有任何学习证据被编造**。

## 1. Snapshot

- Stable goal：建立本地与远程 AI 基础设施判断力（28 天）：本地 LLM 部署、远程 GPU、32B/70B 量化模型服务、本地 RAG 与知识库、多模态/视觉推理、NPU/CNN 概念、本地大数据策略模拟器。
- Current focus：计划窗口 2026-07-19→2026-08-15 **已开始**，但**尚未开课**。
- Default route：M（state.json 明确「概念优先」；概念门通过后转 B 做真实部署产物）。
- Current primary contract：M。
- Next smallest action：开 D01 —— 概念优先，把每个基础设施决策连到本地/远程 agent 与 RAG 的成本、隐私、可靠性与 ROI。
- Recommended start prompt：`开始学习：Local AI Infrastructure D01`

## 2. Capability Evidence

### Reliable without AI (E3/E4)
- 无。

### Provisional independent (E2)
- 无。项目尚未开课，无 pre-help 表现记录。

### Assisted exposure only (E0/E1)
- `00_PROJECT_BRIEF.md`、`01_STUDY_PLAN.md`、`02_TOP1_STRATEGY.md` 由工具产出，不构成能力证据。

### Not yet proven
- 本地 vs 远程选型 — 缺失 Oracle：给定任务、数据敏感度与预算，无提示独立判断该本地跑还是租 GPU，并说明成本、延迟、可复现性、安全与搭建摩擦的取舍。
- 量化与显存 — 缺失 Oracle：独立解释量化等级、上下文长度、吞吐与质量之间的取舍，并估算 32B/70B 在给定显存下的可行性。
- 本地 RAG — 缺失 Oracle：产出一条可运行的本地检索 + grounded generation 流水线，并能诊断一个失败路径。

## 3. Misconceptions, Failures & Counterevidence

- 尚无学习证据，因此暂无已暴露误区。
- 预置边界：本项目**不含** from-scratch 预训练、分布式训练实操、DeepSpeed/NCCL/CUDA 内部机制与完整生产 MLOps 平台 —— 这些属 `gpu-ml-systems-model-training`。本项目只覆盖训练决策素养、fine-tuning/LoRA 边界与硬件成本意识。

## 4. Review Queues

### Recall
| Item | Level | Due window | Last pre-help result | Source / validity |
|---|---|---|---|---|
| 量化等级 / 上下文 / 吞吐 / 质量的取舍 | R0 | D01–D07 | 未取证 | `01_STUDY_PLAN.md` / recheck_due（模型与工具迭代快） |
| 本地 vs 远程 GPU 的 ROI 判据 | R0 | D01–D07 | 未取证 | `00_PROJECT_BRIEF.md` / current |

### Reperformance
| Capability | Trigger | Variation / failure path | Last result |
|---|---|---|---|
| 在本机跑起一个量化模型并测吞吐 | real_artifact_due | 换模型规模 / 换 serving 栈 | 未做 |
| 搭一条本地 RAG 流水线 | failure_injection_due | 注入检索失败 / 文档过期 / 嵌入不匹配 | 未做 |

### Resolution
| Decision / prediction | Initial confidence | Resolution trigger | Kill / update condition |
|---|---|---|---|
| 新机器（预期 2026-06-30 到货）显存/CPU/存储显著更大 | unknown | 实机到货后实测规格 | **到货前不得据此改任何硬件假设** |
| 保留本地 vs 远程对比而非假设单一机器 | high（2026-06-14 决策） | 实机稳定使用后 | 若远程成本长期占优则调整重心 |

## 5. Validity

- Current sources：`00_PROJECT_BRIEF.md`、`01_STUDY_PLAN.md`、`02_TOP1_STRATEGY.md`、`state.json`。
- Recheck due / trigger：本地模型、量化格式、serving 栈与 GPU 价格属**高波动**信息，所有结论必须带 source 与 `valid_as_of`；新机器到货后必须先实测规格再改硬件假设。
- Superseded knowledge：无。
- Unknowns：新机器实际规格与到货时间；当前可用远程 GPU 预算上限。

## 6. Operating Preferences

- Effective methods：概念优先，再落到实测；每个基础设施决策都连到成本、隐私、可靠性与 ROI。
- Avoid / adjust：不创建 `D000`（Owner 提前开始就直接用 D01）；不把未核实的硬件规格当作既定事实。
- Time / format preference：未记录（项目未开课）。

## 7. Legacy & Recovery

- Prior Handoff/log/state references：无既有 Handoff（本文件为首次创建）。状态来源：`state.json`、`00_PROJECT_BRIEF.md`、Legacy `PROJECT_INDEX.md` 第 6 行。
- Merge/alias history：由 `ai` 项目拆分而来的四个后继项目之一（`ai` 状态为 archived），吸收本地模型、本地 RAG、NPU、CNN、多模态、本地大数据策略模拟器与训练决策素养范围。
- Recovery notes：recovery ref `study-os-v0.0.0.2-pre-20260721T225052Z`。

> Current executable state, not a transcript. Preserve contrary evidence and Git history; compress repetition.
