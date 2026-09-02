import 'package:flutter/material.dart';
import '../theme/syncora_theme.dart';

enum UserRole {
  student,
  faculty,
  management,
  superAdmin,
}

class RoleSidebarConfig {
  final String roleBadge;
  final Color badgeColor;
  final List<SideNavItemSpec> items;

  const RoleSidebarConfig({
    required this.roleBadge,
    required this.badgeColor,
    required this.items,
  });
}

class SideNavItemSpec {
  final String label;
  final IconData icon;
  final String route;

  const SideNavItemSpec({
    required this.label,
    required this.icon,
    required this.route,
  });
}

class RoleSidebar extends StatelessWidget {
  final UserRole role;
  final String currentRoute;
  final ValueChanged<String> onItemSelected;

  const RoleSidebar({
    super.key,
    required this.role,
    required this.currentRoute,
    required this.onItemSelected,
  });

  static RoleSidebarConfig _getConfig(UserRole role) {
    switch (role) {
      case UserRole.student:
        return const RoleSidebarConfig(
          roleBadge: 'STUDENT PORTAL',
          badgeColor: SyncoraTheme.primary,
          items: [
            SideNavItemSpec(label: 'Dashboard', icon: Icons.dashboard_rounded, route: '/student/dashboard'),
            SideNavItemSpec(label: 'Academic & Timetable', icon: Icons.calendar_month_rounded, route: '/student/timetable'),
            SideNavItemSpec(label: 'Assignments & Marks', icon: Icons.assignment_rounded, route: '/student/assignments'),
            SideNavItemSpec(label: 'Attendance & Leaves', icon: Icons.fact_check_rounded, route: '/student/attendance'),
            SideNavItemSpec(label: 'My Bills & Payments', icon: Icons.account_balance_wallet_rounded, route: '/student/bills'),
            SideNavItemSpec(label: 'Bookshelf & Library', icon: Icons.menu_book_rounded, route: '/student/bookshelf'),
            SideNavItemSpec(label: 'Campus Living & Support', icon: Icons.nightlife_rounded, route: '/student/campus-living'),
          ],
        );
      case UserRole.faculty:
        return const RoleSidebarConfig(
          roleBadge: 'FACULTY PORTAL',
          badgeColor: SyncoraTheme.accentTeal,
          items: [
            SideNavItemSpec(label: 'Overview Dashboard', icon: Icons.space_dashboard_rounded, route: '/faculty/dashboard'),
            SideNavItemSpec(label: 'Gradebook & Evaluation', icon: Icons.grade_rounded, route: '/faculty/gradebook'),
            SideNavItemSpec(label: 'Quick Attendance', icon: Icons.fact_check_rounded, route: '/faculty/attendance'),
            SideNavItemSpec(label: 'Smart Timetable', icon: Icons.calendar_view_week_rounded, route: '/faculty/timetable'),
            SideNavItemSpec(label: 'Student Interventions', icon: Icons.warning_amber_rounded, route: '/faculty/interventions'),
            SideNavItemSpec(label: 'Research & Grants', icon: Icons.science_rounded, route: '/faculty/research'),
          ],
        );
      case UserRole.management:
        return const RoleSidebarConfig(
          roleBadge: 'ADMIN CONSOLE',
          badgeColor: SyncoraTheme.surfaceContainerHighest,
          items: [
            SideNavItemSpec(label: 'Command Center', icon: Icons.dashboard_customize_rounded, route: '/admin/dashboard'),
            SideNavItemSpec(label: 'Academic Hub', icon: Icons.school_rounded, route: '/admin/academic'),
            SideNavItemSpec(label: 'Finance & Fees Engine', icon: Icons.payments_rounded, route: '/admin/finance'),
            SideNavItemSpec(label: 'Security Command Center', icon: Icons.shield_rounded, route: '/admin/security'),
            SideNavItemSpec(label: 'Gate Operations & Visitors', icon: Icons.sensor_door_rounded, route: '/admin/gate-ops'),
            SideNavItemSpec(label: 'Reports & Analytics', icon: Icons.analytics_rounded, route: '/admin/reports'),
            SideNavItemSpec(label: 'Organization Management', icon: Icons.domain_rounded, route: '/admin/org'),
          ],
        );
      case UserRole.superAdmin:
        return const RoleSidebarConfig(
          roleBadge: 'SUPER ADMIN',
          badgeColor: SyncoraTheme.accentAmber,
          items: [
            SideNavItemSpec(label: 'Global Control Panel', icon: Icons.admin_panel_settings_rounded, route: '/super/dashboard'),
            SideNavItemSpec(label: 'Tenant Organizations', icon: Icons.apartment_rounded, route: '/super/tenants'),
            SideNavItemSpec(label: 'Platform Settings Suite', icon: Icons.tune_rounded, route: '/super/settings'),
            SideNavItemSpec(label: 'System Health & Outages', icon: Icons.health_and_safety_rounded, route: '/super/health'),
            SideNavItemSpec(label: 'Audit Logs & Security', icon: Icons.security_rounded, route: '/super/audit-logs'),
          ],
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final config = _getConfig(role);

    return Container(
      width: 260,
      color: SyncoraTheme.surface,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: SyncoraTheme.primary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.school_rounded, color: Colors.white, size: 22),
              ),
              const SizedBox(width: 12),
              const Text(
                'SYNCORA',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            decoration: BoxDecoration(
              color: config.badgeColor.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: config.badgeColor, width: 0.8),
            ),
            child: Text(
              config.roleBadge,
              style: TextStyle(
                color: config.badgeColor == SyncoraTheme.surfaceContainerHighest ? Colors.white : config.badgeColor,
                fontSize: 10,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.1,
              ),
            ),
          ),
          const SizedBox(height: 28),
          Expanded(
            child: ListView.separated(
              itemCount: config.items.length,
              separatorBuilder: (_, __) => const SizedBox(height: 6),
              itemBuilder: (context, index) {
                final item = config.items[index];
                final isSelected = currentRoute == item.route;
                return ListTile(
                  leading: Icon(
                    item.icon,
                    size: 20,
                    color: isSelected ? SyncoraTheme.primary : SyncoraTheme.textSecondary,
                  ),
                  title: Text(
                    item.label,
                    style: TextStyle(
                      color: isSelected ? Colors.white : SyncoraTheme.textSecondary,
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                      fontSize: 13,
                    ),
                  ),
                  selected: isSelected,
                  selectedTileColor: SyncoraTheme.surfaceContainerHighest,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(SyncoraSpacing.borderRadiusMd),
                  ),
                  onTap: () => onItemSelected(item.route),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
