# Industrial AI SaaS Builder - 34-Day Study Plan

Start: 2026-06-15
End: 2026-07-18
Timezone: Australia/Sydney
Daily default: 45-90 minutes
Last revised: 2026-06-14 after external reviewer handshake

## Learning Policy

This project is not a generic AI course and not a premature build sprint. The goal is Top 1% practical judgment for building an Industrial AI SaaS: concept mastery, ROI reasoning, workflow diagnosis, failure-mode awareness, and decision-quality output.

## Daily Protocol

| Step | Action |
|---|---|
| 1 | State progress, e.g. `第1/34天`. |
| 2 | Active recall from yesterday or baseline recall on D01. |
| 3 | Teach one core concept deeply: what it is, mechanism, boundary, failure mode, and usage. |
| 4 | Translate the concept into an industrial SaaS decision rule. |
| 5 | Produce one reusable judgment asset, not just notes. |
| 6 | Score recall, concept depth, output, and ROI from 1-5. |
| 7 | Sync daily learning log to GitHub and concise notes to Notion when running in the main workflow. |
| 8 | End with tomorrow's lesson and expected output. |

## W1 Principle

Week 1 is `RAG judgment + Industrial SaaS ROI`, not `build a RAG demo`.

The key question is:

> When, why, and how should RAG be used to create a valuable, auditable industrial SaaS workflow?

## D1-D34 Route

| Day | Date | Theme | Core concept | Required output |
|---:|---|---|---|---|
| D01 | 2026-06-15 | Why Industrial AI SaaS starts with RAG judgment | RAG is evidence retrieval before generation; the real skill is deciding when RAG creates workflow ROI and when it is the wrong tool | RAG opportunity scorecard + RAG vs model memory vs fine-tuning vs workflow automation vs agent decision matrix |
| D02 | 2026-06-16 | RAG pipeline as a failure surface | Parsing, chunking, embedding, vector DB, retrieval, reranking, generation, citation, and eval are separate failure points | RAG pipeline architecture diagram + tradeoff table |
| D03 | 2026-06-17 | RAG evaluation and trust boundary | Retrieval recall, precision, groundedness, citation support, stale evidence, hallucinated citation, business-valid eval | RAG eval rubric + 20-question eval set |
| D04 | 2026-06-18 | Industrial SaaS workflow ROI | Customer workflow, information bottleneck, decision bottleneck, failure cost, evidence need, audit trail, willingness to pay | Industrial SaaS workflow ROI map |
| D05 | 2026-06-19 | MVP boundary and kill-list | Must-have workflow value vs demo features; what to build, defer, or kill before MVP | MVP scope kill-list + must-have/defer table |
| D06 | 2026-06-20 | Monetization assumption | Pricing hypothesis, proof-of-value, buyer/user split, adoption friction, support burden | Pricing and monetization assumption table |
| D07 | 2026-06-21 | W1 calibration | RAG + workflow ROI + SaaS judgment synthesis | W01 route calibration + product thesis v0.1 |
| D08 | 2026-06-22 | Industrial value chain | Rotary kiln / manufacturing process as a value chain | Value-chain map |
| D09 | 2026-06-23 | Customer and buyer map | Operator, engineer, plant manager, CFO, vendor, regulator | Buying-center and user-role table |
| D10 | 2026-06-24 | ROI model | Downtime, yield, energy, quality, safety, maintenance | ROI model v0.1 |
| D11 | 2026-06-25 | Competitor/substitute analysis | Spreadsheets, SCADA/MES, consultants, dashboards, internal tools | Competitive alternatives matrix |
| D12 | 2026-06-26 | Data moat and workflow lock-in | Proprietary workflow data, feedback loops, switching costs | Data moat memo |
| D13 | 2026-06-27 | GTM wedge | Beachhead segment, first use case, proof-of-value, sales motion | GTM wedge plan |
| D14 | 2026-06-28 | W2 strategy review | Commercial opportunity quality | Industrial opportunity memo |
| D15 | 2026-06-29 | PRD fundamentals | Problem, user, job-to-be-done, metrics, constraints | PRD v0.1 |
| D16 | 2026-06-30 | System architecture | C4 context/container, data flow, integration points | Architecture diagram in Mermaid |
| D17 | 2026-07-01 | PM execution | User stories, acceptance criteria, release slicing | User story + acceptance pack |
| D18 | 2026-07-02 | Data and security boundary | Source systems, access control, audit log, PII/secrets, permissions | Data/security boundary map |
| D19 | 2026-07-03 | Codex execution | Run contract, task pack, verification commands, handoff | Codex Task Pack v0.1 |
| D20 | 2026-07-04 | Risk register | Technical, data, adoption, compliance, integration, maintenance risks | Risk register + mitigation plan |
| D21 | 2026-07-05 | W3 architecture review | Architecture fit and MVP feasibility | Architecture decision record |
| D22 | 2026-07-06 | AI SWE architecture | LLM app components, orchestration, state, tools, evals | LLM app architecture card |
| D23 | 2026-07-07 | Retrieval quality engineering | Chunk strategy, hybrid search, reranking, query rewriting | Retrieval improvement checklist |
| D24 | 2026-07-08 | Observability | Traces, logs, metrics, eval records, user feedback | Observability plan |
| D25 | 2026-07-09 | Agent workflow boundary | Autonomy levels, tool permissions, fail-closed rules, human gates | Agent boundary map |
| D26 | 2026-07-10 | Deployment and cost | Local vs cloud, latency, model cost, reliability, update path | Deployment tradeoff table |
| D27 | 2026-07-11 | Testing and reliability | Regression tests, eval suite, data quality checks, incident playbook | Reliability checklist |
| D28 | 2026-07-12 | W4 AI SWE review | Engineering readiness | AI SWE readiness review |
| D29 | 2026-07-13 | Integrated thesis | Business + technical + data + execution synthesis | Product thesis v1 |
| D30 | 2026-07-14 | MVP roadmap | Milestones, scope cuts, build order, validation gate | MVP roadmap |
| D31 | 2026-07-15 | Sales/demo narrative | Decision-maker story, operator story, ROI proof | Demo script + sales narrative |
| D32 | 2026-07-16 | Investment memo | Market, pain, solution, moat, execution risk, next capital/time ask | Investment-style memo |
| D33 | 2026-07-17 | Final risk calibration | Strongest case, weakest case, kill criteria | Go/no-go scorecard |
| D34 | 2026-07-18 | Final decision gate | Whether to build MVP, defer, or pivot | Final business + technical decision report |

## W1 Daily Assets

| Day | Reusable judgment asset | Why it matters |
|---|---|---|
| D01 | RAG opportunity scorecard | Decides whether RAG belongs in the workflow. |
| D02 | Pipeline architecture + tradeoff table | Separates components from failure modes. |
| D03 | Eval rubric | Prevents trusting demos or model confidence. |
| D04 | Workflow ROI map | Connects AI output to economic value. |
| D05 | MVP kill-list | Prevents overbuilding and vague scope. |
| D06 | Monetization assumption table | Converts value into pricing and proof-of-value hypotheses. |
| D07 | W1 calibration report | Updates plan based on recall, output, and fit. |

## Defer List For W1

| Defer | Reason |
|---|---|
| Full local vector database implementation | First week is judgment and concepts, not stack setup. |
| SaaS auth, billing, multi-tenant engineering | Too early before workflow value and MVP boundary are clear. |
| Agent orchestration | Can distract from RAG/workflow/eval boundaries. |
| Prompt tricks | Low leverage compared with evidence, eval, and workflow ROI. |
| Full business plan | D06 stays hypothesis-level; formal memo comes later. |

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
| RAG opportunity scorecard | Scores at least 3 industrial workflow scenarios by evidence need, source availability, failure cost, update frequency, auditability, and ROI. |
| Decision matrix | Distinguishes RAG, model memory, fine-tuning, workflow automation, and agent by use case and failure mode. |
| Concept clarity | Can explain why RAG is not model memory and why citations alone do not prove correctness. |
| Usage clarity | Can explain when RAG is useful and when SQL, rules, workflow automation, simulation, or fine-tuning is more appropriate. |
| ROI | Can name one industrial workflow where RAG could reduce search, training, troubleshooting, or decision explanation time, plus how to verify that reduction. |
