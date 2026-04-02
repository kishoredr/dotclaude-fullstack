---
name: database-design
description: Use when designing schemas, writing queries,
  or reviewing database migrations and index strategies.
---
Every table must have:
  id:         uuid PRIMARY KEY DEFAULT gen_random_uuid()
  created_at: timestamptz NOT NULL DEFAULT now()
  updated_at: timestamptz NOT NULL DEFAULT now()
  deleted_at: timestamptz nullable (soft delete pattern)

Always use:
- RETURNING clause on INSERT/UPDATE to get the mutated row back
- Transactions for any multi-table write
- PgBouncer or ORM-level connection pooling
- Parameterised queries — never string concatenation in SQL
