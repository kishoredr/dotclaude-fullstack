# Orchestration Workflow

## Agent Dependency Graph

  User Brief
      ↓
  [00] Orchestrator ── Phase 1: Discovery & planning
      ↓
  [01] Frontend Architect ─┐
  [02] Backend Architect   ├── Phase 2: Architecture (parallel)
  [03] Database Architect  ┘
      ↓
  [05] Security Auditor ── Phase 3: Threat model (runs alongside dev)
      ↓
  [04] Quality Auditor ── Phase 4: Gate (blocks Phase 5)
      ↓
  [06] DevOps Engineer     ─┐
  [07] Deployment Engineer ─┘ Phase 5: Delivery (parallel)
      ↓
  [08] Performance Tuner ── Phase 6: Post-launch optimisation

## Communication Protocol
- Agents write summaries to /docs/ on task completion
- Orchestrator reads /docs/ to track progress across phases
- Blockers escalate to Orchestrator immediately
- Quality Auditor holds veto power over all production deployments

## Parallel Work Rules
- Frontend + Backend: always parallel once architecture is agreed
- Security Auditor: runs in parallel with implementation
- Performance Tuner: runs after QA sign-off
- Infra + App: parallel once API contracts are locked
