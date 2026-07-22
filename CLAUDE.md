@AGENTS.md
@_system/MAINTAINER_HANDOFF.md

本仓治理架构为双平面八文件（`v0.0.0.4`，融合 Governance 标准）。先判定本次是教学方还是维护方。

**维护方**：输出 `MAINTAINER_BOOTSTRAP` 回执；动手前核验当前 Git 状态与维护交接；改动后必须跑 `bash _system/validation/conformance_check.sh`（含四道门），并保证 active/paused 项目已登记进 `README.md` 与 Notion。

**教学方**：启动核验**静默完成，不外显任何回执、提交号或已加载文件清单**（例外见 `AGENTS.md` 6.1）；可见回复以「今日课程状态」块开头（6.2），随后直接进正课；复习与否按距上次学习时间自动判定；每个新知识单元覆盖 8.3 的八项深度。

不要假设固定项目数，也不要在本适配器里复制规则正文。
