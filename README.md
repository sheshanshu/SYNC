# Syncora - Campus Operating Platform

Syncora is a multi-tenant, education-first campus operating platform (Student / Faculty / Management roles) designed for parallel development across 20+ feature modules on top of a rock-solid foundation.

## 🏗️ Monorepo Architecture

```text
syncora-platform/
├── apps/
│   ├── api/                 # NestJS Backend (Modular Monolith)
│   ├── web-portal/          # Flutter Web (Admin / Faculty / Student)
│   └── mobile-app/          # Flutter Mobile (Common Shell)
├── libs/
│   ├── shared/
│   │   ├── dto/             # Shared Request/Response DTOs & Validation
│   │   └── types/           # Common TypeScript Interfaces & ENUMs
│   ├── ui-kit/              # Flutter Shared Theme & Component Library
│   └── database/            # Prisma Schema & PostgreSQL Client
├── docker/                  # Local Dev & Production Compose Configs
├── scripts/                 # Migration & Deployment Automation
└── turbo.json               # Monorepo Pipeline Caching & Orchestration
```

## 🔒 Key Architectural Rules
1. **Tenancy Enforcement**: Every query touching tenant data is filtered by `organization_id`, enforced at the backend repository/guard layer.
2. **Contract-First**: Data structures start in `libs/shared/dto` and `libs/shared/types` before being consumed by API or frontends.
3. **Module Isolation**: Feature modules inside `apps/api/src/modules/` (Finance, Academic, Security, Notifications) never import each other directly. Verified via `npm run lint:boundaries`.
4. **UI Consistency**: All frontend widgets derive from `libs/ui-kit` to guarantee unified typography, spacing, and glassmorphic styling across web and mobile.

## 🚀 Quickstart

### Prerequisites
- Node.js >= 18
- Docker & Docker Compose
- Flutter SDK (for web/mobile development)

### 1. Install Dependencies
```bash
npm install
```

### 2. Boot Local Database (PostgreSQL & Redis)
```bash
docker compose -f docker/docker-compose.yml up -d postgres redis
```

### 3. Run Database Migrations
```bash
npm run db:migrate
```

### 4. Build Libraries & Apps
```bash
npm run build
```

### 5. Run API Backend
```bash
npm --prefix apps/api run start:dev
```

### 6. Run Module Boundary Guard Check
```bash
npm run lint:boundaries
```
