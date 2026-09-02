import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/ui_kit.dart';
import 'finance_controller.dart';

class FinanceScreen extends ConsumerWidget {
  const FinanceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final invoicesAsync = ref.watch(financeInvoicesProvider);

    return Scaffold(
      body: Row(
        children: [
          RoleSidebar(
            role: UserRole.management,
            currentRoute: '/admin/finance',
            onItemSelected: (route) => context.go(route),
          ),
          Expanded(
            child: Column(
              children: [
                const TopAppBar(
                  title: 'Finance & Billing Engine',
                  tenantName: 'Stanford University',
                  userName: 'Admin User',
                  role: 'Management',
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: invoicesAsync.when(
                      data: (invoices) => GlobalViewContainer(
                        state: invoices.isEmpty ? ViewState.empty : ViewState.content,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'STUDENT FEE INVOICES & COLLECTIONS',
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                            const SizedBox(height: 16),
                            SyncoraDataTable(
                              columns: const [
                                SyncoraColumn(title: 'Invoice ID', width: 0.15),
                                SyncoraColumn(title: 'Student Name', width: 0.25),
                                SyncoraColumn(title: 'Fee Category', width: 0.25),
                                SyncoraColumn(title: 'Amount', width: 0.15),
                                SyncoraColumn(title: 'Due Date', width: 0.1),
                                SyncoraColumn(title: 'Status', width: 0.1),
                              ],
                              rows: invoices.map((inv) {
                                Color statusColor = SyncoraTheme.accentTeal;
                                if (inv.status == 'PENDING') statusColor = SyncoraTheme.accentAmber;
                                if (inv.status == 'OVERDUE') statusColor = SyncoraTheme.accentRose;

                                return [
                                  Text(inv.invoiceId, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                  Text(inv.studentName, style: const TextStyle(color: Colors.white)),
                                  Text(inv.feeType, style: const TextStyle(color: SyncoraTheme.textSecondary)),
                                  Text('\$${inv.amount.toStringAsFixed(2)}', style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                  Text(inv.dueDate, style: const TextStyle(color: SyncoraTheme.textSecondary)),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                    decoration: BoxDecoration(
                                      color: statusColor.withValues(alpha: 0.2),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(inv.status, style: TextStyle(color: statusColor, fontWeight: FontWeight.bold, fontSize: 11)),
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
                        onErrorRetry: () => ref.refresh(financeInvoicesProvider),
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
