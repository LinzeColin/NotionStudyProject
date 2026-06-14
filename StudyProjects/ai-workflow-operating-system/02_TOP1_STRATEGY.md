# Top 1% Strategy - AI Workflow Operating System

## Realistic Top 1% Definition

The target is not writing clever prompts. The target is Top 1% personal AI operating leverage:

> Turn goals into bounded agent workflows with clear contracts, tool use, state, evals, logs, handoffs, and recovery paths.

## Ability Definition

| Ability | Top 1% behavior |
|---|---|
| Prompt contract | Defines objective, context, constraints, output schema, acceptance criteria, and stop conditions. |
| Context contract | Controls what enters the model and what is pruned, summarized, or retrieved. |
| Tool contract | Gives every tool a schema, permission boundary, logging rule, and failure behavior. |
| Loop engineering | Designs observe -> plan -> act -> validate -> reflect loops without unbounded autonomy. |
| Eval discipline | Creates test cases, rubrics, trace reviews, and improvement loops. |
| Memory discipline | Separates short context, durable GitHub state, clean Notion notes, and RAG sources. |
| Agent routing | Chooses deterministic code, API model, local model, remote GPU, RAG, multimodal model, or human review based on task risk and ROI. |
| Codex leverage | Uses Codex through execution contracts, task packs, verification, and handoffs. |

## High-Leverage Concepts

| # | Concept | Why it matters |
|---:|---|---|
| 1 | Prompt contract | Prevents vague intent from creating vague output. |
| 2 | Context budget | Reduces token waste and context pollution. |
| 3 | Output schema | Makes results machine-checkable. |
| 4 | Loop contract | Turns a chat into a controlled workflow. |
| 5 | Tool schema | Defines how agents call external capabilities. |
| 6 | Tool permission | Prevents overreach and unsafe actions. |
| 7 | MCP/function calling | Standardizes tool access. |
| 8 | RAG as tool | Makes retrieval bounded, logged, and evaluated. |
| 9 | Local/remote model routing | Uses the right runtime instead of defaulting to one model. |
| 10 | Multimodal tool routing | Adds image/document capabilities without scope explosion. |
| 11 | Data-analysis tools | Lets agents call scripts/databases while validating outputs. |
| 12 | Eval set | Measures reliability instead of trusting model confidence. |
| 13 | Trace review | Finds failure points in agent behavior. |
| 14 | State model | Keeps workflows resumable and auditable. |
| 15 | Memory boundary | Prevents Notion/GitHub/RAG/context pollution. |
| 16 | Fail-closed | Stops unsafe or low-evidence actions. |
| 17 | Autonomy level | Separates suggestion, draft, queued action, and execution. |
| 18 | Handoff | Enables future agents to resume accurately. |
| 19 | Mermaid diagrams | Makes workflows visible and reviewable. |
| 20 | Packaging | Turns workflows into reusable systems. |

## Defer List

| Defer | Reason |
|---|---|
| Fully autonomous high-risk execution | Requires hard boundaries, evals, logs, and recovery first. |
| Training large models | Belongs to future GPU ML Systems route if explicitly opened. |
| Tool sprawl | More tools without contracts increases failure modes. |
| Overbuilding Notion | Notion remains notebook; GitHub remains durable state. |
| Agent demos without evals | Low ROI and unreliable. |

## Required Outputs

| Output | Purpose |
|---|---|
| Prompt Contract v1 | Reusable structure for every Codex/agent task. |
| Tool permission table | Controls what agents can and cannot do. |
| RAG-as-tool contract | Defines retrieval input/output, source boundaries, evals, and traces. |
| Local/API/remote model routing rule | Prevents defaulting to a single runtime. |
| Multimodal workflow contract | Defines when image/document tools belong in an agent flow. |
| Eval runner spec | Converts quality into testable cases. |
| Sync contract | Keeps Notion clean and GitHub recoverable. |
| AI Workflow OS playbook | Final operating manual for future projects. |
