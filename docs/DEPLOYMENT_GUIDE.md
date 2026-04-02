# Deployment Guide

## Environments
| Env | URL | Branch | Trigger |
|-----|-----|--------|---------|
| Development | localhost:3000 | any | Manual |
| Staging | staging.yourapp.com | develop | Auto on push |
| Production | yourapp.com | main | Manual gate |

## First Deploy (one-time setup)
```bash
# 1. Configure AWS credentials
aws configure

# 2. Provision infrastructure
cd infra/terraform
terraform init && terraform apply

# 3. Push secrets to AWS Secrets Manager
aws secretsmanager create-secret --name myapp/prod --secret-string file://.env.production
```

## Regular Deploy
```bash
# Staging (auto via CI on push to develop)
git push origin develop

# Production (manual gate in GitHub Actions)
gh pr merge --squash
# Then approve the deployment in GitHub Actions UI
```

## Verify Deploy
```bash
# Check health endpoint
curl https://yourapp.com/health

# Check recent logs
kubectl logs -l app=myapp --tail=50 -n production
```
