# <img src="banner.png" alt="dotclaude-fullstack" width="100%"/>

<div align="center">

[![Stars](https://img.shields.io/github/stars/kishoredr/dotclaude-fullstack?style=flat-square&color=7F77DD)](https://github.com/kishoredr/dotclaude-fullstack/stargazers)
[![Forks](https://img.shields.io/github/forks/kishoredr/dotclaude-fullstack?style=flat-square&color=1D9E75)](https://github.com/kishoredr/dotclaude-fullstack/network/members)
[![License](https://img.shields.io/github/license/kishoredr/dotclaude-fullstack?style=flat-square&color=D85A30)](LICENSE)
[![Claude Code](https://img.shields.io/badge/Claude_Code-compatible-7F77DD?style=flat-square)](https://claude.ai/code)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-1D9E75?style=flat-square)](CONTRIBUTING.md)

**A production-grade `.claude/` configuration with 9 specialist agents and 12 modular skills.**
Drop it into any project and Claude Code becomes an autonomous full-stack development team.

[Quick Start](#-quick-start) · [Agents](#-agents) · [Skills](#-skills) · [How It Works](#-how-it-works) · [Contributing](#-contributing)

</div>

---

## ✨ What This Is

This repo gives you a complete `.claude/` folder system — copy it into any project and Claude Code transforms into a coordinated team of specialists:

- 🧠 **Orchestrator** plans the work, manages phases, and delegates to the right agents
- 🎨 **Frontend Architect** builds accessible, performant UIs with React/Next.js
- ⚙️ **Backend Architect** designs APIs, auth, and service patterns
- 🗄️ **Database Architect** creates schemas, migrations, and caching strategy
- ✅ **Quality Auditor** gates every deployment with a go/no-go verdict
- 🔒 **Security Auditor** runs OWASP checks and threat modeling
- 🚀 **DevOps Engineer** writes Dockerfile, Terraform, and CI/CD pipelines
- 📦 **Deployment Engineer** manages releases, runbooks, and rollback
- ⚡ **Performance Tuner** benchmarks, profiles, and optimises

---

## 🚀 Quick Start

### Option 1 — One-line install (recommended)

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/kishoredr/dotclaude-fullstack/main/setup.sh)
```

### Option 2 — Clone and copy

```bash
git clone https://github.com/kishoredr/dotclaude-fullstack.git
cp -r dotclaude-fullstack/.claude your-project/
cd your-project
```

### Option 3 — GitHub template

Click **"Use this template"** at the top of this repo.

---

## 🛠️ Setup — Step by Step

### Step 1 — Install Claude Code

```bash
npm install -g @anthropic-ai/claude-code
```

Requires Claude Max plan or API access with Opus + Sonnet models.

### Step 2 — Copy the `.claude/` folder

```bash
bash setup.sh my-app-name
```

### Step 3 — Customise `CLAUDE.md`

Open `.claude/CLAUDE.md` and update the Stack section:

```markdown
## Stack
- Frontend: Vue 3 + Nuxt
- Backend:  Python + FastAPI
- Database: MongoDB
```

### Step 4 — Open Claude Code

```bash
cd your-project
claude
```

### Step 5 — Start building

```
I'm building a SaaS invoice management app with Stripe payments.
Please orchestrate the full-stack development.
```

---

## 🤖 Agents

| # | Agent | Model | Role |
|---|-------|-------|------|
| 00 | `orchestrator` | Opus | Master controller — plans, phases, delegates |
| 01 | `frontend-architect` | Sonnet | React/Next.js, Tailwind, a11y, Core Web Vitals |
| 02 | `backend-architect` | Sonnet | REST APIs, business logic, auth, background jobs |
| 03 | `database-architect` | Sonnet | PostgreSQL, migrations, indexes, Redis caching |
| 04 | `quality-auditor` | Opus | Test coverage, code review, go/no-go gate |
| 05 | `security-auditor` | Sonnet | OWASP Top 10, threat modeling, dep audit |
| 06 | `devops-engineer` | Sonnet | Docker, Terraform, GitHub Actions, monitoring |
| 07 | `deployment-engineer` | Sonnet | Releases, runbooks, rollback, incident playbooks |
| 08 | `performance-tuner` | Sonnet | Load testing, profiling, bottleneck fixes |

### Phase Flow

```
User brief → [00] Orchestrator (Discovery)
           → [01][02][03] Architects (parallel)
           → [05] Security (alongside dev)
           → [04] Quality Gate (blocks deploy)
           → [06][07] DevOps + Deploy (parallel)
           → [08] Performance (post-launch)
```

---

## 🔧 Skills

| Skill | Covers |
|-------|--------|
| `frontend-design` | Tailwind, a11y, CLS prevention, loading states |
| `backend-architecture` | Layer pattern, async rules, circuit breakers |
| `database-design` | Schema standards, indexing, soft deletes |
| `api-design` | REST conventions, status codes, pagination |
| `seo-optimization` | Meta, OG, structured data, GEO/AEO |
| `security-scanning` | OWASP code rules, dependency audit |
| `deployment-automation` | Pipeline stages, rollback automation |
| `performance-testing` | k6/Artillery profiles, Node.js profiling |
| `code-review` | Review order, flag criteria |
| `testing-strategy` | Pyramid ratios, coverage targets, E2E flows |
| `documentation` | ADR template, file locations, writing standards |
| `incident-response` | Severity, response steps, post-mortem |

---

## 📁 Structure

```
dotclaude-fullstack/
├── .claude/
│   ├── CLAUDE.md                 ← update with your stack
│   ├── agents/                   ← 9 agent prompts
│   ├── skills/                   ← 12 skill definitions
│   └── orchestration/workflow.md
├── docs/                         ← auto-populated by agents
├── src/frontend/ backend/ shared/
├── tests/ infra/ scripts/
├── .github/workflows/ci.yml
├── Dockerfile · docker-compose.yml
└── setup.sh
```

---

## 📊 Built-in Quality Standards

| Standard | Target |
|----------|--------|
| Test coverage | ≥ 80% |
| Security CVEs | Zero high/critical |
| API P95 latency | < 200ms |
| Lighthouse | > 90 |
| LCP | < 2.5s |
| CLS | < 0.1 |

---

## 🤝 Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). PRs welcome for new agents, skills, and improvements.

Ideas: `mobile-architect` · `ml-engineer` · `graphql-design` · `accessibility-auditor`

---

## 📖 Resources

- [Claude Code docs](https://docs.anthropic.com/en/docs/claude-code)
- [Claude Code skills](https://docs.anthropic.com/en/docs/claude-code/skills)
- [Claude Code subagents](https://docs.anthropic.com/en/docs/claude-code/sub-agents)