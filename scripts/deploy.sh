#!/bin/bash
# Usage: ./scripts/deploy.sh [environment]
# Example: ./scripts/deploy.sh staging
set -e
ENV="${1:?Usage: $0 [environment]}"
echo "Deploying to $ENV..."
# Add your deploy commands here
# e.g. kubectl apply -f infra/kubernetes/ -n $ENV
echo "Deploy complete. Monitoring for 30min recommended."
