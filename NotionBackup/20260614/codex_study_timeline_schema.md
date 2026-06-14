# Codex Study Timeline Schema Snapshot - 2026-06-14

Source: `https://app.notion.com/p/37eb1a986ba680bdb5f9ea2367b08991`  
Data source: `collection://37eb1a98-6ba6-80ad-94e0-000bbda7ab85`  
Snapshot time observed by connector: 2026-06-14T02:48Z

## Properties

| Property | Type | Notes |
|---|---|---|
| Name | title | Page title |
| Project | select | Existing options before cleanup: `AI/Agent/LLM`, `arXiv`, `General Knowledge`, `Industrial AI SaaS Builder`, `AI Workflow Operating System`, `Local AI Infrastructure`, `CEO Finance Strategy System` |
| Date | date | Uses start/end date range |
| Tags | text | Free text tags |
| Last edited time | last_edited_time | System managed |

## Views

| View | Type | Configuration |
|---|---|---|
| default | table | Shows Name, Project, Date, Last edited time, Tags; sorted by Date ascending |
| Calendar | calendar | Calendar by Date, month view |
| Timeline | timeline | Timeline by Date, table hidden |

## Planned Change After This Backup

- Add one `Project` select option: `GPU ML Systems & Model Training`.
- Create one new timeline row for the new Study Project.
- Preserve existing views and properties.
