# Industrial AI SaaS Builder - 34-Day Study Plan

Start: 2026-06-15
End: 2026-07-18
Timezone: Australia/Sydney
Daily default: 45-90 minutes

## Daily Protocol

| Step | Action |
|---|---|
| 1 | State progress, e.g. `第1/34天`. |
| 2 | Active recall from yesterday or baseline recall on D01. |
| 3 | Teach one core concept deeply: what it is, mechanism, boundary, failure mode, and usage. |
| 4 | Produce one artifact. |
| 5 | Score recall, concept depth, output, and ROI from 1-5. |
| 6 | Sync daily learning log to GitHub when running in the main workflow. |
| 7 | End with tomorrow's lesson and expected output. |

## D1-D34 Route

| Day | Date | Theme | Core concept | Required output |
|---:|---|---|---|---|
| D01 | 2026-06-15 | Local vectorized RAG | RAG is evidence retrieval before generation, not model memory | RAG concept card + failure-mode table |
| D02 | 2026-06-16 | Local RAG pipeline | document parsing, chunking, embedding, vector DB, retrieval, generation | Local RAG task tree + minimal pipeline spec |
| D03 | 2026-06-17 | RAG evaluation | recall, precision, groundedness, citation quality, hallucination diagnosis | 20-question eval set + scoring table |
| D04 | 2026-06-18 | SaaS mental model | ICP, painkiller vs vitamin, workflow wedge, retention | Industrial AI SaaS one-pager |
| D05 | 2026-06-19 | MVP boundary | user workflow, core job, data model, permissions, must-have vs defer | MVP spec v0.1 |
| D06 | 2026-06-20 | SaaS monetization | pricing hypothesis, packaging, onboarding, expansion, support burden | Commercial hypothesis table |
| D07 | 2026-06-21 | W1 calibration | RAG + SaaS synthesis | W01 review + product thesis v0.1 |
| D08 | 2026-06-22 | Industrial value chain | rotary kiln / manufacturing process as a value chain | Value-chain map |
| D09 | 2026-06-23 | Customer and buyer map | operator, engineer, plant manager, CFO, vendor, regulator | Buying-center and user-role table |
| D10 | 2026-06-24 | ROI model | downtime, yield, energy, quality, safety, maintenance | ROI model v0.1 |
| D11 | 2026-06-25 | Competitor/substitute analysis | spreadsheets, SCADA/MES, consultants, dashboards, internal tools | Competitive alternatives matrix |
| D12 | 2026-06-26 | Data moat and workflow lock-in | proprietary workflow data, feedback loops, switching costs | Data moat memo |
| D13 | 2026-06-27 | GTM wedge | beachhead segment, first use case, proof-of-value, sales motion | GTM wedge plan |
| D14 | 2026-06-28 | W2 strategy review | commercial opportunity quality | Industrial opportunity memo |
| D15 | 2026-06-29 | PRD fundamentals | problem, user, job-to-be-done, metrics, constraints | PRD v0.1 |
| D16 | 2026-06-30 | System architecture | C4 context/container, data flow, integration points | Architecture diagram in Mermaid |
| D17 | 2026-07-01 | PM execution | user stories, acceptance criteria, release slicing | User story + acceptance pack |
| D18 | 2026-07-02 | Data and security boundary | source systems, access control, audit log, PII/secrets, permissions | Data/security boundary map |
| D19 | 2026-07-03 | Codex execution | run contract, task pack, verification commands, handoff | Codex Task Pack v0.1 |
| D20 | 2026-07-04 | Risk register | technical, data, adoption, compliance, integration, maintenance risks | Risk register + mitigation plan |
| D21 | 2026-07-05 | W3 architecture review | architecture fit and MVP feasibility | Architecture decision record |
| D22 | 2026-07-06 | AI SWE architecture | LLM app components, orchestration, state, tools, evals | LLM app architecture card |
| D23 | 2026-07-07 | Retrieval quality engineering | chunk strategy, hybrid search, reranking, query rewriting | Retrieval improvement checklist |
| D24 | 2026-07-08 | Observability | traces, logs, metrics, eval records, user feedback | Observability plan |
| D25 | 2026-07-09 | Agent workflow boundary | autonomy levels, tool permissions, fail-closed rules, human gates | Agent boundary map |
| D26 | 2026-07-10 | Deployment and cost | local vs cloud, latency, model cost, reliability, update path | Deployment tradeoff table |
| D27 | 2026-07-11 | Testing and reliability | regression tests, eval suite, data quality checks, incident playbook | Reliability checklist |
| D28 | 2026-07-12 | W4 AI SWE review | engineering readiness | AI SWE readiness review |
| D29 | 2026-07-13 | Integrated thesis | business + technical + data + execution synthesis | Product thesis v1 |
| D30 | 2026-07-14 | MVP roadmap | milestones, scope cuts, build order, validation gate | MVP roadmap |
| D31 | 2026-07-15 | Sales/demo narrative | decision-maker story, operator story, ROI proof | Demo script + sales narrative |
| D32 | 2026-07-16 | Investment memo | market, pain, solution, moat, execution risk, next capital/time ask | Investment-style memo |
| D33 | 2026-07-17 | Final risk calibration | strongest case, weakest case, kill criteria | Go/no-go scorecard |
| D34 | 2026-07-18 | Final decision gate | whether to build MVP, defer, or pivot | Final business + technical decision report |

## Scoring

| Metric | 1 | 3 | 5 |
|---|---|---|---|
| Recall | Cannot explain | Partial explanation | Clear explanation with example and boundary |
| Concept depth | Recognizes terms | Understands mechanism | Can teach, use, and diagnose failure modes |
| Output | No artifact | Partial artifact | Reusable artifact that supports a real decision |
| ROI | Vague value | Plausible use case | Clear payoff, next action, and verification method |

## Day 1 Acceptance Criteria

| Output | Minimum standard |
|---|---|
| RAG concept card | Defines embedding, chunk, vector database, retrieval, context, grounding. |
| Failure-mode table | At least 6 failure modes: bad chunks, weak embeddings, poor retrieval, stale source, unsupported answer, missing citation. |
| Usage clarity | Can explain when RAG is useful and when it is the wrong tool. |
| ROI | Can name one industrial workflow where RAG could reduce search, training, troubleshooting, or decision time.