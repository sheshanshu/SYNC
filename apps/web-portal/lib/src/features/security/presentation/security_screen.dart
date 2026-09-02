import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/ui_kit.dart';
import 'security_controller.dart';

class SecurityScreen extends ConsumerWidget {
  const SecurityScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final logsAsync = ref.watch(securityLogsProvider);

    return Scaffold(
      body: Row(
        children: [
          RoleSidebar(
            role: UserRole.management,
            currentRoute: '/admin/security',
            onItemSelected: (route) => context.go(route),
          ),
          Expanded(
            child: Column(
              children: [
                const TopAppBar(
                  title: 'Security Command Center & Gate Ops',
                  tenantName: 'Stanford University',
                  userName: 'Officer Marcus Vance',
                  role: 'Campus Security Lead',
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: logsAsync.when(
                      data: (logs) => GlobalViewContainer(
                        state: logs.isEmpty ? ViewState.empty : ViewState.content,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'GATE ENTRY & VISITOR LOGS',
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                            const SizedBox(height: 16),
                            SyncoraDataTable(
                              columns: const [
                                SyncoraColumn(title: 'Log ID', width: 0.15),
                                SyncoraColumn(title: 'Visitor / Subject', width: 0.3),
                                SyncoraColumn(title: 'Gate Station', width: 0.2),
                                SyncoraColumn(title: 'Entry Time', width: 0.15),
                                SyncoraColumn(title: 'Exit Time', width: 0.1),
                                SyncoraColumn(title: 'Status', width: 0.1),
                              ],
                              rows: logs.map((l) {
                                final isCheckedIn = l.status == 'CHECKED_IN';
                                final statusColor = isCheckedIn ? SyncoraTheme.primary : SyncoraTheme.textSecondary;

                                return [
                                  Text(l.logId, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                  Text(l.visitorName, style: const TextStyle(color: Colors.white)),
                                  Text(l.gateName, style: const TextStyle(color: SyncoraTheme.textSecondary)),
                                  Text(l.entryTime, style: const TextStyle(color: SyncoraTheme.textSecondary)),
                                  Text(l.exitTime ?? '--:--', style: const TextStyle(color: SyncoraTheme.textSecondary)),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                    decoration: BoxDecoration(
                                      color: statusColor.withValues(alpha: 0.2),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(l.status, style: TextStyle(color: statusColor, fontWeight: FontWeight.bold, fontSize: 10)),
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
                        onErrorRetry: () => ref.refresh(securityLogsProvider),
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
