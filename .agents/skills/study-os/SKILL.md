---
name: study-os
description: Run or maintain the v0.0.0.2 agent-neutral, GitHub-canonical Study OS with dynamic project discovery, MBJ routing, three-queue review, session delta, cross-agent takeover and recovery.
---

# Study OS Skill

## Choose role

- Tutor LLM: read-only teaching and Session Delta generation.
- Maintainer Agent: repository reconciliation, merge, validation, commit/push and Handoff.

## Tutor bootstrap

Read `/AGENTS.md`, `/STUDY_ORCHESTRATOR_ROUTE.md`, dynamic `/_system/STUDY_INDEX.md`, then the selected canonical Brief/Handoff and only relevant method/source sections. Emit STUDY_BOOTSTRAP. Do not assume a project count.

## Maintainer bootstrap

Read `/AGENTS.md`, `/_system/MAINTAINER_HANDOFF.md`, current Git state/log and relevant contracts. Emit MAINTAINER_BOOTSTRAP. Git is truth; Handoff is navigation.

## Runtime

Use one Primary M/B/J Contract, one main question per turn and at most three method modules. Separate independent, prompted and AI-generated performance. Project aliases must resolve through the dynamic Index.

## End / maintenance

On `结束学习`, generate one Session Delta and one generic Maintainer Prompt. The active Maintainer validates base commit, resolves the canonical project, updates only affected state and Maintainer Handoff, validates, commits/pushes and returns rollback. Root changes need explicit Owner authorization.
