# 维护交接｜学习操作系统 v0.0.0.3

> 当前可执行的维护状态。**每次写仓库的任务结束时都必须更新本文件。** 与 Git 历史冲突时以 Git 为准。不要把包含本文件的那个提交号写进本文件；用 `git log -1 --format=%H -- _system/MAINTAINER_HANDOFF.md` 解析。

## 一、仓库回执

- 仓库：`LinzeColin/NotionStudyProject`
- 远端：`git@github.com:LinzeColin/NotionStudyProject.git`
- 分支：`main`（**唯一分支**）
- 本次任务基线提交：`70d3a5f23333ed20a80dfe4ddcd8c41feccda8fd`（Owner 手建 `README.md`）
- 首次安装提交：`977165ac7c834747f3234843566ba4fc80701b4e`（`v0.0.0.2`）
- 本文件所在提交：用 `git log -1 --format=%H -- _system/MAINTAINER_HANDOFF.md` 解析，**不写自引用**
- 更新时间：`2026-07-22T00:45Z`
- 工作树：干净（实施隔离在工作树 `_scratch/notionstudy-governance` / 分支 `feat/dual-plane-governance`，快进合并到 `main` 后工作树与分支已回收）
- 推送状态：已推送到 `origin/main`

## 二、维护方身份与能力

- 上一个 Agent：Claude Code / `claude-opus-4-8`
- 能力：读、写、命令行、Git、测试、提交、推送、`gh`
- **能力缺口：无 Notion 连接器** —— 因此本次**无法核验** README 登记表与 Notion 时间线数据库是否一致（已如实记入 `README.md` 第四节，未假绿）
- 任务模式：`root_change`（Owner 明确授权的治理架构升级）
- 授权作用域：八个治理文件、`README.md`、四个薄适配器、`_system/**`
- 基线提交：`70d3a5f`

## 三、当前状态

- 状态：`ready`
- 已完成：
  - `v0.0.0.2` 首次安装（提交 `977165a`）
  - 吸收孤立分支会话记录 + 仓库收敛为单分支（提交 `a25786e`、`6ac383d`）
  - **`v0.0.0.3` 治理升级（本次）：** 融合 Governance 双平面标准、八文件、四道门、口径字典、全面中文化、项目双向登记、本机 Skill 仓库化
- 失败或跳过：无
- 改动文件：见交付提交的 `git show --stat`

## 四、动态项目盘点

- 发现所依据的输入提交：`6cac133`
- 候选目录 13 / 规范项目 13 / `active` 9 / `paused` 0 / `merged` 1 / `archived` 2 / `unknown` 1
- **本次未改动任何项目拓扑** —— 只做治理升级，计数与分类原样沿用
- 别名与合并告警：裸词「AI」四路歧义，**未注册为别名**；`ai` 用 `archived` + 被取代为四个后继，不用合并关系；唯一合并边 `prompt-engineering-loop-engineering → ai-workflow-operating-system`，无环

计数由发现过程得出，不是常量。后继 Agent 在项目拓扑变化后必须重跑发现并重建 `_system/STUDY_INDEX.md` **和 `README.md` 登记表**。

## 五、验证

- 命令：
  - `bash _system/validation/conformance_check.sh` —— 88/88 通过，退出码 0
  - `python3 _system/validation/four_gates.py` —— 四道门 20/20 通过，退出码 0
- 失败：无
- 证据路径：`_system/validation/conformance_check.sh`、`_system/validation/four_gates.py`、`_system/validation/CONFORMANCE_REPORT_v0.0.0.2.md`、`_system/STUDY_INDEX.md`
- **长期不变量（每次写入后必须仍成立）：**
  1. 仓库只有 `main` 一条分支、0 未决合并请求、0 待办事项（`G21` 断言）；
  2. 四道门全过（`G22` 断言）；
  3. 所有 `active` / `paused` 项目登记在 `README.md`（登记门断言）**且与 Notion 一致**（需人工或带连接器的 Agent 核验）。

## 六、待办与未知

1. **Notion 一致性未核验** —— 本次无连接器，`README.md` 第四节 9 个在跑项目的「最后核对」仍为空。**下一个具备 Notion 连接器的 Agent 应逐行比对并填日期。**
2. `dlm-flow-agent-cost-sprint` 状态 `unknown` —— 项目文件完整但两份旧索引都未收录。待 Owner 一句话裁决 `active` / `paused` / `archived`。
3. arXiv 物理 `quant-ph` 第 4 课于 2026-06-23 开讲后被 Owner 要求暂停，**等待明确恢复指令**（会话级暂停，项目仍 `active`）。
4. 5 个项目计划窗口已过期且无新证据 —— 按 Owner 规则不构成暂停，但排期需 Owner 重新确认。
5. `ceo-finance-strategy-system` 与 `ai-tech-industry-investment-judgment` 在投资判断上范围重叠，当前按旧定义划分，未合并。
6. 多个项目的产物未记录独立性，因此一律未升到 `E4`。
7. 本机 `~/.codex/skills/study-project-orchestrator/` 尚未替换为仓库版薄入口 —— 仓库版已就位于 `.agents/skills/study-project-orchestrator/SKILL.md`，**同步方向必须是仓库 → 本机**。

- 未应用的治理修改建议：无
- 已知风险：
  - 旧索引 `PROJECT_INDEX.md` / `ARCHIVE_INDEX.md` 仍在仓库中作为证据；误当路由源会复活旧拓扑（两文件顶部已加横幅，`STUDY_ORCHESTRATOR_ROUTE.md` 第二节已声明）。
  - 适配器是入口不是强制保证；未加载适配器的 Agent 需用通用提示词显式加载。
  - **README 与 Notion 的一致性目前只能靠人工或带连接器的 Agent 核验**，登记门只能验 GitHub 侧。

## 七、下一个精确动作

**Owner 四选一，互不阻塞：**

1. 直接开始学习，例如 `开始学习：AI 工作流操作系统，直接进第 6 课的严重失败判定`；
2. 一句话裁决 `dlm-flow-agent-cost-sprint` 的状态；
3. 一句话决定 arXiv 物理 `quant-ph` 第 4 课是否恢复；
4. 让一个有 Notion 连接器的 Agent 去核对 `README.md` 第三节 9 个项目与 Notion 时间线数据库是否一致，并回填第四节的「最后核对」。

## 八、恢复

- 恢复引用：`study-os-v0.0.0.2-pre-20260721T225052Z` → `6cac133`（安装前快照，已推送）
- 回滚命令：

```bash
# 首选：可逆撤销最近一次维护提交
git revert --no-edit $(git log -1 --format=%H -- _system/MAINTAINER_HANDOFF.md)
# 只撤销 v0.0.0.3 治理升级，保留 v0.0.0.2 安装
git revert --no-edit 70d3a5f..HEAD
# 全量回到安装前快照（仅在 Owner 明确要求时）
git reset --hard study-os-v0.0.0.2-pre-20260721T225052Z
```

- 恢复被重写的任一治理文件：`git show 70d3a5f:<文件名>`
- 恢复 2026-06-23 暂停记录：`_system/study-project-orchestrator/2026-06-23_PAUSED_SYNC_RECORD.md`

## 九、后继 Agent 怎么接手

先用当前 `git status` / `git log` 核对本文件，再动手。保留 Owner 的改动。不要假设固定项目数。

```bash
git fetch origin && git log --oneline -5 origin/main
cat AGENTS.md README.md _system/MAINTAINER_HANDOFF.md _system/STUDY_INDEX.md
bash _system/validation/conformance_check.sh        # 期望退出码 0
```

然后按 `_system/templates/AGENT_TAKEOVER_CHECKLIST.md` 输出 `MAINTAINER_BOOTSTRAP` 回执再动手。合并一次学习会话用 `_system/templates/GENERIC_MAINTAINER_SESSION_MERGE_PROMPT.md`。

收尾必须同时满足：改动已合进 `main`、远端只剩 `main`、0 未决合并请求、0 待办事项、本地无遗留分支与工作树、四道门全过。

**本仓全部必要状态都在 Git 与本文件中，不依赖任何 Agent 的私有记忆。**
