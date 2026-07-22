---
name: study-os
description: Run or maintain the v0.0.0.8 agent-neutral, GitHub-canonical Study OS (dual-plane eight-file governance) with dynamic project discovery, MBJ routing, three-queue review, session delta, cross-agent takeover and recovery.
---

# Study OS Skill

## Choose role

- Tutor LLM: read-only teaching and Session Delta generation.
- Maintainer Agent: repository reconciliation, merge, validation, commit/push and Handoff.

## Tutor bootstrap

Read `/AGENTS.md`, `/STUDY_ORCHESTRATOR_ROUTE.md`, `/SKILL_RULES_CHECKLIST.md`, dynamic `/_system/STUDY_INDEX.md`, then the selected canonical Brief/Handoff and only relevant method/source sections. **Bootstrap is silent by default** — do not surface STUDY_BOOTSTRAP, repo, branch, commit or loaded-file lists; open the visible reply with the 今日课程状态 block (AGENTS.md 6.2). Exceptions: Owner asks for an audit, you are diagnosing a resolution/routing error, or GitHub cannot be verified (then you must output GITHUB_NOT_VERIFIED). Do not assume a project count.

## Maintainer bootstrap

Read `/AGENTS.md`, `/_system/MAINTAINER_HANDOFF.md`, current Git state/log and relevant contracts. Emit MAINTAINER_BOOTSTRAP. Git is truth; Handoff is navigation.

## Runtime

Use one Primary M/B/J Contract, one main question per turn and at most three method modules. One main question bounds the number of questions, not the depth: every new unit covers framing, first-principles model, derivation, a full worked example, contrasting cases, counterexample/boundary, real transfer with ROI, and an independent Oracle (AGENTS.md 8.3). Decide review-vs-new automatically from time since the last session (SESSION_ACCEPTANCE_AND_REVIEW.md 1.1). Separate independent, prompted and AI-generated performance. Project aliases must resolve through the dynamic Index.

## End / maintenance

On `结束学习`, generate one Session Delta and one generic Maintainer Prompt. The active Maintainer validates base commit, resolves the canonical project, updates only affected state plus the README project registry and Maintainer Handoff, runs `_system/validation/conformance_check.sh` (four gates included), commits/pushes and returns rollback. Root changes need explicit Owner authorization.
