# Database Schema

## Overview
[ERD diagram or brief description of entity relationships]

## Tables

### users
| Column | Type | Constraints |
|--------|------|-------------|
| id | uuid | PK DEFAULT gen_random_uuid() |
| email | varchar(255) | NOT NULL UNIQUE |
| password_hash | varchar(255) | NOT NULL |
| created_at | timestamptz | NOT NULL DEFAULT now() |
| updated_at | timestamptz | NOT NULL DEFAULT now() |
| deleted_at | timestamptz | nullable |

## Indexes
| Table | Columns | Type | Reason |
|-------|---------|------|--------|
| users | email | B-tree UNIQUE | Login lookup |

## Migrations
Run order and dependencies documented in /src/migrations/README.md

## Caching Strategy
| Key Pattern | TTL | Invalidated When |
|-------------|-----|-----------------|
| user:{id}:profile | 5min | User profile updated |
