# Syncora Screen Inventory & Classification

This document provides a comprehensive classification of all 207 folders in the `stitch_syncora_campus_operating_platform` package into four distinct buckets in accordance with Section 2 of the UI implementation spec.

## 📊 Inventory Summary
- **Implementable Screens**: 174
- **Duplicate / Iteration Sets**: 16
- **Documentation / Non-UI Assets**: 17
- **Desktop / Mobile Responsive Pairs**: 53 pairs identified

---

## 1. Implementable Screens

| # | Directory Name | Role | Responsive Pair | Domain Module | Status |
|---|---|---|---|---|---|
| 1 | `syncora_academic_calendar` | Core / Shared | Desktop Standard | `academic` | Ready for Flutter | 
| 2 | `syncora_academic_hub_interaction_states` | Core / Shared | Desktop Standard | `academic` | Ready for Flutter | 
| 3 | `syncora_academic_marks_entry` | Core / Shared | Desktop Standard | `academic` | Ready for Flutter | 
| 4 | `syncora_academic_performance_report` | Core / Shared | Desktop Standard | `academic` | Ready for Flutter | 
| 5 | `syncora_academic_years_semesters_management` | Management / Staff | Desktop Standard | `academic` | Ready for Flutter | 
| 6 | `syncora_active_sessions_mobile` | Core / Shared | Mobile Variant | `core / platform` | Ready for Flutter | 
| 7 | `syncora_admin_dashboard` | Management / Staff | Desktop + Mobile (`syncora_admin_dashboard_mobile`) | `core / platform` | Ready for Flutter | 
| 8 | `syncora_admin_dashboard_mobile` | Management / Staff | Mobile Variant | `core / platform` | Ready for Flutter | 
| 9 | `syncora_admin_dashboard_with_alerts` | Management / Staff | Desktop + Mobile (`syncora_admin_dashboard_with_alerts_mobile`) | `notifications` | Ready for Flutter | 
| 10 | `syncora_admin_dashboard_with_alerts_mobile` | Management / Staff | Mobile Variant | `notifications` | Ready for Flutter | 
| 11 | `syncora_admin_lite_dashboard` | Management / Staff | Desktop Standard | `core / platform` | Ready for Flutter | 
| 12 | `syncora_admin_notification_center` | Management / Staff | Desktop Standard | `notifications` | Ready for Flutter | 
| 13 | `syncora_admin_onboarding` | Management / Staff | Desktop Standard | `core / platform` | Ready for Flutter | 
| 14 | `syncora_admin_policy_editor` | Management / Staff | Desktop + Mobile (`syncora_admin_policy_editor_mobile`) | `core / platform` | Ready for Flutter | 
| 15 | `syncora_admin_policy_editor_mobile` | Management / Staff | Mobile Variant | `core / platform` | Ready for Flutter | 
| 16 | `syncora_admin_security_console` | Management / Staff | Desktop Standard | `security` | Ready for Flutter | 
| 17 | `syncora_analytics_overview_mobile` | Core / Shared | Mobile Variant | `core / platform` | Ready for Flutter | 
| 18 | `syncora_api_documentation_portal` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 19 | `syncora_application_review_queue` | Core / Shared | Desktop + Mobile (`syncora_application_review_queue_mobile`) | `core / platform` | Ready for Flutter | 
| 20 | `syncora_application_review_queue_mobile` | Core / Shared | Mobile Variant | `core / platform` | Ready for Flutter | 
| 21 | `syncora_application_review_workspace` | Core / Shared | Desktop + Mobile (`syncora_application_review_workspace_mobile`) | `core / platform` | Ready for Flutter | 
| 22 | `syncora_application_review_workspace_mobile` | Core / Shared | Mobile Variant | `core / platform` | Ready for Flutter | 
| 23 | `syncora_apply_for_leave_mobile` | Core / Shared | Mobile Variant | `core / platform` | Ready for Flutter | 
| 24 | `syncora_assignment_submission_desktop` | Core / Shared | Desktop Standard | `academic` | Ready for Flutter | 
| 25 | `syncora_assignment_submission_mobile` | Core / Shared | Mobile Variant | `academic` | Ready for Flutter | 
| 26 | `syncora_assignment_submission_review` | Core / Shared | Desktop Standard | `academic` | Ready for Flutter | 
| 27 | `syncora_attendance_analytics_desktop` | Core / Shared | Desktop Standard | `academic` | Ready for Flutter | 
| 28 | `syncora_attendance_analytics_report` | Core / Shared | Desktop Standard | `academic` | Ready for Flutter | 
| 29 | `syncora_attendance_leaves_dashboard` | Core / Shared | Desktop Standard | `academic` | Ready for Flutter | 
| 30 | `syncora_attendance_mobile` | Core / Shared | Mobile Variant | `academic` | Ready for Flutter | 
| 31 | `syncora_billing_invoicing_dashboard` | Management / Staff | Desktop Standard | `finance` | Ready for Flutter | 
| 32 | `syncora_branding_appearance_settings` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 33 | `syncora_bulk_import_modal` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 34 | `syncora_bulk_import_progress` | Core / Shared | Desktop + Mobile (`syncora_bulk_import_progress_mobile`) | `core / platform` | Ready for Flutter | 
| 35 | `syncora_bulk_import_progress_mobile` | Core / Shared | Mobile Variant | `core / platform` | Ready for Flutter | 
| 36 | `syncora_bulk_import_review_confirm` | Core / Shared | Desktop + Mobile (`syncora_bulk_import_review_confirm_mobile`) | `core / platform` | Ready for Flutter | 
| 37 | `syncora_bulk_import_review_confirm_mobile` | Core / Shared | Mobile Variant | `core / platform` | Ready for Flutter | 
| 38 | `syncora_bulk_import_success` | Core / Shared | Desktop + Mobile (`syncora_bulk_import_success_mobile`) | `core / platform` | Ready for Flutter | 
| 39 | `syncora_bulk_import_success_mobile` | Core / Shared | Mobile Variant | `core / platform` | Ready for Flutter | 
| 40 | `syncora_campus_living_mobile` | Student | Mobile Variant | `core / platform` | Ready for Flutter | 
| 41 | `syncora_campus_security_interaction_states` | Management / Staff | Desktop Standard | `security` | Ready for Flutter | 
| 42 | `syncora_conflict_history_mobile` | Core / Shared | Mobile Variant | `core / platform` | Ready for Flutter | 
| 43 | `syncora_conflict_resolution_workspace` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 44 | `syncora_course_detail_desktop` | Core / Shared | Desktop Standard | `academic` | Ready for Flutter | 
| 45 | `syncora_course_detail_mobile` | Core / Shared | Mobile Variant | `academic` | Ready for Flutter | 
| 46 | `syncora_course_subject_master` | Core / Shared | Desktop Standard | `academic` | Ready for Flutter | 
| 47 | `syncora_create_assignment` | Core / Shared | Desktop Standard | `academic` | Ready for Flutter | 
| 48 | `syncora_critical_system_outage` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 49 | `syncora_decision_committee_dashboard` | Management / Staff | Desktop + Mobile (`syncora_decision_committee_dashboard_mobile`) | `core / platform` | Ready for Flutter | 
| 50 | `syncora_decision_committee_dashboard_mobile` | Management / Staff | Mobile Variant | `core / platform` | Ready for Flutter | 
| 51 | `syncora_department_management` | Management / Staff | Desktop Standard | `academic` | Ready for Flutter | 
| 52 | `syncora_edit_record_mobile` | Core / Shared | Mobile Variant | `core / platform` | Ready for Flutter | 
| 53 | `syncora_edit_record_modal` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 54 | `syncora_emergency_management_dashboard` | Management / Staff | Desktop Standard | `security` | Ready for Flutter | 
| 55 | `syncora_error_states_404_500` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 56 | `syncora_evaluation_summary_mobile` | Core / Shared | Mobile Variant | `academic` | Ready for Flutter | 
| 57 | `syncora_evaluation_workspace` | Core / Shared | Desktop Standard | `academic` | Ready for Flutter | 
| 58 | `syncora_event_calendar_management` | Management / Staff | Desktop Standard | `core / platform` | Ready for Flutter | 
| 59 | `syncora_exam_scheduling_dashboard` | Core / Shared | Desktop Standard | `academic` | Ready for Flutter | 
| 60 | `syncora_export_download_center` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 61 | `syncora_external_integrations_hub` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 62 | `syncora_faculty_dashboard` | Faculty | Desktop + Mobile (`syncora_faculty_dashboard_mobile`) | `core / platform` | Ready for Flutter | 
| 63 | `syncora_faculty_dashboard_mobile` | Faculty | Mobile Variant | `core / platform` | Ready for Flutter | 
| 64 | `syncora_faculty_dashboard_with_alerts` | Faculty | Desktop + Mobile (`syncora_faculty_dashboard_with_alerts_mobile`) | `notifications` | Ready for Flutter | 
| 65 | `syncora_faculty_dashboard_with_alerts_mobile` | Faculty | Mobile Variant | `notifications` | Ready for Flutter | 
| 66 | `syncora_faculty_gradebook_desktop` | Faculty | Desktop Standard | `academic` | Ready for Flutter | 
| 67 | `syncora_faculty_gradebook_mobile` | Faculty | Mobile Variant | `academic` | Ready for Flutter | 
| 68 | `syncora_faculty_intervention_alert_mobile` | Faculty | Mobile Variant | `notifications` | Ready for Flutter | 
| 69 | `syncora_faculty_staff_evaluation_dashboard` | Faculty | Desktop Standard | `academic` | Ready for Flutter | 
| 70 | `syncora_finance_engine_interaction_states` | Management / Staff | Desktop Standard | `finance` | Ready for Flutter | 
| 71 | `syncora_finance_fees_dashboard` | Management / Staff | Desktop Standard | `finance` | Ready for Flutter | 
| 72 | `syncora_finance_fees_mobile` | Management / Staff | Mobile Variant | `finance` | Ready for Flutter | 
| 73 | `syncora_financial_collection_report` | Core / Shared | Desktop Standard | `finance` | Ready for Flutter | 
| 74 | `syncora_financial_reporting_budgeting` | Core / Shared | Desktop Standard | `finance` | Ready for Flutter | 
| 75 | `syncora_first_time_setup` | Core / Shared | Desktop + Mobile (`syncora_first_time_setup_mobile`) | `core / platform` | Ready for Flutter | 
| 76 | `syncora_first_time_setup_mobile` | Core / Shared | Mobile Variant | `core / platform` | Ready for Flutter | 
| 77 | `syncora_fleet_tracking_logistics` | Management / Staff | Desktop Standard | `core / platform` | Ready for Flutter | 
| 78 | `syncora_forbidden_state_403` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 79 | `syncora_forgot_password` | Core / Shared | Desktop + Mobile (`syncora_forgot_password_mobile`) | `core / platform` | Ready for Flutter | 
| 80 | `syncora_forgot_password_mobile` | Core / Shared | Mobile Variant | `core / platform` | Ready for Flutter | 
| 81 | `syncora_gate_operations_guard_view` | Management / Staff | Desktop Standard | `security` | Ready for Flutter | 
| 82 | `syncora_grant_proposal_workspace` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 83 | `syncora_help_center` | Core / Shared | Desktop + Mobile (`syncora_help_center_mobile`) | `core / platform` | Ready for Flutter | 
| 84 | `syncora_help_center_mobile` | Core / Shared | Mobile Variant | `core / platform` | Ready for Flutter | 
| 85 | `syncora_hostel_management_dashboard` | Management / Staff | Desktop Standard | `core / platform` | Ready for Flutter | 
| 86 | `syncora_import_error_detail` | Core / Shared | Desktop + Mobile (`syncora_import_error_detail_mobile`) | `core / platform` | Ready for Flutter | 
| 87 | `syncora_import_error_detail_mobile` | Core / Shared | Mobile Variant | `core / platform` | Ready for Flutter | 
| 88 | `syncora_incident_reporting_management` | Management / Staff | Desktop Standard | `security` | Ready for Flutter | 
| 89 | `syncora_institutional_excellence_landing_page` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 90 | `syncora_institutional_settings` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 91 | `syncora_institution_onboarding` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 92 | `syncora_institution_search` | Core / Shared | Desktop + Mobile (`syncora_institution_search_mobile`) | `core / platform` | Ready for Flutter | 
| 93 | `syncora_institution_search_mobile` | Core / Shared | Mobile Variant | `core / platform` | Ready for Flutter | 
| 94 | `syncora_integration_configuration` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 95 | `syncora_interactive_api_sandbox` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 96 | `syncora_language_localization_settings` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 97 | `syncora_late_fee_automation_settings` | Core / Shared | Desktop Standard | `finance` | Ready for Flutter | 
| 98 | `syncora_leave_request_management` | Management / Staff | Desktop Standard | `core / platform` | Ready for Flutter | 
| 99 | `syncora_library_issuance_tracking` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 100 | `syncora_library_resource_directory` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 101 | `syncora_login` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 102 | `syncora_mentor_discovery_matching` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 103 | `syncora_mobile_payment_flow` | Core / Shared | Mobile Variant | `finance` | Ready for Flutter | 
| 104 | `syncora_my_bills_payments_mobile` | Student | Mobile Variant | `finance` | Ready for Flutter | 
| 105 | `syncora_my_bookshelf` | Student | Desktop + Mobile (`syncora_my_bookshelf_mobile`) | `core / platform` | Ready for Flutter | 
| 106 | `syncora_my_bookshelf_mobile` | Student | Mobile Variant | `core / platform` | Ready for Flutter | 
| 107 | `syncora_notice_management` | Management / Staff | Desktop Standard | `core / platform` | Ready for Flutter | 
| 108 | `syncora_notification_preferences` | Core / Shared | Desktop + Mobile (`syncora_notification_preferences_mobile`) | `notifications` | Ready for Flutter | 
| 109 | `syncora_notification_preferences_mobile` | Core / Shared | Mobile Variant | `notifications` | Ready for Flutter | 
| 110 | `syncora_notification_settings_mobile` | Core / Shared | Mobile Variant | `notifications` | Ready for Flutter | 
| 111 | `syncora_no_results_state` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 112 | `syncora_organizational_analytics_dashboard` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 113 | `syncora_organization_management` | Management / Staff | Desktop + Mobile (`syncora_organization_management_mobile`) | `core / platform` | Ready for Flutter | 
| 114 | `syncora_organization_management_mobile` | Management / Staff | Mobile Variant | `core / platform` | Ready for Flutter | 
| 115 | `syncora_organization_profile` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 116 | `syncora_otp_verification` | Core / Shared | Desktop + Mobile (`syncora_otp_verification_mobile`) | `core / platform` | Ready for Flutter | 
| 117 | `syncora_otp_verification_mobile` | Core / Shared | Mobile Variant | `core / platform` | Ready for Flutter | 
| 118 | `syncora_password_success` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 119 | `syncora_people_directory` | Core / Shared | Desktop + Mobile (`syncora_people_directory_mobile`) | `core / platform` | Ready for Flutter | 
| 120 | `syncora_people_directory_mobile` | Core / Shared | Mobile Variant | `core / platform` | Ready for Flutter | 
| 121 | `syncora_performance_review_workspace` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 122 | `syncora_platform_feature_management` | Management / Staff | Desktop Standard | `core / platform` | Ready for Flutter | 
| 123 | `syncora_platform_settings_suite` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 124 | `syncora_programs_management` | Management / Staff | Desktop Standard | `core / platform` | Ready for Flutter | 
| 125 | `syncora_quick_attendance_mobile` | Core / Shared | Mobile Variant | `academic` | Ready for Flutter | 
| 126 | `syncora_release_notes_visual_export` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 127 | `syncora_reporting_dashboard` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 128 | `syncora_reports_analytics_dashboard` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 129 | `syncora_reports_analytics_mobile` | Core / Shared | Mobile Variant | `core / platform` | Ready for Flutter | 
| 130 | `syncora_reschedule_resolution_workspace` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 131 | `syncora_reschedule_slot_mobile` | Core / Shared | Mobile Variant | `core / platform` | Ready for Flutter | 
| 132 | `syncora_research_grant_dashboard` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 133 | `syncora_research_portal_mobile` | Core / Shared | Mobile Variant | `core / platform` | Ready for Flutter | 
| 134 | `syncora_reset_password` | Core / Shared | Desktop + Mobile (`syncora_reset_password_mobile`) | `core / platform` | Ready for Flutter | 
| 135 | `syncora_reset_password_mobile` | Core / Shared | Mobile Variant | `core / platform` | Ready for Flutter | 
| 136 | `syncora_roles_permissions_matrix` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 137 | `syncora_roles_permissions_mobile` | Core / Shared | Mobile Variant | `core / platform` | Ready for Flutter | 
| 138 | `syncora_role_permission_editor` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 139 | `syncora_role_selection` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 140 | `syncora_room_management` | Management / Staff | Desktop Standard | `core / platform` | Ready for Flutter | 
| 141 | `syncora_scholarship_dashboard_mobile` | Core / Shared | Mobile Variant | `finance` | Ready for Flutter | 
| 142 | `syncora_scholarship_management_dashboard` | Management / Staff | Desktop Standard | `finance` | Ready for Flutter | 
| 143 | `syncora_section_management` | Management / Staff | Desktop Standard | `academic` | Ready for Flutter | 
| 144 | `syncora_security_command_center` | Management / Staff | Desktop Standard | `security` | Ready for Flutter | 
| 145 | `syncora_server_unavailable_503` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 146 | `syncora_smart_timetable_mobile` | Core / Shared | Mobile Variant | `academic` | Ready for Flutter | 
| 147 | `syncora_splash_screen` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 148 | `syncora_student_attendance_warning_mobile` | Student | Mobile Variant | `academic` | Ready for Flutter | 
| 149 | `syncora_student_dashboard_mobile` | Student | Mobile Variant | `core / platform` | Ready for Flutter | 
| 150 | `syncora_student_experience_interaction_states` | Student | Desktop Standard | `core / platform` | Ready for Flutter | 
| 151 | `syncora_student_onboarding_tour_mobile` | Student | Mobile Variant | `core / platform` | Ready for Flutter | 
| 152 | `syncora_student_results_mobile` | Student | Mobile Variant | `core / platform` | Ready for Flutter | 
| 153 | `syncora_student_results_portal` | Student | Desktop Standard | `core / platform` | Ready for Flutter | 
| 154 | `syncora_student_support_portal` | Student | Desktop Standard | `core / platform` | Ready for Flutter | 
| 155 | `syncora_student_wellness_mobile` | Student | Mobile Variant | `core / platform` | Ready for Flutter | 
| 156 | `syncora_super_admin_dashboard` | Super Admin | Desktop Standard | `core / platform` | Ready for Flutter | 
| 157 | `syncora_support_administration` | Management / Staff | Desktop Standard | `core / platform` | Ready for Flutter | 
| 158 | `syncora_task_management_dashboard` | Management / Staff | Desktop Standard | `core / platform` | Ready for Flutter | 
| 159 | `syncora_timetable_alert_mobile` | Core / Shared | Mobile Variant | `academic` | Ready for Flutter | 
| 160 | `syncora_timetable_conflict_dashboard` | Core / Shared | Desktop Standard | `academic` | Ready for Flutter | 
| 161 | `syncora_timetable_conflict_management` | Management / Staff | Desktop Standard | `academic` | Ready for Flutter | 
| 162 | `syncora_timetable_management_desktop` | Management / Staff | Desktop Standard | `academic` | Ready for Flutter | 
| 163 | `syncora_timetable_management_transposed` | Management / Staff | Desktop Standard | `academic` | Ready for Flutter | 
| 164 | `syncora_transaction_receipt` | Core / Shared | Desktop Standard | `finance` | Ready for Flutter | 
| 165 | `syncora_transparent_glassmorphic_id_card` | Core / Shared | Desktop Standard | `security` | Ready for Flutter | 
| 166 | `syncora_universal_search_overlay` | Core / Shared | Desktop Standard | `core / platform` | Ready for Flutter | 
| 167 | `syncora_user_activity_security_logs` | Management / Staff | Desktop Standard | `security` | Ready for Flutter | 
| 168 | `syncora_user_management_console` | Management / Staff | Desktop Standard | `core / platform` | Ready for Flutter | 
| 169 | `syncora_user_profile_mobile` | Core / Shared | Mobile Variant | `core / platform` | Ready for Flutter | 
| 170 | `syncora_user_profile_settings` | Core / Shared | Desktop + Mobile (`syncora_user_profile_settings_mobile`) | `core / platform` | Ready for Flutter | 
| 171 | `syncora_user_profile_settings_mobile` | Core / Shared | Mobile Variant | `core / platform` | Ready for Flutter | 
| 172 | `syncora_visitor_pre_registration` | Core / Shared | Desktop Standard | `security` | Ready for Flutter | 
| 173 | `syncora_welcome_landing` | Core / Shared | Desktop + Mobile (`syncora_welcome_landing_mobile`) | `core / platform` | Ready for Flutter | 
| 174 | `syncora_welcome_landing_mobile` | Core / Shared | Mobile Variant | `core / platform` | Ready for Flutter | 


---

## 2. Duplicate / Iteration Sets (Canonical Designation)

> [!IMPORTANT]
> Below are the identified duplicate/iteration sets. The **canonical designation** represents the primary variant implemented in code.

| Base Feature | Duplicate / Iteration Directories | Canonical Winner | Rationale |
|---|---|---|---|
| `academic_precision` | `academic_precision_1`, `academic_precision_2`, `academic_precision_3` | **`academic_precision_2`** | Selected most refined/latest iteration | 
| `syncora_admin_dashboard` | `syncora_admin_dashboard`, `syncora_admin_dashboard_mobile` | **`syncora_admin_dashboard_mobile`** | Selected most refined/latest iteration | 
| `syncora_admin_dashboard_with_alerts` | `syncora_admin_dashboard_with_alerts`, `syncora_admin_dashboard_with_alerts_mobile` | **`syncora_admin_dashboard_with_alerts_mobile`** | Selected most refined/latest iteration | 
| `syncora_admin_policy_editor` | `syncora_admin_policy_editor`, `syncora_admin_policy_editor_mobile` | **`syncora_admin_policy_editor_mobile`** | Selected most refined/latest iteration | 
| `syncora_application_review_queue` | `syncora_application_review_queue`, `syncora_application_review_queue_mobile` | **`syncora_application_review_queue_mobile`** | Selected most refined/latest iteration | 
| `syncora_application_review_workspace` | `syncora_application_review_workspace`, `syncora_application_review_workspace_mobile` | **`syncora_application_review_workspace_mobile`** | Selected most refined/latest iteration | 
| `syncora_bulk_import_field_mapping` | `syncora_bulk_import_field_mapping_1`, `syncora_bulk_import_field_mapping_2`, `syncora_bulk_import_field_mapping_mobile_1`, `syncora_bulk_import_field_mapping_mobile_2` | **`syncora_bulk_import_field_mapping_2`** | Selected most refined/latest iteration | 
| `syncora_bulk_import_progress` | `syncora_bulk_import_progress`, `syncora_bulk_import_progress_mobile` | **`syncora_bulk_import_progress_mobile`** | Selected most refined/latest iteration | 
| `syncora_bulk_import_review_confirm` | `syncora_bulk_import_review_confirm`, `syncora_bulk_import_review_confirm_mobile` | **`syncora_bulk_import_review_confirm_mobile`** | Selected most refined/latest iteration | 
| `syncora_bulk_import_success` | `syncora_bulk_import_success`, `syncora_bulk_import_success_mobile` | **`syncora_bulk_import_success_mobile`** | Selected most refined/latest iteration | 
| `syncora_decision_committee_dashboard` | `syncora_decision_committee_dashboard`, `syncora_decision_committee_dashboard_mobile` | **`syncora_decision_committee_dashboard_mobile`** | Selected most refined/latest iteration | 
| `syncora_faculty_dashboard` | `syncora_faculty_dashboard`, `syncora_faculty_dashboard_mobile` | **`syncora_faculty_dashboard_mobile`** | Selected most refined/latest iteration | 
| `syncora_faculty_dashboard_with_alerts` | `syncora_faculty_dashboard_with_alerts`, `syncora_faculty_dashboard_with_alerts_mobile` | **`syncora_faculty_dashboard_with_alerts_mobile`** | Selected most refined/latest iteration | 
| `syncora_first_time_setup` | `syncora_first_time_setup`, `syncora_first_time_setup_mobile` | **`syncora_first_time_setup_mobile`** | Selected most refined/latest iteration | 
| `syncora_forgot_password` | `syncora_forgot_password`, `syncora_forgot_password_mobile` | **`syncora_forgot_password_mobile`** | Selected most refined/latest iteration | 
| `syncora_help_center` | `syncora_help_center`, `syncora_help_center_mobile` | **`syncora_help_center_mobile`** | Selected most refined/latest iteration | 
| `syncora_import_error_detail` | `syncora_import_error_detail`, `syncora_import_error_detail_mobile` | **`syncora_import_error_detail_mobile`** | Selected most refined/latest iteration | 
| `syncora_institution_search` | `syncora_institution_search`, `syncora_institution_search_mobile` | **`syncora_institution_search_mobile`** | Selected most refined/latest iteration | 
| `syncora_my_bookshelf` | `syncora_my_bookshelf`, `syncora_my_bookshelf_mobile` | **`syncora_my_bookshelf_mobile`** | Selected most refined/latest iteration | 
| `syncora_notification_preferences` | `syncora_notification_preferences`, `syncora_notification_preferences_mobile` | **`syncora_notification_preferences_mobile`** | Selected most refined/latest iteration | 
| `syncora_organization_management` | `syncora_organization_management`, `syncora_organization_management_mobile` | **`syncora_organization_management_mobile`** | Selected most refined/latest iteration | 
| `syncora_otp_verification` | `syncora_otp_verification`, `syncora_otp_verification_mobile` | **`syncora_otp_verification_mobile`** | Selected most refined/latest iteration | 
| `syncora_people_directory` | `syncora_people_directory`, `syncora_people_directory_mobile` | **`syncora_people_directory_mobile`** | Selected most refined/latest iteration | 
| `syncora_reset_password` | `syncora_reset_password`, `syncora_reset_password_mobile` | **`syncora_reset_password_mobile`** | Selected most refined/latest iteration | 
| `syncora_student_dashboard` | `syncora_student_dashboard_1`, `syncora_student_dashboard_2`, `syncora_student_dashboard_mobile` | **`syncora_student_dashboard_2`** | Selected most refined/latest iteration | 
| `syncora_user_profile_clone` | `syncora_user_profile_clone_1`, `syncora_user_profile_clone_2` | **`syncora_user_profile_clone_2`** | Selected most refined/latest iteration | 
| `syncora_user_profile_mobile` | `syncora_user_profile_mobile_clone`, `syncora_user_profile_mobile_refined`, `syncora_user_profile_mobile_smooth_flip` | **`syncora_user_profile_mobile_refined`** | Selected most refined/latest iteration | 
| `syncora_user_profile_settings` | `syncora_user_profile_settings`, `syncora_user_profile_settings_mobile` | **`syncora_user_profile_settings_mobile`** | Selected most refined/latest iteration | 
| `syncora_user_profile_with_interactive_id_card` | `syncora_user_profile_with_interactive_id_card_1`, `syncora_user_profile_with_interactive_id_card_2` | **`syncora_user_profile_with_interactive_id_card_2`** | Selected most refined/latest iteration | 
| `syncora_welcome_landing` | `syncora_welcome_landing`, `syncora_welcome_landing_mobile` | **`syncora_welcome_landing_mobile`** | Selected most refined/latest iteration | 


---

## 3. Documentation & Non-UI Assets (Skipped for UI Implementation)

| Directory Name | Description / Signal | Action Taken |
|---|---|---|
| `.turbo` | No code.html or screen.png found | Excluded from UI build; used for context only | 
| `academic_precision_1` | No code.html or screen.png found | Excluded from UI build; used for context only | 
| `academic_precision_2` | No code.html or screen.png found | Excluded from UI build; used for context only | 
| `academic_precision_3` | No code.html or screen.png found | Excluded from UI build; used for context only | 
| `academic_precision_exams_results` | No code.html or screen.png found | Excluded from UI build; used for context only | 
| `academic_precision_security_visitor_oversight` | No code.html or screen.png found | Excluded from UI build; used for context only | 
| `institutional_excellence` | No code.html or screen.png found | Excluded from UI build; used for context only | 
| `institutional_review_workspace` | No code.html or screen.png found | Excluded from UI build; used for context only | 
| `syncora` | No code.html or screen.png found | Excluded from UI build; used for context only | 
| `syncora_application_architecture_workflow` | Process/architecture documentation or non-UI asset | Excluded from UI build; used for context only | 
| `syncora_deck_architecture_philosophy` | Process/architecture documentation or non-UI asset | Excluded from UI build; used for context only | 
| `syncora_deck_core_modules_overview` | Process/architecture documentation or non-UI asset | Excluded from UI build; used for context only | 
| `syncora_deck_title_slide` | Process/architecture documentation or non-UI asset | Excluded from UI build; used for context only | 
| `syncora_functional_user_journey_workflow` | Process/architecture documentation or non-UI asset | Excluded from UI build; used for context only | 
| `syncora_institutional` | No code.html or screen.png found | Excluded from UI build; used for context only | 
| `syncora_intelligence` | No code.html or screen.png found | Excluded from UI build; used for context only | 
| `syncora_public` | No code.html or screen.png found | Excluded from UI build; used for context only | 
