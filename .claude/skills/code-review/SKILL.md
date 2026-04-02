---
name: code-review
description: Use PROACTIVELY when reviewing PRs, validating implementations,
  or checking code quality before merging to main.
---
Review in this order (stop at first critical issue):
  1. Correctness   — does it actually do what it claims?
  2. Security      — input validation? auth enforcement?
  3. Performance   — N+1 queries? blocking calls? payload size?
  4. Maintainability — readable in 6 months by someone new?
  5. Tests         — edge cases and error paths covered?

Always flag:
- Functions longer than 50 lines without a clear reason
- Nested conditionals deeper than 3 levels
- Magic numbers without named constants
- Catch blocks that silently swallow errors
- Any TODO or FIXME older than the current sprint

Never flag purely stylistic issues when a linter is already configured — focus on correctness, security, and maintainability only.
