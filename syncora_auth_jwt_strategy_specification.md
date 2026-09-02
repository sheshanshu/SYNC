# Syncora Auth & JWT Strategy: Technical Specification
**Role:** Senior Engineering Manager
**Focus:** Secure Multi-Tenant Isolation & Session Integrity

## 1. Token Architecture
We implement a stateless JWT-based authentication system with stateful session management for rotation and revocation.

### Access Token (Short-lived)
- **Life:** 15 minutes.
- **Payload:**
  ```json
  {
    "sub": "user_id",
    "org_id": "organization_id",
    "roles": ["OrgAdmin", "Faculty"],
    "permissions": ["assignment:create", "user:read"],
    "iat": 1700000000,
    "exp": 1700000900
  }
  ```
- **Enforcement:** The `TenantGuard` extracts `org_id` directly from this verified token. No request can touch the DB without a valid `org_id` match.

### Refresh Token (Long-lived & Rotated)
- **Life:** 7 days.
- **Storage:** Stored in an encrypted `sessions` table in PostgreSQL.
- **Rotation:** Every refresh request issues a NEW refresh token and invalidates the old one. If an old token is reused, the entire session family is revoked (detection of token theft).

---

## 2. Security Guards (NestJS Layer)

### Global `TenantGuard`
Every controller is protected by default.
1. Extract JWT from `Authorization: Bearer <token>`.
2. Verify signature.
3. Inject `req.organizationId` into the request context.
4. All Prisma queries are wrapped in a middleware that appends `where: { organizationId: req.organizationId }`.

### `PermissionsGuard`
Granular RBAC enforcement.
- Decorator: `@CheckPermissions('assignment:delete')`
- Logic: Matches the required permission against the `permissions` array in the JWT payload.

---

## 3. Session Management & Revocation
- **Global Logout:** Deletes all refresh tokens for a `user_id`.
- **Tenant Suspension:** If an `Organization` is marked `inactive`, the `TenantGuard` rejects all tokens associated with that `org_id` immediately upon the next request.

---

## 4. Auth Flow Security
- **Hashing:** Argon2 for password storage.
- **Transport:** Mandatory TLS 1.3.
- **Cookies:** Refresh tokens delivered via `HttpOnly`, `Secure`, `SameSite=Strict` cookies to prevent XSS-based theft.
