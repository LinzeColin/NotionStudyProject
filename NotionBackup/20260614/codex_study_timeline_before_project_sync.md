# Codex Study Timeline Backup Before Project Sync

Date: 2026-06-14
Timezone: Australia/Sydney
Scope: relevant schema and search snapshot before syncing consolidated Study Projects.

## Database

- Name: Codex Study Timeline
- Database ID: `37eb1a986ba680bdb5f9ea2367b08991`
- Data source: `collection://37eb1a98-6ba6-80ad-94e0-000bbda7ab85`

## Schema Before Change

| Property | Type | Notes |
|---|---|---|
| Name | title | Page title |
| Project | select | Existing options: `AI/Agent/LLM`, `arXiv`, `General Knowledge` |
| Date | date | Date range supported through `date:Date:start` and `date:Date:end` |
| Last edited time | last_edited_time | Read-only |

## Visible View Before Change

| View | Type | Display properties |
|---|---|---|
| default table | table | Name, Project, Date, Last edited time |

## Search Snapshot Before Change

Searches were run inside the data source for the new consolidated project names. No exact existing rows for the four new project titles were confirmed. Search results surfaced old related pages:

- `AI Study Project 7 Days` (`37eb1a98-6ba6-8109-8a14-d2c8c71f3715`)
- `Prompt Engineering and Loop Engineering - B to C` (`37eb1a98-6ba6-8155-94df-c76d517bfcbb`)
- `arXiv Quantitative Finance`
- `arXiv Physics`
- `arXiv Computer Science`
- `Notion/Windows/Markdown Operator Sprint`

## Mutation Plan

1. Extend the `Project` select options to include the four consolidated project names.
2. Create four timeline rows using those exact project names in the `Project` property.
3. Preserve old rows as historical references; do not delete or overwrite old AI/Prompt pages.
4. Update GitHub project states with created Notion page IDs after successful creation.
