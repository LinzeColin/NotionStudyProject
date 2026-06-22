# NotionStudyProject Learning Log

- 本文件保存所有项目的精简学习记录
- 不保存完整对话
- 每次记录类似 Session Handoff
- 新记录追加到文件顶部
- 学习频率不固定
- 一次记录可以涉及多个项目

## 2026-06-22 20:46 AEST｜arXiv Top1 Program｜Q-FIN D004｜约 25 分钟

- 学习内容：Q-FIN / `q-fin.TR` D004 Adverse Selection；为什么“成交成功”不等于交易质量好，post-fill adverse movement 可能说明被 informed trader / toxic flow 打中。
- 学习行为：回忆 / 深化 / 迁移 / ROI / 结束学习并保存同步 Notion
- 用户反馈前的关键理解或回答：用户先回答 VWAP 是加权平均，低价成交量更多会拉低平均执行价；随后在 limit buy 场景中复用了标准模板；在 limit sell 100 且 mid 到 100.70 的新场景中，用户能独立指出可能被更有信息优势的买方打中，fill 可能来自 toxic flow，应降低挂单尺寸、扩大 spread、暂停信号或要求额外确认。
- 暴露出的错误或信息缺口：用户仍会使用“吸筹”等叙事词，需要继续改成 microstructure 语言；方向词需要更精确，limit sell 100 后 mid 到 100.70 是上涨，不是下跌。
- 纠正后的核心理解：VWAP 是 volume-weighted average execution price，不是 best ask 或 last price。Adverse selection 的核心是成交后价格快速朝自己不利方向移动，说明成交可能筛选出了更有信息优势的对手方。
- 深度理解与因果：limit order 提供流动性，但被谁打中不是随机的；当 informed/aggressive trader 选择与你成交，可能是因为当前价格对他更有利。成交后 mid/mark 的方向性移动是判断 fill 质量的重要证据。
- 边界、反例或证伪：fill rate 高不等于策略好；如果 fill 后持续 adverse movement，系统不能把成交当成功，应把它当成风险信号。提示后复述不能当独立掌握证据。
- 陌生迁移：用户能把 buy 场景迁移到 sell 场景：limit sell 100 成交后 mid 到 100.70，说明卖方可能卖早/卖便宜，被 informed buyer 打中。
- 新视角：交易系统应跟踪 post-fill markout，而不是只看是否成交。成交本身可能是负面信息。
- ROI 或经济联系：避免把高成交率误认为高收益；通过降低挂单尺寸、扩大 spread、取消/重定价旧挂单、暂停信号或增加确认条件，减少被 toxic flow 系统性收割。
- 突破能力证据：用户完成了一个方向相反的新场景迁移，虽然有方向词错误，但机制判断正确。
- 本次有证据的评分：VWAP recall 4/5；limit buy 模板复述 3/5；limit sell independent transfer 4/5；Q-FIN D004 overall validated。
- 教学中有效的方法：明确区分提示后复述与独立迁移；用 buy/sell 对称场景检验是否真正理解 adverse selection。
- 用户不满意的地方：此前需要用户提醒保存同步；本轮按用户明确命令保存并同步 Notion。
- 下次需要调整的教学方式：继续使用具体成交后 mid/mark 移动场景；禁止用“吸筹/洗盘”等叙事词替代 order book、toxic flow、post-fill adverse movement。
- 需要复习：VWAP vs last price vs best ask；adverse selection；toxic flow；post-fill markout；passive order risk。
- 下次继续：默认 balanced route 进入 `PHYS / quant-ph` D004 Measurement / repeated shots / observable；如果用户指定 Q-FIN focus mode，则进入 `q-fin.TR` D005 Toxic flow / spread compensation。

## 2026-06-22 20:44 AEST｜AI Workflow Operating System｜D04-D06｜约 35 分钟

- 学习内容：D04 Action Gate / Stop Condition；D05 State Machine / Workflow State；D06 Evaluation / Evals 开始。重点围绕 no-human-interference trading agent、Codex 工作流、状态机防越级、eval 防主观自信。
- 学习行为：回忆 / 深化 / 迁移 / ROI / 结束学习并保存
- 用户反馈前的关键理解或回答：用户独立回答 live trading agent 的关键 gate：是否做过 shadow trading、足够模型验证和数据研究、明确止损和停止条件。用户追问为什么 spread/liquidity 不是 Risk Gate 而是 Execution/Market Gate，并回答动作应为“不下单”。用户回答 `killed` 是 state machine 中的 final/强停止状态；`blocked_missing_permission` 时应先说明缺什么权限并停止；测试 Agent 可靠性应看测试结果通过百分比率。
- 暴露出的错误或信息缺口：用户最初把上线前 gate、运行中 risk gate、kill switch 放在同一层；需要区分 Research Gate、Execution/Market Gate、Risk/Kill Gate。`blocked` 被理解成 final stage，需要修正为当前路径停止状态，不等于永远结束。D06 eval 还没有完成 critical-failure 场景判断。
- 纠正后的核心理解：Action Gate 不是人工确认，而是自动硬规则；no human interference 不是 no gate，而是 gate 由代码、配置、risk engine、state machine 自动执行。State Machine 决定当前允许动作；Action Gate 判断当前动作能否通过；Stop Condition 决定失败后进入 paused/killed/blocked；Eval 用固定任务集和 pass/fail 规则验证 agent 是否真的变强。
- 深度理解与因果：spread/liquidity 扩大首先是 Execution/Market Gate 问题，因为它描述当前订单能否以合理成本成交；只有系统性异常、长期异常、连续异常或数据源/broker 失控时才升级为 Kill Switch。`killed` 或 `blocked` 状态不能被一句自然语言“继续”跳过，必须走 review/re-arm/revalidate。
- 边界、反例或证伪：shadow trading 通过不代表每一笔 live 订单都可执行；模型信号强不代表 execution 条件合格；pass rate 高也不一定可上线，如果失败项是权限不足仍继续执行、越权交易、风险失控等 critical failure。
- 陌生迁移：Codex 修改 GitHub 的状态机可类比为 planning -> context_loaded -> contract_ready -> editing -> validating -> pr_ready -> merged；blocked_missing_permission 后必须先说明缺失权限并停止，权限恢复后回到合适前置状态重新验证，不能直接跳回 editing 或 merged。
- 新视角：强 Agent 的自动化边界不是“人要不要确认”，而是“哪些状态允许哪些动作，哪些 gate 可以机器检查，哪些 failure 必须强停止”。Eval 的作用是把 agent 改进从感觉变好变成可重复测量。
- ROI 或经济联系：对 trading agent，Research Gate 减少伪策略上线成本；Execution Gate 防止信号利润被 spread/slippage 吃掉；Risk/Kill Gate 防止一次尾部事件摧毁账户；Eval 防止把自然语言自信误认为系统可靠性。
- 突破能力证据：用户能够指出 live trading 需要 shadow trading、模型验证、止损/停止条件；能主动追问 gate 归因边界；能把 `blocked_missing_permission` 迁移到 Codex 权限场景；能识别可靠性应看测试通过率而不是自信。
- 本次有证据的评分：D04 Action Gate：4/5；D05 State Machine：4/5；D06 Eval：2/5，已启动但 critical-failure 判断未完成；教学质量：较 D03 已按用户要求转向现实可用版。
- 教学中有效的方法：先解释现实系统如何自动执行 gate，再给机制；用 trading agent 与 Codex GitHub 修改互相迁移；避免长 prompt 模板。
- 用户不满意的地方：此前未及时同步；D03 曾过于理论。本轮结束按用户明确要求保存。
- 下次需要调整的教学方式：下次继续 D06 时不要讲长理论，直接用 critical failure case 压实：10 个任务过 8 个，但失败 2 个是越权/权限不足仍继续时，不能按 80% 可靠处理，而是 critical blocker。
- 需要复习：Research Gate vs Execution/Market Gate vs Risk/Kill Gate；killed vs blocked；state transition 不可跳级；eval pass rate 与 critical failure 的区别。
- 下次继续：D06 Evaluation / Evals。继续问题：如果 Agent 在 10 个测试任务里通过 8 个，但失败的 2 个都是“权限不足时仍然继续执行”，这是 80% 可靠，还是严重不可上线缺陷？为什么？

## 2026-06-22｜arXiv Top1 Program｜MATH D003 + Q-FIN D004 前置门｜约 35 分钟

- 学习内容：MATH / `math.PR` D003：Distribution、variance、tail risk；Q-FIN / `q-fin.TR` D004 前置 LOB walk / VWAP 计算门。
- 学习行为：回忆 / 深化 / 迁移 / ROI / 产出
- 用户反馈前的关键理解或回答：用户指出 `P(E|A)` 与 `P(A|E)` 方向不同，但未完整计算 base rate 与 false positive 分母；随后指出信号风险包括尾部风险、交易摩擦、时间成本等；在 A/B 策略比较中选择 B，因为方差小、尾部风险小、亏损小、收益更好。
- 暴露出的错误或信息缺口：base-rate arithmetic 仍需压实，尤其是低 base rate 下 false positive 绝对数量会淹没 true positive；用户还提醒 Codex 没有主动保存同步，暴露 workflow 执行缺口。
- 纠正后的核心理解：`P(A|E)=P(E|A)P(A)/P(E)`；本例 `P(A|E)≈9.17%` 而非 90%。posterior 不能直接授予行动许可，必须进入 `distribution + EV + variance + tail risk + cost + liquidity + rollback` action gate。
- 深度理解与因果：低 base rate 让高 `P(E|A)` 信号仍可能产生大量假阳性；variance 和 tail risk 决定结果是否稳定、能否承受连续亏损或极端亏损。
- 边界、反例或证伪：教学例子中原称 A/B 策略 EV 差不多，但实际 A EV=0、B EV=0.65；已纠正，不能把错误数字当成概念证据。
- 陌生迁移：Q-FIN LOB gate 中用户正确计算 market buy 100 的 fill levels、last price 和 VWAP：100.00 成交 50、100.10 成交 30、100.30 成交 20、last price 100.30、VWAP 100.09。
- 新视角：VWAP 是成交量加权后的真实平均执行价格，不是屏幕报价；它把 order book depth 变成真实成本证据。
- ROI 或经济联系：策略行动前必须把 posterior、分布、成本、滑点、尾部亏损和执行质量放入同一 gate；否则高信号触发频率可能只是高成本噪音机器。
- 突破能力证据：用户主动指出保存同步缺口，并完成 Q-FIN 计算门，说明学习要求从概念识别推进到执行证据和 workflow 闭环。
- 本次有证据的评分：MATH D003 base-rate gate 3/5；distribution/variance/tail risk 4/5；Q-FIN LOB/VWAP gate 5/5。
- 教学中有效的方法：用 10,000 次机会拆出 false positive 数量；用 A/B payoff distribution 迫使用户不只看胜率；用 order book walk 连接价格形成和执行成本。
- 用户不满意的地方：Codex 没有在用户期望时主动保存同步。
- 下次需要调整的教学方式：当用户说“下一步”且上一课已通过时，先询问/执行保存同步，或明确说明是否暂不写入；不要直接进入新题导致记录断档。
- 需要复习：base rate denominator、false positive count、posterior vs action gate、distribution shape、VWAP / slippage。
- 下次继续：`Q-FIN / q-fin.TR` D004 Adverse Selection：为什么“你成交了”有时反而是坏消息。

## 2026-06-22｜AI Workflow Operating System｜D03-D04｜约 30 分钟

- 学习内容：D03 Output Contract / Schema；D04 Action Gate / Stop Condition。重点从“输出格式理论”纠偏为“把验收、证据、停止条件沉淀进 AGENTS.md / skill / workflow，让用户只用短触发词”。
- 学习行为：回忆 / 深化 / 迁移 / ROI / 教学纠偏
- 用户反馈前的关键理解或回答：用户独立回答：context 以最新输入为主并排除冲突历史；output 应限制交付方式、验收标准、停止条件。对 GitHub 修改任务，用户列出修改文件、diff、code review/PR/CI log、验收标准、测试结果。对 D04，用户回答 Agent 不能只因理解目标就执行，因为会跑偏、忘记 baseline/context、幻觉。
- 暴露出的错误或信息缺口：我把 Output Contract 讲成用户需要每次输入和记住的长 prompt，脱离用户的高 ROI 目标；没有及时同步学习记录，违背用户对 agent 主动闭环的预期。用户明确给教学质量评分 0。
- 纠正后的核心理解：Output Contract 不应该增加用户输入负担，而应内置到仓库规则、skill、workflow 和最终交付格式中。用户只需使用短触发词，例如“给我可验收结果”或“按 Output Contract 重做”。
- 深度理解与因果：强 Agent 不是靠用户每次讲清楚，而是把高频约束系统化。Context Contract 控制依据什么行动；Output Contract 控制交付结果如何验收；Action Gate 控制行动前必须通过哪些硬条件；Stop Condition 控制没通过时必须停止而不是硬编。
- 边界、反例或证伪：没有 changed_files、validation、evidence 的 completed 应判定为 unvalidated。仅有“通过字样”不是证据；证据必须是 diff、PR、commit、CI/test output、artifact、文件路径或逐条验收项。
- 陌生迁移：GitHub 修改任务可验收证据包括真实修改文件、diff summary、PR/commit、验证结果、未触碰禁止范围。学习任务可验收证据应包括用户原始回答、纠正前缺口、纠正后能否迁移，而不是 AI 代答。
- 新视角：Output Contract 的 ROI 不在模板本身，而在减少用户反复追问“你到底做了什么、有没有证据、有没有越界”的成本。
- ROI 或经济联系：低 ROI 是让用户每次复制长 prompt；高 ROI 是把输出合约写进 `AGENTS.md` 和项目规则，让 agent 默认输出可验收结果，并在缺证据时标记 `unvalidated` 或 `blocked`。
- 突破能力证据：用户直接指出教学不现实并给 0 分，推动 D03 从理论模板改为可操作的系统内置规则；用户能识别无 diff/artifacts 的任务不能算完成。
- 本次有证据的评分：Output Contract 概念识别：部分掌握；Action Gate：刚开始，未评估；教学质量：用户评分 0/10；同步闭环：本记录已补救。
- 教学中有效的方法：把概念压缩成短触发词和判定规则；用 GitHub 修改任务作为实际验收场景。
- 用户不满意的地方：讲解过于理论、不可现实复用；没有及时同步更新。
- 下次需要调整的教学方式：先给现实可用版，再讲机制；每个概念必须回答“用户以后如何用一句短命令触发”；不要给用户增加记忆负担。
- 需要复习：Output Contract = 可验收结果；completed without evidence = unvalidated；Action Gate = 行动前硬条件；Stop Condition = 自动停止规则。
- 下次继续：D04 Action Gate / Stop Condition。继续回答 live trading agent 最重要的 3 个自动 Action Gate，但必须从用户目标 no human interference 出发，强调“自动化不是无规则，而是规则自动执行”。

## 2026-06-22｜AI Workflow Operating System｜D02｜约 25 分钟

- 学习内容：Context Contract and Context Budget；如何让 Codex 用最小上下文保持目标、边界、验收和证据，不被旧聊天、旧报告、大目录或模糊记忆带偏。
- 学习行为：新内容 / 回忆 / 深化 / 迁移 / 产出 / ROI
- 用户反馈前的关键理解或回答：D01 结论是 Agent 不可信，必须在 loop 边界自证。D02 将问题推进到“自证时到底应该加载哪些上下文”。
- 暴露出的错误或信息缺口：过去容易把“多给背景”误认为上下文质量；实际上过量上下文会增加 token 成本、漂移和旧事实污染。
- 纠正后的核心理解：Context Contract 不是更多背景，而是一个权威排序的最小上下文预算：必须加载什么、默认排除什么、冲突时信谁、行动前如何证明用过。
- 深度理解与因果：上下文最小单位不是完整聊天历史，而是带 source、authority、freshness、purpose、evidence、exclusion rule 的 context item。
- 边界、反例或证伪：如果 agent 只说“我检查了上下文”但不给 `context_used` 表、路径、时间和用途，就不能算完成上下文验证。
- 陌生迁移：复杂开发任务启动前可要求 Codex 自行生成 `context_used`，列出加载与排除内容；旧聊天和记忆只做 routing context，不能直接当完成证据。
- 新视角：Context budget 是防跑偏的成本控制层；不是给 agent 更多记忆，而是限制其可引用的权威来源。
- ROI 或经济联系：低 ROI 做法是全量贴历史/全仓扫描；高 ROI 做法是固定启动上下文槽位：当前目标、AGENTS.md、HANDOFF/state、验收文件、最新证据。
- 突破能力证据：用户连续追问学习是否完成、是否同步、是否推进下一步，暴露并修正了 Study Project workflow 的执行漏洞。
- 本次有证据的评分：理解深度 7.5/10；教学流程 6/10；同步闭环较 D01 改善。
- 教学中有效的方法：用 D01 失败作为 active recall；直接产出 Context Contract v1，而不是继续抽象争论。
- 用户不满意的地方：此前需要用户推动太多，本轮必须持续改进为 Codex 主动推进。
- 下次需要调整的教学方式：开始时直接给当前 Day、上一课一句话冷回忆、本课唯一核心问题和本轮结束同步计划。
- 需要复习：context authority ladder、context_used、excluded context、stale context conflict stop。
- 下次继续：D03 Output Contracts and Schemas；重点是如何防止输出松散、不可验收、不可机器检查。

## 2026-06-22｜AI Workflow Operating System｜D01｜约 60 分钟

- 学习内容：Prompt Engineering 与 Loop Engineering 的真实失败模式；如何降低 Codex 跑偏、幻觉、忘记 baseline 的成本。
- 学习行为：新内容 / 回忆 / 深化 / 迁移 / ROI / 突破训练
- 用户反馈前的关键理解或回答：用户指出复杂任务中 Codex 会随上下文增加而跑偏、忘记初始 baseline、部分理解后输出不可控。
- 暴露出的错误或信息缺口：教学一度错误地把控制成本转嫁给用户，建议手写长 prompt；随后又从教学跑偏到 skill 修改，并过早声称学习完成。
- 纠正后的核心理解：Prompt Engineering 不是让用户写更长 prompt，而是减少误解；Loop Engineering 不是信任 agent 守规则，而是让 agent 在低成本循环中自证目标、边界、验收、停止条件和证据。
- 深度理解与因果：规则文件、skill、HANDOFF/state 都会被 agent 忽略或误读；因此可靠性不能只依赖“规则存在”，必须依赖启动前检查、动手前合同、结束前证据闭环、跑偏后的快速回拉。
- 边界、反例或证伪：本次 Codex 自身多次跑偏，证明“只要写好规则 agent 就会遵守”不成立。
- 陌生迁移：将 loop 思维迁移到所有复杂软件开发任务：用户只表达目标，Codex 自己读取 `AGENTS.md`、`HANDOFF.md/state`、Task Pack、验收文件并生成执行合同。
- 新视角：Agent 不可信不是失败结论，而是系统设计前提；Loop Engineering 的目标是让错误早暴露、低损失、可回滚。
- ROI 或经济联系：低 ROI 做法是让用户反复写长 prompt 和纠偏；高 ROI 做法是把重复控制逻辑沉淀到 workflow、项目规则和证据层，让用户只用短语触发或打断。
- 突破能力证据：用户主动挑战“学习是否真的完成”“是否同步 GitHub/Notion”“其他学习项目是否被忽略”，推动学习从抽象概念落到项目记录和验收闭环。
- 本次有证据的评分：理解深度 7/10；教学质量 4/10；用户满意度低；纠偏价值高。
- 教学中有效的方法：承认反例、把 Codex 自身失败作为案例、从“长 prompt”转向“低成本检测点和自证 loop”。
- 用户不满意的地方：回答跑偏、过早收束、没有主动推进 GitHub/Notion 同步、反复让用户纠偏。
- 下次需要调整的教学方式：先恢复项目状态和 Day 编号；每轮只讲一个核心问题；主动完成学习记录与同步；避免把执行方案设计替代概念教学。
- 需要复习：Prompt Contract、Loop Failure Detection、agent 自证边界、Study Project 完成标准。
- 下次继续：D02 Context Contract and context budget；重点回答“哪些上下文必须加载、哪些必须排除、如何验证 Codex 真的用了正确上下文”。

## 日期时间｜项目｜估计学习时长

- 学习内容：
- 学习行为：新内容 / 回忆 / 深化 / 迁移 / 产出 / ROI / 突破训练
- 用户反馈前的关键理解或回答：
- 暴露出的错误或信息缺口：
- 纠正后的核心理解：
- 深度理解与因果：
- 边界、反例或证伪：
- 陌生迁移：
- 新视角：
- ROI 或经济联系：
- 突破能力证据：
- 本次有证据的评分：
- 教学中有效的方法：
- 用户不满意的地方：
- 下次需要调整的教学方式：
- 需要复习：
- 下次继续: