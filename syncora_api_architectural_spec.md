# Syncora API Architectural Specification
**Role:** Senior Engineering Manager
**Focus:** Scalability, Multi-Tenancy, and Secure Data Access

## 1. Multi-Tenant Request Lifecycle
Every API request goes through a strict verification funnel to ensure data isolation.

### A. Authentication Layer (JWT + Rotation)
- **Validation:** The `AuthGuard` verifies the JWT signature and expiration.
- **Session Check:** For sensitive operations, the `SessionGuard` checks the DB to ensure the Refresh Token family hasn't been revoked (theft protection).

### B. Tenancy Guard (NestJS Middleware)
- **Extraction:** The `TenantGuard` extracts the `org_id` from the JWT payload.
- **Context Injection:** The `org_id` is injected into the `Request` object.
- **Enforcement:** A Prisma middleware automatically appends `{ where: { organizationId: req.org_id } }` to every query, preventing cross-tenant data leaks at the ORM level.

---

## 2. Global Exception Handling
All API responses follow a standardized JSON format to improve frontend error handling.

```json
{
  "success": false,
  "error": {
    "code": "TENANT_SUSPENDED",
    "message": "This organization has been suspended. Please contact support.",
    "timestamp": "2024-10-24T12:00:00Z",
    "traceId": "syncora-trace-uuid"
  }
}
```

---

## 3. Asynchronous Task Pattern (BullMQ)
For operations like **Bulk Imports** or **Notification Blasts**, we use a Producer-Consumer pattern.

1. **Endpoint:** Admin uploads a file.
2. **Controller:** Validates file and metadata.
3. **Producer Service:** Pushes a job to the `import-queue` with the `org_id`.
4. **Immediate Response:** Returns `202 Accepted` with a `jobId`.
5. **Worker Service:** Picks up the job, performs atomic DB transactions, and emits a `JOB_COMPLETE` event to the Notification Engine.

---

## 4. Scalable Service Structure
Each module (e.g., `FinanceModule`) is encapsulated:

- **`.controller.ts`**: Entry points, DTO validation, and permission decorators.
- **`.service.ts`**: Business logic, event emission, and integration with shared services.
- **`.repository.ts`**: Pure database interactions via Prisma, enforcing tenancy filters.
- **`.dto.ts`**: Class-validator schemas for input/output sanitization.

---

## 5. Security Checklist
- [ ] **Bcrypt/Argon2** for all password hashing.
- [ ] **Rate Limiting** per `org_id` and `IP`.
- [ ] **Audit Logging** for all `WRITE` operations (CUD).
- [ ] **CORS** restricted to institutional domains and official Syncora clients.
- [ ] **TLS 1.3** mandatory for all traffic.
