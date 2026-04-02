# Architecture Overview

## System Diagram
[Insert diagram or link]

## Components

### Frontend
- Framework: Next.js 14 (App Router)
- State: React Query + Zustand
- Styling: Tailwind CSS

### Backend
- Runtime: Node.js 20
- Framework: Express / FastAPI
- Auth: JWT + refresh tokens

### Database
- Primary: PostgreSQL 16
- Cache: Redis 7

### Infrastructure
- Container: Docker (multi-stage)
- Orchestration: Kubernetes / ECS
- CI/CD: GitHub Actions

## Key Architectural Decisions
| Decision | Choice | Reason |
|----------|--------|--------|
| API style | REST | Team familiarity, tooling maturity |
| Auth | JWT | Stateless, scalable |

## Data Flow
[Describe how a typical request flows through the system]

## ADRs
- See /docs/adr/ for all architecture decision records
