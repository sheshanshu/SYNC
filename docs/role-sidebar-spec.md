# Syncora Role-Based Sidebar Navigation Specification

This document defines the canonical per-role sidebar navigation configuration for the four user roles in Syncora (`Student`, `Faculty`, `Management / Staff`, `Super Admin`).

> [!IMPORTANT]
> The sidebar and logo placement is **one shared component per role** (`RoleSidebar` in `libs/ui-kit`), sourcing items and branding from this single config.

---

## 1. Student Role Navigation (`Role.student`)
- **Logo**: `SYNCORA` Mark + Indigo Badge ("STUDENT PORTAL")
- **Nav Items**:
  1. `Dashboard` (Icon: `Icons.dashboard_rounded`, Route: `/student/dashboard`)
  2. `Academic & Timetable` (Icon: `Icons.calendar_month_rounded`, Route: `/student/timetable`)
  3. `Assignments & Marks` (Icon: `Icons.assignment_rounded`, Route: `/student/assignments`)
  4. `Attendance & Leaves` (Icon: `Icons.fact_check_rounded`, Route: `/student/attendance`)
  5. `My Bills & Payments` (Icon: `Icons.account_balance_wallet_rounded`, Route: `/student/bills`)
  6. `Bookshelf & Library` (Icon: `Icons.menu_book_rounded`, Route: `/student/bookshelf`)
  7. `Campus Living & Support` (Icon: `Icons.nightlife_rounded`, Route: `/student/campus-living`)

---

## 2. Faculty Role Navigation (`Role.faculty`)
- **Logo**: `SYNCORA` Mark + Teal Badge ("FACULTY PORTAL")
- **Nav Items**:
  1. `Overview Dashboard` (Icon: `Icons.space_dashboard_rounded`, Route: `/faculty/dashboard`)
  2. `Gradebook & Evaluation` (Icon: `Icons.grade_rounded`, Route: `/faculty/gradebook`)
  3. `Quick Attendance` (Icon: `Icons.fact_check_rounded`, Route: `/faculty/attendance`)
  4. `Smart Timetable` (Icon: `Icons.calendar_view_week_rounded`, Route: `/faculty/timetable`)
  5. `Student Interventions` (Icon: `Icons.warning_amber_rounded`, Route: `/faculty/interventions`)
  6. `Research & Grants` (Icon: `Icons.science_rounded`, Route: `/faculty/research`)

---

## 3. Management / Staff Navigation (`Role.management`)
- **Logo**: `SYNCORA` Mark + Slate Badge ("ADMIN CONSOLE")
- **Nav Items**:
  1. `Command Center` (Icon: `Icons.dashboard_customize_rounded`, Route: `/admin/dashboard`)
  2. `Academic Hub` (Icon: `Icons.school_rounded`, Route: `/admin/academic`)
  3. `Finance & Fees Engine` (Icon: `Icons.payments_rounded`, Route: `/admin/finance`)
  4. `Security Command Center` (Icon: `Icons.shield_rounded`, Route: `/admin/security`)
  5. `Gate Operations & Visitors` (Icon: `Icons.sensor_door_rounded`, Route: `/admin/gate-ops`)
  6. `Reports & Analytics` (Icon: `Icons.analytics_rounded`, Route: `/admin/reports`)
  7. `Organization Management` (Icon: `Icons.domain_rounded`, Route: `/admin/org`)

---

## 4. Super Admin Navigation (`Role.superAdmin`)
- **Logo**: `SYNCORA` Mark + Amber Badge ("SUPER ADMIN")
- **Nav Items**:
  1. `Global Control Panel` (Icon: `Icons.admin_panel_settings_rounded`, Route: `/super/dashboard`)
  2. `Tenant Organizations` (Icon: `Icons.apartment_rounded`, Route: `/super/tenants`)
  3. `Platform Settings Suite` (Icon: `Icons.tune_rounded`, Route: `/super/settings`)
  4. `System Health & Outages` (Icon: `Icons.health_and_safety_rounded`, Route: `/super/health`)
  5. `Audit Logs & Security Console` (Icon: `Icons.security_rounded`, Route: `/super/audit-logs`)
