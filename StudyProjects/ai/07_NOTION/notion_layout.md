# AI Notion Layout

Project: AI
Status: Notion database creation blocked by current parent limitation

## Intended Placement

The Study Project database should be created under:

```text
Linz Dashboard
└── AI
```

It should be a peer to:

- `个人价值增长`
- `制造业`
- `Re:0`
- `arXiv`

Existing workspaces remain read-only by default.

## Attempted Creation

Attempted to create database `AI` with parent:

```text
teamspace: Linz Dashboard
id: 1aeb1a98-6ba6-813a-8420-0042760f36b1
```

Result:

```text
Error code: NOT_FOUND; object_not_found
```

Likely cause: current Notion create-database tool accepts page parent IDs, not teamspace root IDs.

## Intended Database Schema

| Property | Type | Purpose |
|---|---|---|
| Name | Title | Mission, concept, output, source, review |
| Type | Select | Mission / Concept / Output / Review / Source |
| Status | Status | Planning / Active / Done / Needs Review |
| Week | Number | Week number |
| Day | Number | Day number |
| Date | Date | Learning date |
| Focus | Text | Daily focus |
| ROI | Number | 1-5 ROI score |
| Evidence URL | URL | Link to output or GitHub log |

## Minimal Views

| View | Purpose |
|---|---|
| Today | Current mission |
| Week | This week's tasks |
| Concepts | Knowledge cards |
| Outputs | Deliverables |
| Review | Weekly review |

## Next Safe Step

Use one of these approaches:

1. Provide a regular Notion parent page ID under `Linz Dashboard` where the database can be created.
2. Manually create an empty `AI` page/database under `Linz Dashboard`, then give Codex the URL to populate it.
3. Use a Notion connector/tool variant that supports teamspace-root database creation.
