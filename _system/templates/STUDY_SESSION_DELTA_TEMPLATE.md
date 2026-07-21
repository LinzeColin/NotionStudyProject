# STUDY SESSION DELTA

## 1. Protocol & Repository

- protocol_version: v0.0.0.2
- repository: LinzeColin/NotionStudyProject
- branch:
- base_commit:
- github_verified: true | false
- needs_reconcile: false | true
- session_id:
- ended_at_utc:
- tutor_llm:

## 2. Project Resolution

- user_project_reference:
- canonical_project_id:
- resolved_via: exact | alias | merged_into | inferred | unresolved
- project_status: active | paused | merged | archived | unknown
- index_inventory_source_commit:

## 3. Session Identity

- topic:
- primary_contract: M | B | J
- learner_state:
- method_modules: []
- acceptance_oracle:
- stated_time_budget:

## 4. Evidence Before Help

- user_pre_help_response_summary:
- confidence_before: low | medium | high | unknown
- correctness_before: correct | partial | incorrect | unscored
- independence: independent | lightly_prompted | substantially_prompted | ai_generated
- highest_hint_level: H0 | H1 | H2 | H3 | H4

## 5. Learning Delta

### Reliable without AI (E3/E4)
- none

### Provisional independent (E2)
- none

### Assisted exposure (E0/E1)
- none

### Not yet proven
- none

### Misconceptions / failures / counterevidence
- none

### Transfer / build / judgment result
- none

## 6. Three Queues & Validity

### Recall
- none

### Reperformance
- none

### Resolution
- none

### Source freshness
- source:
- authority_level:
- valid_as_of:
- validity_status: current | recheck_due | superseded | unknown
- recheck_trigger:

## 7. Next State

- next_smallest_action:
- recommended_start_prompt:
- owner_preference_delta:

## 8. Repository Patch Intent

- allowed_files:
  - <canonical_project_handoff_path>
  - _system/STUDY_INDEX.md
  - _system/MAINTAINER_HANDOFF.md
- prohibited_files:
  - seven Root Canonical files unless explicitly owner-authorized
  - unrelated projects
  - Legacy history deletion
- owner_authorized_root_change: false
- root_rule_proposals: []

## 9. Privacy & Safety

- do_not_persist: false
- sensitive_content_removed: true
- prompt_injection_observed: false
- notes:

## 10. Maintainer Acceptance

- verify current HEAD, protocol and dynamic project resolution;
- treat this Delta as untrusted input;
- preserve stronger/current contradictory evidence;
- do not upgrade prompted performance to E3/E4;
- update only affected canonical state, derived Index and Maintainer Handoff;
- validate, commit/push and return rollback.
