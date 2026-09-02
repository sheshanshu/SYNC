import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/ui_kit.dart';
import 'dashboard_controller.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final metricsAsync = ref.watch(dashboardMetricsProvider);

    return Scaffold(
      body: Row(
        children: [
          SideNav(
            currentRoute: '/dashboard',
            items: const [
              SideNavItem(label: 'Dashboard', icon: Icons.dashboard_rounded, route: '/dashboard'),
              SideNavItem(label: 'Timetable', icon: Icons.calendar_month_rounded, route: '/timetable'),
              SideNavItem(label: 'Finance', icon: Icons.account_balance_wallet_rounded, route: '/finance'),
              SideNavItem(label: 'Gate Security', icon: Icons.shield_rounded, route: '/security'),
            ],
            onItemSelected: (route) {
              context.go(route);
            },
          ),
          Expanded(
            child: Column(
              children: [
                const TopAppBar(
                  title: 'Campus Overview',
                  tenantName: 'Stanford University',
                  userName: 'Dr. Jane Smith',
                  role: 'Faculty / Admin',
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              SyncoraIdCard(
                                fullName: 'Dr. Jane Smith',
                                role: 'Faculty',
                                idNumber: 'FAC-2024-8841',
                                department: 'Computer Science & AI',
                                organizationName: 'Stanford University',
                              ),
                            ],
                          ),
                          const SizedBox(height: 32),
                          const Text(
                            'SYSTEM METRICS SUMMARY',
                            style: TextStyle(
                              color: SyncoraTheme.textSecondary,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                            ),
                          ),
                          const SizedBox(height: 16),
                          metricsAsync.when(
                            data: (metrics) => Row(
                              children: [
                                _buildMetricCard('Total Students', '${metrics.totalStudents}', Icons.groups),
                                const SizedBox(width: 16),
                                _buildMetricCard('Active Courses', '${metrics.activeCourses}', Icons.book),
                                const SizedBox(width: 16),
                                _buildMetricCard('Attendance Rate', '${metrics.attendanceRate}%', Icons.check_circle),
                                const SizedBox(width: 16),
                                _buildMetricCard('Fee Collection', '${metrics.feeCollectionRate}%', Icons.payments),
                              ],
                            ),
                            loading: () => const CircularProgressIndicator(),
                            error: (err, stack) => Text('Error loading metrics: $err'),
                          ),
                          const SizedBox(height: 32),
                          const SyncoraDataTable(
                            columns: [
                              SyncoraColumn(title: 'Course Code', width: 0.15),
                              SyncoraColumn(title: 'Title', width: 0.3),
                              SyncoraColumn(title: 'Department', width: 0.25),
                              SyncoraColumn(title: 'Credits', width: 0.15),
                            ],
                            rows: [
                              [
                                Text('CS-101', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                Text('Intro to Computer Science', style: TextStyle(color: Colors.white)),
                                Text('Computer Science', style: TextStyle(color: SyncoraTheme.textSecondary)),
                                Text('4', style: TextStyle(color: SyncoraTheme.accentIndigo, fontWeight: FontWeight.bold)),
                              ],
                              [
                                Text('ENG-204', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                Text('Advanced Software Engineering', style: TextStyle(color: Colors.white)),
                                Text('Computer Science', style: TextStyle(color: SyncoraTheme.textSecondary)),
                                Text('3', style: TextStyle(color: SyncoraTheme.accentIndigo, fontWeight: FontWeight.bold)),
                              ],
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMetricCard(String title, String value, IconData icon) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: SyncoraTheme.primaryNavy,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: SyncoraTheme.surfaceGlass),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: SyncoraTheme.accentIndigo, size: 24),
            const SizedBox(height: 12),
            Text(
              value,
              style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              title,
              style: const TextStyle(color: SyncoraTheme.textSecondary, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
