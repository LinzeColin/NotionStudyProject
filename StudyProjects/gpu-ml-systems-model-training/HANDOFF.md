# Project Handoff

**Protocol:** v0.0.0.2
**Canonical project ID:** `gpu-ml-systems-model-training`
**Status:** active
**Aliases / merged from:** [`GPU ML Systems & Model Training`, `gpu-ml-systems`]
**State source commit:** `333ab08`（项目最后一次写入）；install base `6cac133`
**Handoff file commit:** resolve with `git log -1 --format=%H -- StudyProjects/gpu-ml-systems-model-training/HANDOFF.md`; do not self-reference
**Last updated UTC:** `2026-07-21T22:55:46Z`

## 1. Snapshot

- Stable goal：90 天建立 GPU ML 系统与模型训练的 Top1% 判断与操作能力：CUDA、PyTorch、分布式训练、FSDP / ZeRO / NCCL / Megatron-LM / DeepSpeed、训练运维。
- Current focus：已排期、**从未开课**；D01 依赖真实硬件到位与环境 profile。
- Default route：B（可运行系统与训练运维产物为终点）。
- Current primary contract：B。
- Next smallest action：D01 —— 先做硬件/环境 profile；在硬件与预算核实前不规划昂贵训练。
- Recommended start prompt：`开始学习：GPU ML Systems D01 硬件与环境 profile`

## 2. Capability Evidence

### Reliable without AI (E3/E4)
- 无。

### Provisional independent (E2)
- 无。项目尚未开课，无 pre-help 表现记录。

### Assisted exposure only (E0/E1)
- `01_STUDY_PLAN.md`、`02_TOP1_STRATEGY.md`、`03_WEEKLY_PLANS/W01.md` 由工具产出，不构成能力证据。

### Not yet proven
- 硬件/环境 profile — 缺失 Oracle：独立读出并解释本机 GPU 显存、互联带宽、驱动/CUDA 版本，并说明它们各自限制哪类训练。
- 分布式并行选型 — 缺失 Oracle：给定模型规模与显存约束，无提示独立在 DDP / FSDP / ZeRO 各阶段之间做选择并说明代价。
- 训练运维 — 缺失 Oracle：独立写出带预算上限与停止条件的 run contract。

## 3. Misconceptions, Failures & Counterevidence

- 尚无学习证据，因此暂无已暴露误区。
- 预置边界：**硬件未核实前不得规划昂贵的预训练或远程 GPU 运行**；任何昂贵运行都需 run contract（预算上限 + 停止条件）。

## 4. Review Queues

### Recall
| Item | Level | Due window | Last pre-help result | Source / validity |
|---|---|---|---|---|
| 显存 / 带宽 / 互联如何限制训练规模 | R0 | D01 | 未取证 | `01_STUDY_PLAN.md` / recheck_due |
| DDP vs FSDP vs ZeRO 各阶段的取舍 | R0 | 分布式模块 | 未取证 | `02_TOP1_STRATEGY.md` / current |

### Reperformance
| Capability | Trigger | Variation / failure path | Last result |
|---|---|---|---|
| 产出一份真实硬件/环境 profile | real_artifact_due | 新机器到位后立即执行 | 未做（硬件未到位） |
| 写出带预算上限与停止条件的 run contract | real_artifact_due | 注入预算超支 / OOM / NCCL 超时 | 未做 |

### Resolution
| Decision / prediction | Initial confidence | Resolution trigger | Kill / update condition |
|---|---|---|---|
| 90 天时长（Owner 要求 60–90 天 + Top1% 深度） | medium | D01 开课后前两周实际进度 | 若硬件长期不到位则改为纯概念/选型路线 |
| 计划窗口 2026-06-30→2026-09-27 | unknown | 硬件到位日期 | 硬件不到位则重排，不视为项目失败 |

## 5. Validity

- Current sources：`state.json`、`01_STUDY_PLAN.md`、`02_TOP1_STRATEGY.md`、`03_WEEKLY_PLANS/W01.md`。
- Recheck due / trigger：**硬件假设未核验** —— 新机器到位后必须先做实测 profile 再改任何硬件相关假设；GPU/框架版本属高波动信息，需带 `valid_as_of`。
- Superseded knowledge：无。
- Unknowns：新机器到货时间与实际规格；预算上限。

## 6. Operating Preferences

- Effective methods：先核实真实环境，再谈方案；每个昂贵动作先写停止条件。
- Avoid / adjust：不在硬件未知时给出具体训练配置；不创建 `D000`。
- Time / format preference：概念与实测交替，避免纯纸面推演。

## 7. Legacy & Recovery

- Prior Handoff/log/state references：重建前版本 `git show 6cac133:StudyProjects/gpu-ml-systems-model-training/HANDOFF.md`；`state.json`；`metrics.csv`。
- Merge/alias history：由 `ai` 项目拆分而来的四个后继项目之一（`ai` 状态为 archived）。Legacy 路由规则要求：分布式训练、from-scratch 预训练素养、CUDA/NCCL/FSDP/ZeRO/Megatron/DeepSpeed 与训练系统运维一律路由到本项目，**不得创建重复项目**。
- Recovery notes：recovery ref `study-os-v0.0.0.2-pre-20260721T225052Z`。

> Current executable state, not a transcript. Preserve contrary evidence and Git history; compress repetition.
