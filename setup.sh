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

PROJECT="${1:-my-app}"
echo -e "${YELLOW}→ Scaffolding project: $PROJECT${NC}"
mkdir -p "$PROJECT" && cd "$PROJECT"

# ── Pull .claude/ config from the repo ────────────────────────
echo "Downloading .claude/ config..."
curl -fsSL https://github.com/kishoredr/dotclaude-fullstack/archive/main.tar.gz \
  | tar xz --strip=1 "dotclaude-fullstack-main/.claude" \
            "dotclaude-fullstack-main/docs"

# ── Create application folder structure in the USER's project ──
mkdir -p src/frontend/components src/frontend/pages
mkdir -p src/backend/{routes,controllers,services,repositories,middleware,validators,utils}
mkdir -p src/shared/types
mkdir -p src/migrations
mkdir -p tests/{frontend,backend,e2e}
mkdir -p infra/{terraform,kubernetes}
mkdir -p scripts
mkdir -p .github/workflows
mkdir -p assets

# ── Stub files ─────────────────────────────────────────────────
touch .env.example .gitignore scripts/deploy.sh scripts/rollback.sh
chmod +x scripts/deploy.sh scripts/rollback.sh

echo -e "${GREEN}✓ Done — $PROJECT/ is ready${NC}"
echo ""
echo "Next steps:"
echo "  1.  cd $PROJECT"
echo "  2.  Update .claude/CLAUDE.md with your stack"
echo "  3.  git init && git add . && git commit -m 'feat: initial scaffold'"
echo "  4.  claude"
echo ""
echo -e "${BLUE}  https://github.com/kishoredr/dotclaude-fullstack${NC}"