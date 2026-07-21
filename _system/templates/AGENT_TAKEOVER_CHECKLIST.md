# Agent Takeover Checklist｜v0.0.0.2

1. Identify repo, remote, branch, HEAD and worktree.
2. Declare capabilities: read, write, commands, tests, commit, push, web.
3. Read the applicable instruction entry, `/AGENTS.md` and `/_system/MAINTAINER_HANDOFF.md`.
4. Verify Handoff against Git status/log/diff; Git is authoritative.
5. Confirm task mode and authorized scope.
6. Read only relevant Root, Index and project files.
7. Never assume a fixed project count; verify Index generated commit if topology matters.
8. Re-run critical checks before editing.
9. Preserve Owner changes and valid prior Agent work.
10. Use base commit and semantic merge; never overwrite stale state.
11. Validate, update Maintainer Handoff, commit/push and return rollback.
