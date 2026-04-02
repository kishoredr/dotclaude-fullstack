#!/bin/bash
# Usage: ./scripts/rollback.sh [environment] [version]
# Example: ./scripts/rollback.sh production v1.2.3
set -e
ENV="${1:?Usage: $0 [environment] [version]}"
VERSION="${2:?Usage: $0 [environment] [version]}"
echo "Rolling back $ENV to $VERSION..."
# kubectl set image deployment/app app=yourimage:$VERSION -n $ENV
echo "Rollback initiated. Monitor dashboards for 15min."
