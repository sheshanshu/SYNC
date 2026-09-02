import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/ui_kit.dart';
import 'attendance_controller.dart';

class AttendanceScreen extends ConsumerWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final attendanceAsync = ref.watch(attendanceLogsProvider);

    return Scaffold(
      body: Row(
        children: [
          RoleSidebar(
            role: UserRole.faculty,
            currentRoute: '/faculty/attendance',
            onItemSelected: (route) => context.go(route),
          ),
          Expanded(
            child: Column(
              children: [
                const TopAppBar(
                  title: 'Quick Attendance & Session Logs',
                  tenantName: 'Stanford University',
                  userName: 'Dr. Jane Smith',
                  role: 'Faculty',
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: attendanceAsync.when(
                      data: (records) => GlobalViewContainer(
                        state: records.isEmpty ? ViewState.empty : ViewState.content,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'RECENT CLASS SESSION ATTENDANCE',
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                            const SizedBox(height: 16),
                            SyncoraDataTable(
                              columns: const [
                                SyncoraColumn(title: 'Date', width: 0.15),
                                SyncoraColumn(title: 'Course Code', width: 0.15),
                                SyncoraColumn(title: 'Session Name', width: 0.35),
                                SyncoraColumn(title: 'Present / Total', width: 0.2),
                                SyncoraColumn(title: 'Rate', width: 0.15),
                              ],
                              rows: records.map((r) {
                                return [
                                  Text(r.date, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                  Text(r.courseCode, style: const TextStyle(color: SyncoraTheme.textSecondary)),
                                  Text(r.sessionName, style: const TextStyle(color: Colors.white)),
                                  Text('${r.presentCount} / ${r.totalStudents}', style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                    decoration: BoxDecoration(
                                      color: SyncoraTheme.accentTeal.withValues(alpha: 0.2),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text('${r.percentage}%', style: const TextStyle(color: SyncoraTheme.accentTeal, fontWeight: FontWeight.bold)),
                                  ),
                                ];
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                      loading: () => const GlobalViewContainer(
                        state: ViewState.loading,
                        child: SizedBox(),
                      ),
                      error: (err, stack) => GlobalViewContainer(
                        state: ViewState.error,
                        errorMessage: err.toString(),
                        onErrorRetry: () => ref.refresh(attendanceLogsProvider),
                        child: const SizedBox(),
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
}
