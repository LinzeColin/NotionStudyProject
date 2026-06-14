# Skill Update - Roadmap Generation Rule

Date: 2026-06-14

The local skill `/Users/linzezhang/.codex/skills/study-project-orchestrator/SKILL.md` was updated to require project-cycle roadmap generation before finalizing Study Project routes.

## New Rule

For every Study Project, Codex must create a roadmap-generation packet for the whole project cycle. For rolling programs such as arXiv, the packet must include:

- Project-cycle roadmap.
- Group-level roadmap.
- Archive-level roadmap.
- Teaching syllabus.
- Teaching route.
- Teaching content.
- Teaching logic.
- Content bias and defer list.

Default requested reviewer roster:

- ChatGPT.
- Claude.
- Perplexity.
- At least two external/configured AI agents.

If a reviewer is unavailable, record `blocked_unavailable`; do not fabricate feedback.

For arXiv-style Notion roadmap pages:

- Heading 1 = Group.
- Heading 2 = Archive.

## Validation Note

`quick_validate.py` could not run because the local Python environment lacked `yaml` / PyYAML. Frontmatter was left structurally unchanged.
