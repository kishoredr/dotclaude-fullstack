#!/bin/bash
# ================================================================
# dotclaude-fullstack — setup script
# https://github.com/kishoredr/dotclaude-fullstack
# Usage: bash setup.sh [project-name]
# ================================================================
set -e
GREEN='\033[0;32m'; BLUE='\033[0;34m'; YELLOW='\033[1;33m'; NC='\033[0m'
echo -e "${BLUE}"
echo "╔══════════════════════════════════════════════════╗"
echo "║  dotclaude-fullstack · kishoredr                 ║"
echo "║  github.com/kishoredr/dotclaude-fullstack        ║"
echo "║  9 agents · 12 skills · production-ready        ║"
echo "╚══════════════════════════════════════════════════╝"
echo -e "${NC}"
PROJECT="${1:-dotclaude-fullstack}"
echo -e "${YELLOW}→ Creating project: $PROJECT${NC}"
mkdir -p "$PROJECT" && cd "$PROJECT"
mkdir -p assets .claude/agents .claude/orchestration
for skill in frontend-design backend-architecture database-design api-design \
             seo-optimization security-scanning deployment-automation \
             performance-testing code-review testing-strategy \
             documentation incident-response; do
  mkdir -p ".claude/skills/$skill"
done
mkdir -p docs/adr src/frontend/components src/frontend/pages
mkdir -p src/backend/{routes,controllers,services,repositories,middleware,validators,utils}
mkdir -p src/shared/types src/migrations
mkdir -p tests/{frontend,backend,e2e}
mkdir -p infra/{terraform,kubernetes} .github/workflows scripts
echo -e "${GREEN}✓ Folders created${NC}"
echo ""
echo -e "${GREEN}✓ Done! Now:${NC}"
echo "  1. cd $PROJECT"
echo "  2. Copy agent + skill files from the repo into .claude/"
echo "  3. Update .claude/CLAUDE.md with your stack"
echo "  4. git init && git add . && git commit -m 'feat: initial scaffold'"
echo "  5. gh repo create dotclaude-fullstack --public --source=. --push"
echo "  6. claude  ← open Claude Code"
echo ""
echo -e "${BLUE}  https://github.com/kishoredr/dotclaude-fullstack${NC}"