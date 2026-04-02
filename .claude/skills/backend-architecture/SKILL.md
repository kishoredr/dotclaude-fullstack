---
name: backend-architecture
description: Use when designing service patterns, API architecture,
  or reviewing backend code structure and layering.
---
Layer pattern (always enforce):
  Routes → Controllers (parse/respond only — thin)
  Controllers → Services (all business logic lives here)
  Services → Repositories (all data access lives here)
  Never put business logic in routes or repositories.

Async rules:
- All DB calls: async/await with try/catch
- Operations > 500ms: move to background job queue
- Cross-service communication: event emitters
- External service calls: circuit breakers with fallback
