# 维护交接｜学习操作系统 v0.0.0.7

> 当前可执行的维护状态。**每次写仓库的任务结束时都必须更新本文件。** 与 Git 历史冲突时以 Git 为准。不要把包含本文件的那个提交号写进本文件；用 `git log -1 --format=%H -- _system/MAINTAINER_HANDOFF.md` 解析。

## 一、仓库回执

- 仓库：`LinzeColin/NotionStudyProject`
- 远端：`git@github.com:LinzeColin/NotionStudyProject.git`
- 分支：`main`（**唯一分支**）
- 本次任务基线提交：`11f635c`（`v0.0.0.6` 双语代号）
- 首次安装提交：`977165ac7c834747f3234843566ba4fc80701b4e`（`v0.0.0.2`）
- 本文件所在提交：用 `git log -1 --format=%H -- _system/MAINTAINER_HANDOFF.md` 解析，**不写自引用**
- 更新时间：`2026-07-22T12:05Z`
- 工作树：干净（实施隔离在工作树 `_scratch/notionstudy-depth-floor` / 分支 `feat/teaching-depth-floor`，快进合并到 `main` 后工作树与分支已回收）
- 推送状态：已推送到 `origin/main`

## 二、维护方身份与能力

- 上一个 Agent：Claude Code / `claude-opus-4-8`
- 能力：读、写、命令行、Git、测试、提交、推送、`gh`
- **能力缺口：无 Notion 连接器** —— 因此本次**无法核验** README 登记表与 Notion 时间线数据库是否一致（已如实记入 `README.md` 第五节，未假绿）
- 任务模式：`root_change`（Owner 明确授权：把教学深度下限改成可度量、可失败的机制）
- 授权作用域：八个治理文件、`README.md`、五个薄适配器、`_system/templates/**`、`_system/validation/**`
- 基线提交：`11f635c`

## 三、当前状态

- 状态：`ready`
- 已完成：
  - `v0.0.0.2` 首次安装（提交 `977165a`）
  - 吸收孤立分支会话记录 + 仓库收敛为单分支（提交 `a25786e`、`6ac383d`）
  - `v0.0.0.3` 治理融合：Governance 双平面标准、八文件、四道门、口径字典、全面中文化、项目双向登记、本机 Skill 仓库化（提交 `5dea041`）
  - `v0.0.0.4`：启动回执默认静默；「今日课程状态」开头；默认教学深度八项；复习自动判定（提交 `2b57804`）
  - `v0.0.0.5`：状态块改为渲染后的 Markdown；时区跟随 Owner 所在地（提交 `37bec00`）
  - `v0.0.0.6`：协议代号一律中英双语；标准译法集中在口径字典 11.7（提交 `11f635c`）
  - **`v0.0.0.7`（本次）：** **教学深度下限改成可度量、可失败的机制**。Owner 已是第三次反馈「太浅太单薄」，前两次只改措辞均无效 —— 病根是八项深度清单**可以被八句话满足**，且规则里留了两个逃生舱。本次：① 八项各自增加最小合格标准（唯一真源在 `TEACHING_METHOD_REGISTRY.md` 文末），低于线即未交付；② 删掉「不按字数机械衡量」（删了唯一可度量的下限却没换上能失败的东西）和「本次时间极短」（**模型自己就能判定**，等于把钥匙交给被约束的一方）；③ 新增四段骨架与交付前静默自检；④ **不设课程档位**，默认永远最深，唯一压缩条件是 Owner 亲口说「太长」且只压当轮
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
  - `bash _system/validation/conformance_check.sh` —— 123/123 通过，退出码 0（新增 `G27` 深度门，含两条逃生舱回归断言）
  - `python3 _system/validation/four_gates.py` —— 四道门 20/20 通过，退出码 0
- 失败：无
- 证据路径：`_system/validation/conformance_check.sh`、`_system/validation/four_gates.py`、`_system/validation/CONFORMANCE_REPORT_v0.0.0.2.md`、`_system/STUDY_INDEX.md`
- **长期不变量（每次写入后必须仍成立）：**
  1. 仓库只有 `main` 一条分支、0 未决合并请求、0 待办事项（`G21` 断言）；
  2. 四道门全过（`G22` 断言）；
  3. 所有 `active` / `paused` 项目登记在 `README.md`（登记门断言）**且与 Notion 一致**（需人工或带连接器的 Agent 核验）；
  4. 教学方启动静默、可见回复以「今日课程状态」开头、默认深度八项（`G24` 断言，已用三次注入测试验证非恒真门）；
  5. 状态块是渲染后的 Markdown、模板五行齐全、模板不硬编码时区（`G25` 断言）；
  6. 协议代号中英双语、三个主合同都有中文全称（`G26` 断言，已用两次注入测试验证非恒真门）；
  7. 八项深度各有最小合格标准、四段骨架完整、交付前自检为硬性、**两个逃生舱不得复活**（`G27` 断言，已用四次注入测试验证非恒真门：复活字数逃生舱、删掉任一项达标线、复活「时间极短」、把「不许输出」软化成「尽量补足」—— 四次均被拦下）。

## 六、待办与未知

1. **Notion 一致性未核验** —— 本次无连接器，`README.md` 第五节 9 个在跑项目的「最后核对」仍为空。**下一个具备 Notion 连接器的 Agent 应逐行比对并填日期。**
2. `dlm-flow-agent-cost-sprint` 状态 `unknown` —— 项目文件完整但两份旧索引都未收录。待 Owner 一句话裁决 `active` / `paused` / `archived`。
3. arXiv 物理 `quant-ph` 第 4 课于 2026-06-23 开讲后被 Owner 要求暂停，**等待明确恢复指令**（会话级暂停，项目仍 `active`）。
4. 5 个项目计划窗口已过期且无新证据 —— 按 Owner 规则不构成暂停，但排期需 Owner 重新确认。
5. `ceo-finance-strategy-system` 与 `ai-tech-industry-investment-judgment` 在投资判断上范围重叠，当前按旧定义划分，未合并。
6. 多个项目的产物未记录独立性，因此一律未升到 `E4`。
7. 本机 `~/.codex/skills/study-project-orchestrator/` 尚未替换为仓库版薄入口 —— 仓库版已就位于 `.agents/skills/study-project-orchestrator/SKILL.md`，**同步方向必须是仓库 → 本机**。
8. **`v0.0.0.7` 需要 Owner 再粘一次**：把 `_system/templates/CHATGPT_PROJECT_INSTRUCTIONS.md` 里「———」之间的内容重新粘进 ChatGPT 的 Project Instructions。仓库改了**不会**自动改 ChatGPT 侧 —— 不重粘，它会继续按旧的八项清单讲浅课。
9. **深度是否真的上去了，只能由下一次真实上课来验收。** `G27` 只能保证规则本身不被稀释，**无法检查一节课的实际质量** —— 教学输出不经过仓库，四道门看不见它。下一次上课后由 Owner 判定：仍然浅 → 病根不在规则文本，应转向别的机制（Owner 本轮已明确暂不采用「一课拆多轮」，那是下一个候选）。
10. 四道门的中文门解析器此前有缺陷：正文里用四反引号包三反引号会打乱围栏配对，导致大量正文被误当未登记术语。已按反引号数量精确配对修复，并用注入测试确认修复后仍能抓到真正未登记的术语（不是把门改松了）。

- 未应用的治理修改建议：无
- 已知风险：
  - 旧索引 `PROJECT_INDEX.md` / `ARCHIVE_INDEX.md` 仍在仓库中作为证据；误当路由源会复活旧拓扑（两文件顶部已加横幅，`STUDY_ORCHESTRATOR_ROUTE.md` 第二节已声明）。
  - 适配器是入口不是强制保证；未加载适配器的 Agent 需用通用提示词显式加载。
  - **README 与 Notion 的一致性目前只能靠人工或带连接器的 Agent 核验**，登记门只能验 GitHub 侧。

## 七、下一个精确动作

**先做这一件（否则 ChatGPT 侧不会生效）：** 把 `_system/templates/CHATGPT_PROJECT_INSTRUCTIONS.md` 中「———」之间的全部内容，覆盖粘贴到 ChatGPT 的 Project Instructions。

之后 Owner 四选一，互不阻塞：

1. 直接开始学习，例如 `开始学习：AI 工作流操作系统，直接进第 6 课的严重失败判定` —— **这同时是 `v0.0.0.7` 的实测**：课讲完后由 Owner 判定深度是否真的上去了；
2. 一句话裁决 `dlm-flow-agent-cost-sprint` 的状态；
3. 一句话决定 arXiv 物理 `quant-ph` 第 4 课是否恢复；
4. 让一个有 Notion 连接器的 Agent 去核对 `README.md` 第四节 9 个项目与 Notion 时间线数据库是否一致，并回填第五节的「最后核对」。

## 八、恢复

- 恢复引用：`study-os-v0.0.0.2-pre-20260721T225052Z` → `6cac133`（安装前快照，已推送）
- 回滚命令：

```bash
# 首选：可逆撤销最近一次维护提交
git revert --no-edit $(git log -1 --format=%H -- _system/MAINTAINER_HANDOFF.md)
# 只撤销 v0.0.0.7 深度变更，保留 v0.0.0.6
git revert --no-edit 11f635c..HEAD
# 全量回到安装前快照（仅在 Owner 明确要求时）
git reset --hard study-os-v0.0.0.2-pre-20260721T225052Z
```

- 恢复被重写的任一治理文件：`git show 11f635c:<文件名>`
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
