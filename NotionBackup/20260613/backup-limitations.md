# Backup Limitations

Generated: 2026-06-13
Timezone: Australia/Sydney

## What Worked

- Notion teamspaces were listed.
- `Linz Dashboard` was verified as an owned teamspace.
- Search over Linz Dashboard-related content worked.
- Fetch of top-level databases worked.
- Schema and data-source IDs were captured.

## What Did Not Work

Attempted row-level database export using the discovered `notion_query_data_sources` tool interface failed at runtime:

```text
MCP error -32602: Tool notion-query-data-sources not found
```

Therefore this backup does not include complete row-level exports or all child page block content.

## Practical Interpretation

This backup is a connector-level pre-change snapshot, not a full Notion native export.

It is acceptable before non-destructive creation of a new Study Project database/page, because the workflow does not modify existing workspaces by default.

It is not sufficient before destructive edits, database migrations, page replacements, or bulk writes to existing Notion workspaces. For those operations, use Notion's native export or a working row-level API export first.
