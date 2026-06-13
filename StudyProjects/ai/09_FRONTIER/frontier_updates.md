# AI Frontier Updates

Generated: 2026-06-13
Last live refresh: 2026-06-13

## Initial Source Set

The first source set is intentionally official/primary-source heavy:

- OpenAI Agents SDK docs.
- OpenAI Agents SDK Python docs.
- Anthropic Claude tool use docs.
- Anthropic Building Effective Agents research note.
- Google Gemini function calling docs.
- Model Context Protocol docs and specification.

## D01 Live Source Notes

For D01, use sources only to anchor stable concepts, not to chase model rankings.

| Source | Stable takeaway for this project |
|---|---|
| OpenAI Agents SDK docs | Agents involve planning, tool calls, specialist collaboration, state, and multi-step work; use SDK-style orchestration when the app owns tools, approvals, and state. |
| Anthropic Building Effective Agents | Separate predictable workflows from more dynamic agents; do not overuse agentic complexity when a simpler workflow is enough. |
| MCP docs | MCP is a cross-client protocol for connecting AI apps to tools/data; useful when learning reusable integrations. |
| Gemini function calling docs | Tool/function calling can be single, parallel, sequential/compositional, or automatic depending on SDK and model support. |

## Weekly Update Policy

Each weekly review should refresh frontier sources only if they affect practical learning decisions.

Refresh triggers:

- Model/API/tool behavior changed.
- Agent framework changed.
- MCP spec or security guidance changed.
- A project output depends on current API behavior.
- The user asks for latest tools, models, pricing, or docs.

## Current Study Interpretation

For W01, do not chase model rankings or every product release. Focus on stable concepts:

```text
LLM behavior -> context/tool use -> agent loop -> automation workflow -> eval and approval
```

## Evidence Boundary

Any claim about latest model capabilities, pricing, API behavior, product availability, or benchmark leadership must be verified live before use.
