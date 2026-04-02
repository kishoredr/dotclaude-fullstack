# API Specification

## Base URL
Production: `https://api.yourapp.com/api/v1`
Staging:    `https://staging-api.yourapp.com/api/v1`

## Authentication
Protected endpoints require: `Authorization: Bearer <access_token>`

## Response Envelope
```json
{
  "data": {},
  "error": null,
  "meta": { "page": 1, "total": 100 }
}
```

## Endpoints

### Auth
| Method | Path | Auth | Description |
|--------|------|:----:|-------------|
| POST | /auth/register | No | Register new user |
| POST | /auth/login | No | Login, returns token pair |
| POST | /auth/refresh | No | Exchange refresh for new access token |
| POST | /auth/logout | Yes | Revoke refresh token |

## Error Codes
| Code | HTTP | Meaning |
|------|------|---------|
| VALIDATION_ERROR | 400 | Request body failed Zod validation |
| UNAUTHORIZED | 401 | Missing or expired token |
| FORBIDDEN | 403 | Authenticated but lacks permission |
| NOT_FOUND | 404 | Resource does not exist |
| CONFLICT | 409 | Duplicate unique constraint |
| RATE_LIMITED | 429 | Too many requests |
| INTERNAL_ERROR | 500 | Server error (details never exposed) |
