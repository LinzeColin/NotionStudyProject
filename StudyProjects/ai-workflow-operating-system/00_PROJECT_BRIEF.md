# AI Workflow Operating System

Project slug: `ai-workflow-operating-system`
Timezone: Australia/Sydney
Planned start date: 2026-06-22
Planned end date: 2026-07-19
Duration: 28 days
Status: active / D01 completed

## Goal

Build the user's AI workflow operating system: prompt contracts, loop engineering, Codex execution, Notion/GitHub knowledge memory, Mermaid architecture expression, software-development workflow discipline, and agent tool workflows that can use local/API/remote models safely.

This project consolidates:

| Source | Absorbed scope |
|---|---|
| `prompt-engineering-loop-engineering` | prompt contract, context contract, output contract, loop contract, evals, traces, failure taxonomy |
| `ai` | prompt/context engineering, tool use, function calling, MCP, agent architecture, automation, evals/reliability |
| Levnovo/Lenovo Notion plan | Notion workspace structure, knowledge database usage, clean notebook + GitHub memory boundary |
| Codex workflow | run contracts, task packs, handoff, verification, low-context execution |
| Mermaid | architecture diagrams, flowcharts, sequence diagrams, ER/data models |
| Software development workflow | issue -> spec -> implementation -> test -> review -> package -> handoff |
| Local/remote AI tools | Treat local LLMs, remote GPU endpoints, RAG systems, multimodal models, and data-analysis scripts as tools inside agent workflows. |

## 2026-06-22 Early Start Note

The project was originally queued for 2026-07-19. The user explicitly pulled Prompt Engineering / Loop Engineering learning forward on 2026-06-22. Per the no-D000 acceleration rule, 2026-06-22 is D01, not D0, and the 28-day route now runs through 2026-07-19.

## 2026-06-14 Scope Integration Boundary

User authorized integrating the new infrastructure topics into existing projects. For this project, they enter only as workflow/tool orchestration concepts, not as infrastructure implementation.

| Topic | AI Workflow OS treatment |
|---|---|
| Local/remote models | How agents select and call the right model endpoint under a tool contract. |
| RAG / knowledge base | How RAG becomes a tool with input schema, retrieval evals, source boundaries, and trace logging. |
| Multimodal models | How image/document/vision capabilities become bounded tools in a workflow. |
| Local data analysis | How agents call scripts/notebooks/databases and validate outputs. |
| Training systems | Future backlog only; not part of current OS unless opened as a separate project. |

## Success Criteria

| Capability | Target |
|---|---|
| Prompt contract | Can turn vague intent into objective, context, constraints, output schema, and acceptance criteria. |
| Loop engineering | Can design observe -> plan -> act -> validate -> reflect workflows. |
| Eval discipline | Can define datasets, rubrics, graders, failure labels, and improvement loops. |
| Tool contract | Can define inputs, outputs, permissions, limits, logging, and failure modes for each tool. |
| Codex leverage | Can use Codex through compact execution contracts and task packs. |
| Notion/GitHub OS | Keeps Notion clean and GitHub recoverable for future agents. |
| Mermaid expression | Can express systems quickly with diagrams that support decisions. |
| Model/tool routing | Can choose API, local model, remote GPU, RAG, multimodal, or deterministic code as the right tool. |

## Relationship To Other Projects

- Originally planned to start after `Industrial AI SaaS Builder`, but explicitly pulled forward by the user on 2026-06-22.
- Supports every future Study Project by improving the user's agent/Codex operating leverage.
- Does not replace `industrial-ai-saas-builder`; it is the operating system behind future execution.
- Does not implement remote GPU/local model infrastructure directly; it teaches how agents should call those capabilities safely after Local AI Infrastructure defines them.
