# Local AI Infrastructure

Project slug: `local-ai-infrastructure`  
Timezone: Australia/Sydney  
Planned start date: 2026-07-19  
Planned end date: 2026-08-15  
Duration: 28 days  
Status: scheduled parallel from 2026-07-19

## Schedule Decision

This project was moved forward on 2026-06-14 so every non-arXiv Study Project can finish no later than 2026-08-15.

It runs in controlled parallel with `ai-workflow-operating-system` because the two projects reinforce each other: AI Workflow OS teaches orchestration, Codex, Notion, prompt/loop, and software workflow; Local AI Infrastructure teaches the local runtime, RAG, deployment, NPU/CNN, and simulator infrastructure underneath that workflow.

## Goal

Build practical local AI infrastructure judgment: local LLM deployment, local RAG, NPU acceleration, CNN fundamentals, and a local big-data strategy simulator.

## Included Scope

| Area | Role |
|---|---|
| Local LLM Deployment | Run and evaluate local models through Ollama, llama.cpp, or compatible servers. |
| Local RAG | Build local document retrieval and grounded generation pipelines. |
| NPU applications | Understand when NPU matters, what can run on it, and how OpenVINO-style deployment fits. |
| CNN | Learn the core visual-model concept needed to understand NPU/vision inference. |
| Local big-data strategy simulator | Build the mental model for local strategy simulation, backtesting, event loops, and reporting. |

## Success Criteria

- Can choose between cloud LLM, local LLM, RAG, classic software, and simulator approaches.
- Can explain deployment tradeoffs: privacy, latency, cost, model quality, hardware, and maintenance.
- Can design a local simulator that produces testable strategy metrics rather than vague claims.
- Can connect local infrastructure back to Industrial AI SaaS, AI workflow systems, and finance/arbitrage systems.
