# Notion Backup Manifest - 2026-06-13

Purpose: pre-create backup note before adding the new Study Project page for `notion-windows-markdown-operator`.

Scope fetched through Notion connector on 2026-06-13 Australia/Sydney:

| Object | Type | ID | Backup coverage |
|---|---|---|---|
| 个人价值增长 | database | 1b3b1a98-6ba6-804c-b123-d5f76675f163 | schema, views, data source URL, select options |
| Codex Study Timeline | database | 37eb1a98-6ba6-80bd-b5f9-ea2367b08991 | schema, views, date property format, data source URL |
| Codex Study Project 4周 | page | 6f5b1a98-6ba6-83a6-863c-8119fd555350 | visible content snapshot for style/reference only |

Important schema notes:

- `个人价值增长` data source: `collection://1b3b1a98-6ba6-8015-8857-000b3b9feec4`.
- `个人价值增长` title property: `Doc name`.
- `个人价值增长` select property `Status` options: `Work`, `UNSW`, `Finance`, `Life`, `Knowledge`.
- `Codex Study Timeline` data source: `collection://37eb1a98-6ba6-80ad-94e0-000bbda7ab85`.
- `Codex Study Timeline` title property: `Name`.
- `Codex Study Timeline` date property uses expanded fields: `date:Date:start`, `date:Date:end`, `date:Date:is_datetime`.

Backup gaps:

- This is connector-level snapshot, not a full Notion workspace export.
- No existing pages were modified or deleted.
- New Notion writes should be additive only.
