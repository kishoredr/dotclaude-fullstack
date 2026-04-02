---
name: api-design
description: Use when designing REST or GraphQL APIs, defining contracts,
  or writing OpenAPI specs.
---
REST conventions:
- Resources: nouns, plural (/users not /getUser)
- Max 2 nesting levels: /users/:id/posts is ok, deeper is not
- Filtering: query params (?status=active&role=admin)
- Pagination: cursor-based for large datasets
  Response shape: { data: [], meta: { next_cursor, total } }

Status codes (strict):
- 200 OK | 201 Created | 204 No Content
- 400 Validation | 401 Unauthenticated | 403 Forbidden
- 404 Not Found | 409 Conflict | 422 Unprocessable
- 429 Rate Limited | 500 Internal (never expose details)
