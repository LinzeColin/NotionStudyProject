#!/usr/bin/env bash
# Study OS v0.0.0.2 — Immediate Conformance Suite (mechanical checks)
#
# Agent-neutral. No app, database, service, MCP or network dependency.
# Re-runnable by any successor Agent from the repository root:
#
#   bash _system/validation/conformance_check.sh
#
# Exit 0 = all mechanical gates pass. Exit 1 = at least one gate failed.
# Structural/contract canaries that cannot be asserted mechanically are
# recorded in _system/validation/CONFORMANCE_REPORT_v0.0.0.2.md.

set -uo pipefail
cd "$(dirname "$0")/../.." || exit 1

PASS=0
FAIL=0
SKIP=0
ok()   { printf 'PASS  %s\n' "$1"; PASS=$((PASS+1)); }
bad()  { printf 'FAIL  %s\n' "$1"; FAIL=$((FAIL+1)); }
chk()  { if eval "$2" >/dev/null 2>&1; then ok "$1"; else bad "$1"; fi; }

INDEX=_system/STUDY_INDEX.md
# v0.0.0.3 起为双平面八文件（融合 Governance 治理标准，新增 Skill 规则清单）
ROOTS=(AGENTS.md STUDY_PRODUCT.md STUDY_ARCHITECTURE.md STUDY_ORCHESTRATOR_ROUTE.md \
       TEACHING_METHOD_REGISTRY.md SESSION_ACCEPTANCE_AND_REVIEW.md MEMORY_RECOVERY_AND_EVOLUTION.md \
       SKILL_RULES_CHECKLIST.md)
ADAPTERS=(CLAUDE.md GEMINI.md .github/copilot-instructions.md .agents/skills/study-os/SKILL.md)
# Canonical rows live ONLY under "## Canonical Projects"; the alias table below it
# uses the same pipe syntax and must never be parsed as a project row.
canon_rows() {
  awk '/^## Canonical Projects/{s=1;next} /^## /{if(s)s=0} s && /^\| `/' "$INDEX"
}

TEMPLATES=(_system/templates/HANDOFF_STANDARD_TEMPLATE.md \
           _system/templates/STUDY_SESSION_DELTA_TEMPLATE.md \
           _system/templates/GENERIC_LLM_STUDY_INSTRUCTIONS.md \
           _system/templates/CHATGPT_PROJECT_INSTRUCTIONS.md \
           _system/templates/GENERIC_MAINTAINER_SESSION_MERGE_PROMPT.md \
           _system/templates/AGENT_TAKEOVER_CHECKLIST.md)

echo "== G1  Eight governance files present =="
for f in "${ROOTS[@]}"; do chk "root exists: $f" "[ -s '$f' ]"; done

echo
echo "== G2  Thin adapters present and thin (no duplicated contract) =="
for f in "${ADAPTERS[@]}"; do
  chk "adapter exists: $f" "[ -s '$f' ]"
  # A thin adapter must point at AGENTS.md rather than restate it.
  chk "adapter references canonical contract: $f" "grep -q 'AGENTS.md' '$f'"
  # Guard against contract duplication: adapters stay short.
  chk "adapter stays thin (<60 lines): $f" "[ \"\$(wc -l < '$f')\" -lt 60 ]"
done

echo
echo "== G3  Continuity templates + Maintainer Handoff present =="
for f in "${TEMPLATES[@]}"; do chk "template exists: $f" "[ -s '$f' ]"; done
chk "maintainer handoff exists" "[ -s _system/MAINTAINER_HANDOFF.md ]"
chk "study index exists" "[ -s $INDEX ]"

echo
echo "== G4  No self-referential commit SHA in derived/handoff files =="
chk "index declares non-self-reference rule" "grep -q 'DO_NOT_SELF_REFERENCE' $INDEX"
chk "maintainer handoff declares non-self-reference rule" "grep -qE 'DO_NOT_SELF_REFERENCE|do not self-reference|不写自引用' _system/MAINTAINER_HANDOFF.md"
chk "index records inventory_source_commit" "grep -q 'inventory_source_commit' $INDEX"

echo
echo "== G5  Index has no unresolved template placeholders =="
chk "no TO_BE_DISCOVERED left in index" "! grep -q 'TO_BE_DISCOVERED' $INDEX"
chk "no TO_BE_REBUILT_FROM_CURRENT_HEAD left in index" "! grep -q 'TO_BE_REBUILT_FROM_CURRENT_HEAD' $INDEX"
chk "no TO_BE_SET left in maintainer handoff" "! grep -q 'TO_BE_SET' _system/MAINTAINER_HANDOFF.md"

echo
echo "== G6  Dynamic counts match the real working tree (no fixed count) =="
DIRS=$(find StudyProjects -mindepth 1 -maxdepth 1 -type d | wc -l | tr -d ' ')
DECL=$(grep -m1 '^- candidate_directory_count:' $INDEX | tr -dc '0-9')
if [ "$DIRS" = "$DECL" ]; then ok "candidate_directory_count matches filesystem ($DIRS)"; else bad "candidate_directory_count $DECL != filesystem $DIRS"; fi

ROWS=$(canon_rows | wc -l | tr -d ' ')
CANON=$(grep -m1 '^- canonical_project_count:' $INDEX | tr -dc '0-9')
if [ "$ROWS" = "$CANON" ]; then ok "canonical rows match canonical_project_count ($ROWS)"; else bad "index rows $ROWS != canonical_project_count $CANON"; fi

A=$(grep -m1 '^- active_count:'   $INDEX | tr -dc '0-9')
P=$(grep -m1 '^- paused_count:'   $INDEX | tr -dc '0-9')
M=$(grep -m1 '^- merged_count:'   $INDEX | tr -dc '0-9')
R=$(grep -m1 '^- archived_count:' $INDEX | tr -dc '0-9')
U=$(grep -m1 '^- unknown_count:'  $INDEX | tr -dc '0-9')
SUM=$((A+P+M+R+U))
if [ "$SUM" = "$CANON" ]; then ok "status counts sum to canonical count ($SUM)"; else bad "status sum $SUM != canonical $CANON"; fi

# Every status count must equal the number of rows actually carrying that status.
for pair in "active:$A" "paused:$P" "merged:$M" "archived:$R" "unknown:$U"; do
  s=${pair%%:*}; n=${pair##*:}
  c=$(canon_rows | awk -F'|' -v s="$s" '{ gsub(/ /,"",$4); if ($4==s) c++ } END{print c+0}')
  if [ "$c" = "$n" ]; then ok "declared $s count matches rows ($n)"; else bad "declared $s count $n != rows $c"; fi
done

echo
echo "== G7  Every indexed canonical project directory exists =="
MISS=0
while read -r id; do
  [ -d "StudyProjects/$id" ] || { bad "indexed project has no directory: $id"; MISS=1; }
done < <(canon_rows | awk -F'|' '{gsub(/[` ]/,"",$2); print $2}')
[ "$MISS" = 0 ] && ok "all indexed canonical IDs resolve to a directory"

echo
echo "== G8  Every project directory appears in the index (no orphan directory) =="
ORPH=0
for d in StudyProjects/*/; do
  id=$(basename "$d")
  canon_rows | grep -q "^| \`$id\`" || { bad "directory missing from index: $id"; ORPH=1; }
done
[ "$ORPH" = 0 ] && ok "no orphan project directory"

echo
echo "== G9  Canonical IDs are unique =="
DUP=$(canon_rows | awk -F'|' '{gsub(/[` ]/,"",$2); print $2}' | sort | uniq -d)
if [ -z "$DUP" ]; then ok "canonical IDs unique"; else bad "duplicate canonical IDs: $DUP"; fi

echo
echo "== G10 Alias resolution is unambiguous (each alias -> exactly one target) =="
ALIAS_DUP=$(awk -F'|' '
  /^## Alias Resolution/{sec=1; next}
  /^## /{ if (sec) sec=0 }
  sec && /^\| `/ {
    n=split($2, a, "、");
    for (i=1;i<=n;i++) { gsub(/[`  ]/,"",a[i]); if (a[i]!="") print a[i] }
  }' $INDEX | sort | uniq -d)
if [ -z "$ALIAS_DUP" ]; then ok "no alias maps to more than one canonical target"; else bad "ambiguous alias: $ALIAS_DUP"; fi
chk "bare ambiguous term 'AI' explicitly excluded from alias table" "grep -q '裸词「AI」' $INDEX"

echo
echo "== G11 merged_into graph is acyclic and terminates =="
CYC=0
while IFS='|' read -r _ id _ _ _ tgt _; do
  id=$(echo "$id" | tr -d '` '); tgt=$(echo "$tgt" | tr -d '` ')
  [ "$tgt" = "—" ] || [ -z "$tgt" ] && continue
  [ "$id" = "$tgt" ] && { bad "self merge: $id"; CYC=1; }
  # follow one more hop; a target that itself merges must not return to id
  hop=$(canon_rows | awk -F'|' -v t="$tgt" '{gsub(/[` ]/,"",$2); if ($2==t){gsub(/[` ]/,"",$6); print $6}}')
  [ "$hop" = "$id" ] && { bad "2-cycle: $id <-> $tgt"; CYC=1; }
  [ -n "$hop" ] && [ "$hop" != "—" ] && bad "merge chain longer than 1 hop: $id -> $tgt -> $hop" && CYC=1
done < <(canon_rows)
[ "$CYC" = 0 ] && ok "merge graph acyclic (no self-merge, no 2-cycle, no multi-hop chain)"

echo
echo "== G12 merged/archived projects are not routed =="
NR=0
while IFS='|' read -r _ id _ st _ _ _ _ route _; do
  id=$(echo "$id" | tr -d '` '); st=$(echo "$st" | tr -d ' '); route=$(echo "$route" | tr -d ' ')
  case "$st" in
    merged|archived|unknown)
      [ "$route" = "—" ] || { bad "$st project has a default route: $id ($route)"; NR=1; } ;;
  esac
done < <(canon_rows)
[ "$NR" = 0 ] && ok "merged/archived/unknown projects carry no default route"

echo
echo "== G13 Every active/paused project has a canonical Handoff at protocol v0.0.0.2 =="
NH=0
while IFS='|' read -r _ id _ st _; do
  id=$(echo "$id" | tr -d '` '); st=$(echo "$st" | tr -d ' ')
  case "$st" in
    active|paused)
      h="StudyProjects/$id/HANDOFF.md"
      [ -s "$h" ] || { bad "missing handoff: $h"; NH=1; continue; }
      grep -q 'Protocol:\*\* v0.0.0.2' "$h" || { bad "handoff not on v0.0.0.2: $h"; NH=1; }
      grep -q 'State source commit' "$h" || { bad "handoff missing state source commit: $h"; NH=1; } ;;
  esac
done < <(canon_rows)
[ "$NH" = 0 ] && ok "all active/paused projects have a v0.0.0.2 handoff with a state source commit"

echo
echo "== G14 Legacy history preserved (nothing deleted) =="
chk "merged source directory kept" "[ -d StudyProjects/prompt-engineering-loop-engineering ]"
chk "merge declaration kept" "ls StudyProjects/*/MERGED_INTO_*.md >/dev/null"
chk "archived directories kept" "[ -d StudyProjects/ai ] && [ -d StudyProjects/notion-windows-markdown-operator ]"
chk "unknown project kept" "[ -d StudyProjects/dlm-flow-agent-cost-sprint ]"
chk "legacy learning log kept" "[ -s _system/study-project-orchestrator/LEARNING_LOG.md ]"
chk "legacy project index kept" "[ -s _system/study-project-orchestrator/PROJECT_INDEX.md ]"
chk "legacy archive index kept" "[ -s _system/study-project-orchestrator/ARCHIVE_INDEX.md ]"
chk "notion backups kept" "[ -d NotionBackup ]"
chk "owner assets kept" "[ -d _assets ]"

echo
echo "== G15 No-wait / no-soak / no fixed project count in the contract =="
chk "no-wait rule stated" "grep -q '无等待' AGENTS.md MEMORY_RECOVERY_AND_EVOLUTION.md"
chk "fixed-count prohibition stated in root" "grep -q '不得假设项目数量\|不使用固定项目数' AGENTS.md"
# Adapters phrase this as "Do not assume a fixed project count" (CLAUDE/Copilot),
# "never assume a fixed project count" (Gemini) and "Do not assume a project count" (Skill).
chk "fixed-count prohibition stated in every adapter" "( for f in ${ADAPTERS[*]}; do grep -qiE '(not|never) assume a (fixed )?project count|固定项目数' \$f || exit 1; done )"

echo
echo "== G16 Routine sessions cannot silently rewrite Root =="
chk "root change requires owner authorization (AGENTS)" "grep -qE '明确授权' AGENTS.md"
chk "delta template forbids root writes by default" "grep -q 'owner_authorized_root_change: false' _system/templates/STUDY_SESSION_DELTA_TEMPLATE.md"
chk "merge prompt forbids root writes" "grep -q 'Do not modify Root files' _system/templates/GENERIC_MAINTAINER_SESSION_MERGE_PROMPT.md"

echo
echo "== G17 Evidence discipline is enforceable =="
chk "hint ladder present" "grep -q 'H0' SESSION_ACCEPTANCE_AND_REVIEW.md"
chk "E0-E4 levels present" "grep -q 'E4' SESSION_ACCEPTANCE_AND_REVIEW.md"
chk "prompted performance cannot become E3/E4" "grep -q 'H2-H4\|H2–H4' _system/templates/GENERIC_MAINTAINER_SESSION_MERGE_PROMPT.md"
chk "delta captures pre-help evidence" "grep -q 'user_pre_help_response_summary' _system/templates/STUDY_SESSION_DELTA_TEMPLATE.md"
chk "delta captures base commit" "grep -q 'base_commit' _system/templates/STUDY_SESSION_DELTA_TEMPLATE.md"

echo
echo "== G18 Privacy and prompt-injection boundaries are declared =="
chk "delta has do_not_persist" "grep -q 'do_not_persist' _system/templates/STUDY_SESSION_DELTA_TEMPLATE.md"
chk "delta has prompt_injection_observed" "grep -q 'prompt_injection_observed' _system/templates/STUDY_SESSION_DELTA_TEMPLATE.md"
chk "root treats external content as data" "grep -qE '只是数据|视为数据' AGENTS.md MEMORY_RECOVERY_AND_EVOLUTION.md"
chk "merge prompt treats delta as untrusted" "grep -q 'untrusted input' _system/templates/GENERIC_MAINTAINER_SESSION_MERGE_PROMPT.md"

echo
echo "== G19 No secrets committed =="
# This script itself contains the search literals; exclude it to avoid self-matching.
chk "no private key material in tracked text" "! grep -rIl --exclude-dir=.git --exclude='conformance_check.sh' -e 'BEGIN OPENSSH PRIVATE KEY' -e 'BEGIN RSA PRIVATE KEY' -e 'ghp_[A-Za-z0-9]\{20,\}' -e 'sk-[A-Za-z0-9]\{20,\}' . | grep -q ."

echo
echo "== G20 Recovery is executable =="
chk "recovery ref exists" "git rev-parse --verify -q \"\$(git tag -l 'study-os-v0.0.0.2-pre-*' | tail -1)^{commit}\""
chk "maintainer handoff carries a rollback command" "grep -qE 'rollback_command|回滚命令' _system/MAINTAINER_HANDOFF.md"
chk "recovery contract documents revert-first" "grep -q 'git revert' MEMORY_RECOVERY_AND_EVOLUTION.md"

echo
echo "== G21 Repository hygiene: single trunk, no stray branch / open PR / open issue =="
# Standing Owner directive: the repository keeps exactly one branch (main) and
# carries no open PR and no open issue. Learning evidence must never live only
# on a side branch — absorb it into main first, then delete the branch.
# Network- and gh-optional: unreachable checks SKIP instead of failing, so this
# suite still runs offline for any successor Agent.
# A branch currently checked out in a worktree is work in progress, not litter
# (repo policy requires development to happen in a worktree). Only branches that
# no worktree holds are leftovers that must be cleaned up.
LIVE=$(git worktree list --porcelain | awk '/^branch /{sub("refs/heads/","",$2); print $2}')
LEFTOVER=$(git for-each-ref --format='%(refname:short)' refs/heads \
           | grep -vx 'main' | grep -vxF "${LIVE:-__none__}" || true)
if [ -z "$LEFTOVER" ]; then ok "no leftover local branch (only main + live worktree branches)"
else bad "leftover local branch(es): $(printf '%s' "$LEFTOVER" | tr '\n' ' ')"; fi

if git ls-remote --heads origin >/dev/null 2>&1; then
  RB=$(git ls-remote --heads origin | awk '{print $2}' | sed 's#refs/heads/##')
  RB_EXTRA=$(printf '%s\n' "$RB" | grep -vx 'main' || true)
  if [ -z "$RB_EXTRA" ]; then ok "remote has only 'main' (no stray branch)"
  else bad "stray remote branch(es): $(printf '%s' "$RB_EXTRA" | tr '\n' ' ')"; fi
else
  printf 'SKIP  remote branch check (remote unreachable)\n'; SKIP=$((SKIP+1))
fi

if command -v gh >/dev/null 2>&1 && gh repo view >/dev/null 2>&1; then
  OPR=$(gh pr list --state open --json number --jq 'length' 2>/dev/null || echo unknown)
  OIS=$(gh issue list --state open --json number --jq 'length' 2>/dev/null || echo unknown)
  case "$OPR" in 0) ok "no open pull request" ;; unknown) printf 'SKIP  open PR check (gh query failed)\n'; SKIP=$((SKIP+1)) ;; *) bad "open pull requests: $OPR" ;; esac
  case "$OIS" in 0) ok "no open issue" ;; unknown) printf 'SKIP  open issue check (gh query failed)\n'; SKIP=$((SKIP+1)) ;; *) bad "open issues: $OIS" ;; esac
else
  printf 'SKIP  open PR / issue check (gh unavailable or not authenticated)\n'; SKIP=$((SKIP+2))
fi

echo
echo "== G22 Governance four gates (volume / Chinese / evidence purity / registration) =="
# 融合自 LinzeColin/Governance 双平面治理标准，实现见 _system/validation/four_gates.py
if command -v python3 >/dev/null 2>&1; then
  if python3 _system/validation/four_gates.py >/tmp/four_gates.$$ 2>&1; then
    ok "four gates pass ($(grep -c '^PASS' /tmp/four_gates.$$) checks)"
  else
    bad "four gates FAILED:"; grep '^FAIL' /tmp/four_gates.$$ | sed 's/^/        /'
  fi
  rm -f /tmp/four_gates.$$
else
  printf 'SKIP  four gates (python3 unavailable)\n'; SKIP=$((SKIP+1))
fi

echo
echo "== G23 Project registry present in README =="
chk "README declares the project registry" "grep -q '项目登记表' README.md"
chk "README carries the Notion registration address" "grep -q 'app.notion.com/p/37eb1a986ba680bdb5f9ea2367b08991' README.md"
chk "README lists all eight governance files" "( for f in ${ROOTS[*]}; do grep -q \"\$f\" README.md || exit 1; done )"
chk "root contract declares the four gates" "grep -q '四道门' AGENTS.md"
chk "skill checklist adjudicates conflicts against governance" "grep -q '冲突裁决' SKILL_RULES_CHECKLIST.md"

echo
echo "== G24 Tutor bootstrap silence + default teaching depth (v0.0.0.4) =="
chk "root contract makes tutor bootstrap silent by default" "grep -q '默认静默' AGENTS.md"
chk "root contract lists what must never be shown" "grep -q '默认不显示什么' AGENTS.md"
chk "root contract keeps GITHUB_NOT_VERIFIED as the degraded signal" "grep -q 'GITHUB_NOT_VERIFIED' AGENTS.md"
chk "root contract defines the 今日课程状态 block" "grep -q '今日课程状态' AGENTS.md"
chk "root contract states the eight-item depth floor" "grep -q '默认教学深度' AGENTS.md"
chk "root contract forbids the summary-plus-one-question shortcut" "grep -q '一段概述 + 一道题' AGENTS.md"
chk "acceptance file automates review-vs-new by elapsed time" "grep -q '复习还是新内容：自动判定' SESSION_ACCEPTANCE_AND_REVIEW.md"
chk "tutor templates open with 今日课程状态" "( for f in _system/templates/CHATGPT_PROJECT_INSTRUCTIONS.md _system/templates/GENERIC_LLM_STUDY_INSTRUCTIONS.md; do grep -q '今日课程状态' \$f || exit 1; done )"
chk "tutor templates no longer require emitting a visible receipt" "( for f in _system/templates/CHATGPT_PROJECT_INSTRUCTIONS.md _system/templates/GENERIC_LLM_STUDY_INSTRUCTIONS.md; do grep -qE '静默|不得出现' \$f || exit 1; done )"
chk "skill checklist records the depth conflict adjudication" "grep -q 'C9' SKILL_RULES_CHECKLIST.md"

echo
echo "== G25 Status block must render as Markdown, not plain text (v0.0.0.5) =="
chk "root contract forbids wrapping the status block in a code fence" "grep -q '不得.*代码围栏\|不得.*塞进代码' AGENTS.md"
chk "acceptance file carries the markdown status template" "grep -q '今日课程状态」块的固定格式' SESSION_ACCEPTANCE_AND_REVIEW.md"
chk "template uses a markdown fence, not a text fence" "grep -q '\`\`\`markdown' SESSION_ACCEPTANCE_AND_REVIEW.md"
chk "template keeps all five routing rows" "( for k in Route State Methods Oracle Review; do grep -q \"\*\*\$k\*\*\" SESSION_ACCEPTANCE_AND_REVIEW.md || exit 1; done )"
chk "tutor templates demand rendered markdown" "( for f in _system/templates/CHATGPT_PROJECT_INSTRUCTIONS.md _system/templates/GENERIC_LLM_STUDY_INSTRUCTIONS.md; do grep -q '渲染后的 Markdown' \$f || exit 1; done )"
chk "tutor templates no longer hardcode a timezone" "! grep -q 'Australia/Sydney' _system/templates/CHATGPT_PROJECT_INSTRUCTIONS.md _system/templates/GENERIC_LLM_STUDY_INSTRUCTIONS.md"
chk "skill checklist records the plain-text conflict" "grep -q 'C10' SKILL_RULES_CHECKLIST.md"

echo
echo "=============================="
printf 'PASSED: %d   FAILED: %d   SKIPPED: %d\n' "$PASS" "$FAIL" "$SKIP"
echo "=============================="
[ "$FAIL" -eq 0 ] || exit 1
