# Project Configuration
# dotclaude-fullstack · https://github.com/kishoredr/dotclaude-fullstack

## Stack
- Frontend: Next.js 14 + React + Tailwind CSS
- Backend: Node.js + Express (or Python + FastAPI)
- Database: PostgreSQL + Redis
- Infra: Docker + AWS (ECS/EKS)
- CI/CD: GitHub Actions
- Monitoring: Prometheus + Grafana

## Active Agents
- 00-orchestrator (primary controller)
- 01-frontend-architect
- 02-backend-architect
- 03-database-architect
- 04-quality-auditor
- 05-security-auditor
- 06-devops-engineer
- 07-deployment-engineer
- 08-performance-tuner

## Project Paths
- Frontend:   /src/frontend/
- Backend:    /src/backend/
- Shared:     /src/shared/types/
- Migrations: /src/migrations/
- Tests:      /tests/
- Infra:      /infra/
- Docs:       /docs/

## Quality Gates
- Test coverage: minimum 80%
- Zero high/critical CVEs
- P95 API latency < 200ms
- Lighthouse score > 90
- No deploy without Quality Auditor sign-off

## Coding Standards
- TypeScript strict mode
- ESLint + Prettier enforced
- Conventional commits
- Secrets via environment variables only
- No console.log in production

## SEO Requirements
- Unique title + meta description per page
- Open Graph tags on all pages
- Structured data (JSON-LD) on key pages
- Core Web Vitals passing (LCP, CLS, INP)

## Security Baseline
- OWASP Top 10 compliance
- JWT with refresh token rotation
- Rate limiting on all public endpoints
- Input validation on all user inputs