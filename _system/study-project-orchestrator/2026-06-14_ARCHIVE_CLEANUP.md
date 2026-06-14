# 2026-06-14 Archive Cleanup

Timezone: Australia/Sydney

## Objective

Remove active/pending noise from superseded or outside-route Study Project folders without deleting historical learning records.

## Projects Archived

| Slug | Result | Reason |
|---|---|---|
| `ai` | `archived_superseded` | Broad AI route replaced by clearer consolidated projects. |
| `prompt-engineering-loop-engineering` | `archived_superseded` | Prompt/loop content moved into `ai-workflow-operating-system`; parallel route would duplicate reminders and missed-study checks. |
| `notion-windows-markdown-operator` | `archived_outside_current_route` | Practical operator sprint is outside the current Top1 Study Project route and should not pollute daily queue. |

## Automations

| Automation | Result |
|---|---|
| `prompt-loop-study-daily-reminder` | Paused through Codex app automation tool. |
| `study-project-daily-sync` | Updated through Codex app automation tool to route only through `PROJECT_INDEX.md` and skip `ARCHIVE_INDEX.md` entries. |

## Boundaries

- No Study Project folders were deleted or moved.
- No Notion pages were modified.
- Historical logs, metrics, reminders, and notes remain available for future recovery.
- Reactivation requires explicit user instruction.

## Notion Attempt

Fetched `Codex Study Timeline` schema and the three relevant Timeline pages. Schema has `Name`, `Project`, `Date`, and `Tags`, with no `Status` property.

Attempted to update only `Tags`, without creating new properties or changing page content. All three `update_properties` calls failed with `validation_error`; fetch output showed the pages with a `deleted` marker.

Decision: stop. Do not restore, move, or structurally modify Notion pages without explicit user instruction.
