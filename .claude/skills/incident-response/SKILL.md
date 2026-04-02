---
name: incident-response
description: Use when creating alerting rules, writing incident playbooks,
  or establishing on-call and escalation procedures.
---
Severity classification:
  SEV1: Service down or data-loss risk → page immediately, 15min SLA
  SEV2: Major feature broken, >10% error rate → alert, 1hr SLA
  SEV3: Degraded performance, minor feature broken → ticket, next sprint
  SEV4: Cosmetic issue, no user impact → backlog

Response sequence:
  1. Acknowledge within SLA
  2. Assess impact (users affected? data at risk?)
  3. Post status page update within 15min for SEV1/2
  4. Mitigate — rollback first if possible, fastest path to stability
  5. Resolve root cause
  6. Post-mortem within 48hrs for SEV1/2

Post-mortem template:
  ## Incident: [Title]
  Date: | Duration: | Severity:
  ## Timeline (UTC timestamps)
  ## Root Cause (single sentence)
  ## Impact (users affected, data loss if any)
  ## What Went Well
  ## What Went Wrong
  ## Action Items | Owner | Due Date
