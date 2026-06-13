# Codex Study Timeline Backup Before AI Start

Date: 2026-06-13
Timezone: Australia/Sydney
Purpose: Snapshot the Notion `Codex Study Timeline` before starting the AI Study Project and creating the first Day 1 timeline entry.

## Source

| Field | Value |
|---|---|
| Database | Codex Study Timeline |
| Database ID | `37eb1a986ba680bdb5f9ea2367b08991` |
| Data source | `collection://37eb1a98-6ba6-80ad-94e0-000bbda7ab85` |
| View ID | `37eb1a986ba68040b4f4000cc8b21956` |
| Parent workspace/teamspace | Linz Dashboard |

## Schema Snapshot

```sql
CREATE TABLE IF NOT EXISTS "collection://37eb1a98-6ba6-80ad-94e0-000bbda7ab85" (
  url TEXT UNIQUE,
  createdTime TEXT,
  "Name" TEXT
)
```

## Visible Properties

| Property | Type | Notes |
|---|---|---|
| Name | title | Only editable user field currently exposed by connector fetch |

## Row-Level Export Attempt

Attempted to query rows with Notion data-source SQL before writing a new page.

Result:

```text
Error code: INVALID_ARGUMENT; MCP error -32602: Tool notion-query-data-sources not found
```

## Backup Scope And Gaps

| Area | Status |
|---|---|
| Database metadata | captured |
| Data source schema | captured |
| View metadata | captured from fetch output |
| Existing rows | not captured because connector query tool failed at runtime |
| Other Linz Dashboard databases | covered by existing `NotionBackup/20260613/` connector-level backup files |

## Safety Note

This backup does not claim to be a complete native Notion export. It is a connector-level snapshot sufficient to document schema state and write-safety before creating the first AI study timeline entry.
