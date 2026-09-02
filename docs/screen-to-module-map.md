# Syncora Screen-to-Module Mapping

This document maps all implementable screens to their target monorepo application (`apps/web-portal` or `apps/mobile-app`), role context, and NestJS backend domain module (`apps/api/src/modules`).

## 🗺️ Domain Module Routing Matrix

### 1. Academic Module (`apps/api/src/modules/academic`)
*Timetable, Attendance, Gradebook, Examinations, Sessions, Courses, Departments, Section Management*

| Screen Directory | Role | Target App | Desktop/Mobile Breakpoints |
|---|---|---|---|
| `syncora_academic_calendar` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_academic_hub_interaction_states` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_academic_marks_entry` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_academic_performance_report` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_academic_years_semesters_management` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_assignment_submission_desktop` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_assignment_submission_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_assignment_submission_review` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_attendance_analytics_desktop` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_attendance_analytics_report` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_attendance_leaves_dashboard` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_attendance_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_course_detail_desktop` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_course_detail_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_course_subject_master` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_create_assignment` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_department_management` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_evaluation_summary_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_evaluation_workspace` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_exam_scheduling_dashboard` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_faculty_gradebook_desktop` | Faculty | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_faculty_gradebook_mobile` | Faculty | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_faculty_staff_evaluation_dashboard` | Faculty | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_quick_attendance_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_section_management` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_smart_timetable_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_student_attendance_warning_mobile` | Student | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_timetable_alert_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_timetable_conflict_dashboard` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_timetable_conflict_management` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_timetable_management_desktop` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_timetable_management_transposed` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 


### 2. Finance Module (`apps/api/src/modules/finance`)
*Fees, Invoicing, Billing, Late-fee automation, Scholarships, Receipts, Payments*

| Screen Directory | Role | Target App | Desktop/Mobile Breakpoints |
|---|---|---|---|
| `syncora_billing_invoicing_dashboard` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_finance_engine_interaction_states` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_finance_fees_dashboard` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_finance_fees_mobile` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_financial_collection_report` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_financial_reporting_budgeting` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_late_fee_automation_settings` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_mobile_payment_flow` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_my_bills_payments_mobile` | Student | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_scholarship_dashboard_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_scholarship_management_dashboard` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_transaction_receipt` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 


### 3. Security Module (`apps/api/src/modules/security`)
*Gate operations, Visitor pre-registration, Incident reporting, Emergency management, Campus ID Cards*

| Screen Directory | Role | Target App | Desktop/Mobile Breakpoints |
|---|---|---|---|
| `syncora_admin_security_console` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_campus_security_interaction_states` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_emergency_management_dashboard` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_gate_operations_guard_view` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_incident_reporting_management` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_security_command_center` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_transparent_glassmorphic_id_card` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_user_activity_security_logs` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_visitor_pre_registration` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 


### 4. Notifications Module (`apps/api/src/modules/notifications`)
*Multi-channel notification engine, Notification preferences, Alert overlays*

| Screen Directory | Role | Target App | Desktop/Mobile Breakpoints |
|---|---|---|---|
| `syncora_admin_dashboard_with_alerts` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_admin_dashboard_with_alerts_mobile` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_admin_notification_center` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_faculty_dashboard_with_alerts` | Faculty | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_faculty_dashboard_with_alerts_mobile` | Faculty | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_faculty_intervention_alert_mobile` | Faculty | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_notification_preferences` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_notification_preferences_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_notification_settings_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 


### 5. Core Platform Module (`apps/api/src/core` & Platform Services)
*Auth, User Profile, Roles & Permissions, Onboarding, Organization Management, Help Center*

| Screen Directory | Role | Target App | Desktop/Mobile Breakpoints |
|---|---|---|---|
| `syncora_active_sessions_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_admin_dashboard` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_admin_dashboard_mobile` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_admin_lite_dashboard` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_admin_onboarding` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_admin_policy_editor` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_admin_policy_editor_mobile` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_analytics_overview_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_api_documentation_portal` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_application_review_queue` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_application_review_queue_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_application_review_workspace` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_application_review_workspace_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_apply_for_leave_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_branding_appearance_settings` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_bulk_import_modal` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_bulk_import_progress` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_bulk_import_progress_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_bulk_import_review_confirm` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_bulk_import_review_confirm_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_bulk_import_success` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_bulk_import_success_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_campus_living_mobile` | Student | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_conflict_history_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_conflict_resolution_workspace` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_critical_system_outage` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_decision_committee_dashboard` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_decision_committee_dashboard_mobile` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_edit_record_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_edit_record_modal` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_error_states_404_500` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_event_calendar_management` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_export_download_center` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_external_integrations_hub` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_faculty_dashboard` | Faculty | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_faculty_dashboard_mobile` | Faculty | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_first_time_setup` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_first_time_setup_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_fleet_tracking_logistics` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_forbidden_state_403` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_forgot_password` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_forgot_password_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_grant_proposal_workspace` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_help_center` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_help_center_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_hostel_management_dashboard` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_import_error_detail` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_import_error_detail_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_institutional_excellence_landing_page` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_institutional_settings` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_institution_onboarding` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_institution_search` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_institution_search_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_integration_configuration` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_interactive_api_sandbox` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_language_localization_settings` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_leave_request_management` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_library_issuance_tracking` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_library_resource_directory` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_login` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_mentor_discovery_matching` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_my_bookshelf` | Student | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_my_bookshelf_mobile` | Student | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_notice_management` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_no_results_state` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_organizational_analytics_dashboard` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_organization_management` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_organization_management_mobile` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_organization_profile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_otp_verification` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_otp_verification_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_password_success` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_people_directory` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_people_directory_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_performance_review_workspace` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_platform_feature_management` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_platform_settings_suite` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_programs_management` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_release_notes_visual_export` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_reporting_dashboard` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_reports_analytics_dashboard` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_reports_analytics_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_reschedule_resolution_workspace` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_reschedule_slot_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_research_grant_dashboard` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_research_portal_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_reset_password` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_reset_password_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_roles_permissions_matrix` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_roles_permissions_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_role_permission_editor` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_role_selection` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_room_management` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_server_unavailable_503` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_splash_screen` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_student_dashboard_mobile` | Student | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_student_experience_interaction_states` | Student | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_student_onboarding_tour_mobile` | Student | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_student_results_mobile` | Student | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_student_results_portal` | Student | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_student_support_portal` | Student | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_student_wellness_mobile` | Student | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_super_admin_dashboard` | Super Admin | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_support_administration` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_task_management_dashboard` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_universal_search_overlay` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_user_management_console` | Management / Staff | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_user_profile_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_user_profile_settings` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_user_profile_settings_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
| `syncora_welcome_landing` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Desktop | 
| `syncora_welcome_landing_mobile` | Core / Shared | `apps/web-portal` / `apps/mobile-app` | Mobile | 
