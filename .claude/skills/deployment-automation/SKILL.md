---
name: deployment-automation
description: Use when writing CI/CD pipelines, deployment scripts,
  or automating release and rollback processes.
---
Pipeline stage order (strict — no skipping):
  1.  Lint + type check (fail fast)
  2.  Unit tests
  3.  Build
  4.  Integration tests
  5.  Security scan (npm audit + SAST)
  6.  Deploy to staging
  7.  Smoke tests on staging
  8.  Manual approval gate for production
  9.  Deploy to production
  10. Post-deploy health check (auto-rollback if fails)

Rollback automation:
- Retain last 3 successful deployment artifacts
- One-command rollback: ./scripts/rollback.sh [env] [version]
- Trigger auto-rollback if health check fails within 5min of deploy
