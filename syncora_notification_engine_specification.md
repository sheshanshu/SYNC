# Syncora Notification Engine: Technical Specification & Event Logic
**Role:** Senior Engineering Manager
**Focus:** Scalable, Multi-Channel, Tenant-Isolated Communication

## 1. Core Architecture
The Notification Engine is a centralized, event-driven service. Modules (e.g., `Attendance`, `Fees`, `Assignments`) emit events; the engine resolves recipients and handles delivery.

### Event Structure
```json
{
  "event_id": "UUID",
  "event_code": "ASSIGNMENT_GRADED",
  "org_id": "organization_id",
  "actor_id": "faculty_id",
  "subject_id": "assignment_id",
  "payload": {
    "course_name": "Advanced Algorithms",
    "assignment_title": "Lab 4",
    "grade": "A",
    "deep_link": "/student/assignments/lab-4"
  },
  "recipients": ["student_id"]
}
```

---

## 2. Delivery Channels
Notifications are delivered based on user preferences and event priority.
- **In-App:** Real-time socket updates + persistent database tray.
- **Push:** FCM (Firebase Cloud Messaging) for mobile/web.
- **Email:** Transactional SMTP (Postmark/SendGrid) for formal notices.
- **SMS:** High-priority alerts (e.g., Campus Emergency).

---

## 3. Event Rules & Priority Matrix

| Event Code | Priority | Default Channels | Logic |
| :--- | :--- | :--- | :--- |
| **CAMPUS_EMERGENCY** | URGENT | Push, SMS, Email, In-App | Bypass all "Do Not Disturb" settings. |
| **FEE_PAST_DUE** | HIGH | Email, Push, In-App | Recurring reminder every 3 days until paid. |
| **ASSIGNMENT_GRADED** | MEDIUM | Push, In-App | Single delivery to specific student. |
| **NEW_NOTICE_POSTED** | MEDIUM | Push, In-App | Targeted by Department/Role. |
| **SYSTEM_MAINTENANCE** | LOW | In-App | Banner-only notification. |

---

## 4. Multi-Tenant Isolation
- **Tenant Scoping:** The `NotificationGuard` ensures `org_id` in the event matches the recipient's `org_id`.
- **Preference Storage:** Per-user preferences are stored in `notification_preferences` with `organization_id` to allow different settings across multi-tenant memberships.

---

## 5. Async Processing (BullMQ + Redis)
1. **Producer:** Module pushes event to `notification-queue`.
2. **Worker:** Resolves templates (i.e., mapping `ASSIGNMENT_GRADED` to a localized string).
3. **Worker:** Checks user preferences and throttling rules.
4. **Worker:** Executes delivery via 3rd party provider APIs.
5. **Worker:** Writes to `audit_logs` and updates `Notification` table status (SENT, DELIVERED, READ).