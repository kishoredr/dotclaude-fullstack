---
name: security-scanning
description: Use when reviewing code for vulnerabilities, auditing
  dependencies, or implementing security controls.
---
Code scanning rules:
- No secrets in source code — use process.env or vault
- No eval() or Function constructor with any user-supplied input
- No innerHTML with untrusted content (use textContent instead)
- SQL: always parameterised — never template literals
- File uploads: validate MIME type, enforce size limit, scan for malware
- Redirects: validate destination against an explicit allowlist

Dependency audit:
- Run npm audit --audit-level=high before every deploy
- Commit lock file — never .npmrc files containing tokens
- No packages abandoned > 2 years without explicit team review
- Snyk or equivalent scanning integrated into CI pipeline
