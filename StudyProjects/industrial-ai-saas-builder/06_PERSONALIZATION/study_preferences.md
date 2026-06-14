# Study Preferences

Project: `industrial-ai-saas-builder`
Updated: 2026-06-14

## Explanation Preferences

- Preferred difficulty: concept-first, deep enough to use and diagnose, not shallow terminology recognition.
- Preferred examples: concrete industrial, AI system, SaaS, ROI, productivity, and decision-making examples.
- Preferred language mix: Chinese by default; keep English for professional terms such as RAG, embedding, vector database, grounding, eval, SaaS, PRD, MCP, API.
- Needs more: what the concept is, mechanism, failure modes, how to use it, ROI-max action, verification method.
- Needs less: generic motivation, tool scaffolding before concept mastery, vague questions that push planning burden back to the user, artificial D000 / Day 0 sessions.

## Motivation Patterns

- Works well: agent takes ownership of state reading, writing, syncing, verification, external review, and next-plan generation.
- Does not work: asking the user to act as checklist or approve every small operational step after scope is already locked.
- Return triggers: short daily prompt plus clear Day X/Y progress and next output.

## Learning Style

- Strongest mode: concrete explanation plus table, failure mode, decision rule, and a small output artifact.
- Weakest mode: abstract prompt-only assignments without a worked answer.
- Best practice format: active recall -> diagnosis -> concept teaching -> usage rules -> artifact -> sync -> external review -> next lessons.

## Current Weak Areas

| Area | Evidence | Intervention |
|---|---|---|
| Trusting model confidence | User explicitly distrusts opaque confidence thresholds and ungrounded AI claims | Emphasize external constraints, evidence, evals, and hard rules. |
| Distinguishing learning from building | User objected when project building replaced concept teaching | Keep learning primary and practical project work secondary. |
| Multi-project confusion risk | User runs several Study Projects in parallel/sequence | Always read project index and state before writing. |
| Artificial schedule padding | User rejected D000 and wants acceleration when possible | Never create Day 0; start the next real lesson early and keep all sync/review steps. |

## Teaching Adjustments

| Date | Adjustment | Reason | Result |
|---|---|---|---|
| 2026-06-14 | Do not create D000; treat early start as D01 | User explicitly corrected that D00 has no value and acceleration is preferred | Project state corrected to D01 started early; D000 log removed. |
| 2026-06-14 | If today's lesson is completed and user continues, advance to next lesson early | User wants faster overall completion when possible | Added to skill, reference, state, and handoff. |
