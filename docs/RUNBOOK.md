# Operations Runbook

## Health Checks
```bash
# App
curl https://yourapp.com/health

# Database
pg_isready -h $DB_HOST -U $DB_USER

# Cache
redis-cli -u $REDIS_URL ping
```

## Deploy to Production
```bash
# Ensure main branch CI is green, then:
./scripts/deploy.sh production
# Monitor dashboards for 30min post-deploy
```

## Rollback
```bash
./scripts/rollback.sh production [version]
# Version from: git tag --list 'v*' | tail -5
```

## Database Migration
```bash
# Always test on staging first
npm run migrate:staging
# Backup prod before migrating
npm run db:backup:production
npm run migrate:production
npm run migrate:status
```

## Alert Response
| Alert | First Action |
|-------|-------------|
| Error rate > 1% | Check logs → consider rollback |
| P95 > 500ms | Check DB slow queries + cache hit rate |
| CPU > 80% | Check for runaway process → scale up |
| Memory > 85% | Check for memory leak → restart pod |
