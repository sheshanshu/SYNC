import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/ui_kit.dart';
import 'notifications_controller.dart';

class NotificationsScreen extends ConsumerWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifsAsync = ref.watch(notificationsListProvider);

    return Scaffold(
      body: Row(
        children: [
          RoleSidebar(
            role: UserRole.management,
            currentRoute: '/notifications',
            onItemSelected: (route) => context.go(route),
          ),
          Expanded(
            child: Column(
              children: [
                const TopAppBar(
                  title: 'Notification Center & Alert Engine',
                  tenantName: 'Stanford University',
                  userName: 'Admin User',
                  role: 'Management',
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: notifsAsync.when(
                      data: (items) => GlobalViewContainer(
                        state: items.isEmpty ? ViewState.empty : ViewState.content,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'SYSTEM ALERTS & NOTIFICATIONS',
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                            const SizedBox(height: 16),
                            SyncoraDataTable(
                              columns: const [
                                SyncoraColumn(title: 'ID', width: 0.1),
                                SyncoraColumn(title: 'Title', width: 0.25),
                                SyncoraColumn(title: 'Message Payload', width: 0.4),
                                SyncoraColumn(title: 'Type', width: 0.12),
                                SyncoraColumn(title: 'Time', width: 0.13),
                              ],
                              rows: items.map((item) {
                                Color typeColor = SyncoraTheme.primary;
                                if (item.type == 'SUCCESS') typeColor = SyncoraTheme.accentTeal;
                                if (item.type == 'URGENT') typeColor = SyncoraTheme.accentRose;

                                return [
                                  Text(item.id, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                  Text(item.title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
                                  Text(item.message, style: const TextStyle(color: SyncoraTheme.textSecondary)),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                    decoration: BoxDecoration(
                                      color: typeColor.withValues(alpha: 0.2),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(item.type, style: TextStyle(color: typeColor, fontWeight: FontWeight.bold, fontSize: 10)),
                                  ),
                                  Text(item.timestamp, style: const TextStyle(color: SyncoraTheme.textSecondary)),
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
                        onErrorRetry: () => ref.refresh(notificationsListProvider),
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
