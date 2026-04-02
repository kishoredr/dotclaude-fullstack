---
name: testing-strategy
description: Use when defining test plans, writing test cases, or setting up
  testing infrastructure for a feature or service.
---
Test pyramid proportions:
- Unit (70%):        pure functions, service methods, utilities
- Integration (20%): API endpoints, database interactions
- E2E (10%):         critical user journeys only

Naming convention:
  describe('[Unit under test]', () => {
    it('[should do X] when [condition Y]', () => { ... })
  })

Coverage requirements:
- 80%+ line coverage overall
- 100% coverage on auth, payment, and data-processing paths
- Every error path has an explicit test case

E2E flows to always cover:
  1. User registration + email verification
  2. Login + logout
  3. Core feature happy path
  4. Payment flow (if the app has one)
  5. Account deletion / data export
