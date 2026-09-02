# Syncora: Engineering Strategy & Production Roadmap
**Role:** Senior Engineering Manager
**State:** Greenfield Start (Production-ready SaaS focus)

## 1. Executive Summary & Philosophy
Syncora is transitioning from a high-fidelity conceptual prototype to a production-ready, multi-tenant SaaS platform. We are executing a "Total Module Parallelization" strategy, building all 20+ modules (from core Dashboards to specialized sub-systems like Hostel and Mentor Connect) concurrently on a shared, rock-solid foundation.

### Core Constraints
- **Zero Legacy:** No existing code. Prior artifacts are UX references only.
- **AI-Excluded:** Zero AI/ML infrastructure in v1. Design is "AI-Ready" through clean data structures and event-driven architecture.
- **Stack:** Flutter (Web/Mobile) → NestJS → Prisma → PostgreSQL.
- **Architecture:** Modular Monolith with mandatory multi-tenant isolation.

---

## 2. The Foundation: Multi-Tenancy & RBAC
The single most critical failure point in SaaS is tenant isolation. We build this *before* any feature module.

### Data Isolation Strategy
- Every tenant-scoped table MUST include `organization_id`.
- Indexing: Compound indices on `(organization_id, id)` for performance.
- Enforcement: Global NestJS `TenantGuard` extracts `organization_id` from the JWT, never the request body.

### Auth & RBAC (Role-Based Access Control)
- **Token Strategy:** JWT Access Tokens (short-lived) + Rotated Refresh Tokens (DB-stored).
- **The Matrix:** A centralized role-to-permission mapping defines access across all 16+ modules.
- **Super Admin vs. Org Admin:** Hard separation at the infrastructure layer.

---

## 3. High-Level Technical Architecture

### Backend (NestJS)
- **Modular Monolith:** Domain-driven modules (e.g., `FeesModule`, `LibraryModule`) within a single deployment.
- **Service Layer Pattern:** Controller → Service → Repository (Prisma).
- **Background Processing:** BullMQ + Redis for async tasks (Notification delivery, batch imports).

### Frontend (Flutter)
- **State Management:** Riverpod for low-boilerplate, testable state.
- **Navigation:** `go_router` with centralized route guards for Auth/Roles.
- **Contract-First:** Shared DTOs (Data Transfer Objects) between NestJS and Flutter.

---

## 4. Development Phases

| Phase | Focus | Key Deliverable |
| :--- | :--- | :--- |
| **0: Genesis** | Repo, CI/CD, Prisma Schema | "Health Check" endpoint live; migrations running. |
| **1: Security** | Auth, JWT, Tenant/Role Guards | Login flow with cross-tenant leak protection. |
| **2: Academic Core** | Org/User Onboarding, Academic Sessions | Foundational data for all modules. |
| **3: Shared Engines** | Notification Engine, Audit Logs | Shared services used by all 16+ modules. |
| **4: Parallel Wave** | Feature Modules (Fees, Library, etc.) | Concurrent development of all P2 features. |
| **5: Command Center** | Dashboards & Aggregated Reports | Role-specific dashboards (Student/Faculty/Admin). |
| **6: Production** | Hardening, Beta, Launch | 99.9% uptime target, backup verification. |

---

## 5. Notification Engine Design
A centralized service to handle all system-to-user communication.
- **Event-Driven:** Modules emit events (e.g., `ASSIGNMENT_GRADED`); the engine resolves recipients.
- **Multi-Channel:** Push (FCM), Email (SMTP/SaaS), and In-app notification tray.
- **Preferences:** Per-user controls for frequency and channel.

---

## 6. Critical Success Factors
1. **Repository Enforcement:** No direct DB access in services; all queries go through a repository that enforces the `organization_id` filter.
2. **Schema Uniformity:** Every module follows the same soft-delete and audit-logging pattern.
3. **UI Consistency:** 16 modules must use a shared component library in Flutter to prevent design drift.
4. **Tenant Isolation Testing:** Automated suite that attempts to access Data A with Token B as part of the CI pipeline.
