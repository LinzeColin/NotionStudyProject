@AGENTS.md
@_system/MAINTAINER_HANDOFF.md

本仓治理架构为双平面八文件（`v0.0.0.3`，融合 Governance 标准）。先判定本次是教学方还是维护方，加载根合同并输出对应的启动回执。维护前先核验当前 Git 状态与维护交接。改动后必须跑 `bash _system/validation/conformance_check.sh`（含四道门），并保证 active/paused 项目已登记进 `README.md` 与 Notion。不要假设固定项目数，也不要在本适配器里复制规则正文。
