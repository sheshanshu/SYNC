# Syncora: Automation Rules Permission Matrix
**Role:** Lead Architect / Security Lead
**Focus:** Granular RBAC for System-Critical Automation

## 1. Governance Philosophy
Automation rules (Timetables, Fees, Attendance) are high-impact configurations. Access is restricted using a "Principal of Least Privilege" model, ensuring only verified administrative personnel can alter institutional logic.

## 2. Permission Definitions
- `rules:read`: View existing automation logic and history.
- `rules:create`: Define new automation triggers and actions.
- `rules:update`: Modify active rule parameters (e.g., change fee percentage).
- `rules:delete`: Deactivate or remove automation rules.
- `rules:bypass`: One-time manual override for a specific student/instance.

## 3. The Matrix (Role-to-Permission Mapping)

| Role | `rules:read` | `rules:create` | `rules:update` | `rules:delete` | `rules:bypass` | Rationale |
| :--- | :---: | :---: | :---: | :---: | :---: | :--- |
| **Super Admin** | ✓ | ✓ | ✓ | ✓ | ✓ | Full platform control across all tenants. |
| **Org Admin** | ✓ | ✓ | ✓ | ✓ | ✓ | Institutional head with full control over local rules. |
| **Finance Manager** | ✓ | ✓ (Fees) | ✓ (Fees) | ✓ (Fees) | ✓ (Fees) | Scoped strictly to the Finance/Fee Automation module. |
| **Academic Registrar** | ✓ | ✓ (Sched) | ✓ (Sched) | ✓ (Sched) | ✓ (Sched) | Scoped to Timetable and Attendance logic. |
| **Faculty** | ✓ | - | - | - | ✓ | Can view rules and request/apply local bypasses. |
| **Student** | - | - | - | - | - | Zero access to automation logic. |

## 4. Enforcement Logic
The `PermissionsGuard` in the NestJS layer validates the `permissions` array in the JWT. 
Example: `POST /api/v1/finance/rules` requires `rules:create` AND a scope check for `module:finance`.

## 5. Audit Logging
Every `WRITE` operation (`create`, `update`, `delete`, `bypass`) on automation rules triggers a mandatory audit entry:
- `timestamp`: UTC
- `actor_id`: UUID
- `action`: rules:update
- `delta`: `{ "threshold": 75, "new_threshold": 80 }`
- `reason`: "Board decision FY24-Q3"
