import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_kit/ui_kit.dart';
import 'gradebook_controller.dart';

class GradebookScreen extends ConsumerWidget {
  const GradebookScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gradebookAsync = ref.watch(gradebookRecordsProvider);

    return Scaffold(
      body: Row(
        children: [
          RoleSidebar(
            role: UserRole.faculty,
            currentRoute: '/faculty/gradebook',
            onItemSelected: (route) => context.go(route),
          ),
          Expanded(
            child: Column(
              children: [
                const TopAppBar(
                  title: 'Gradebook & Evaluation Workspace',
                  tenantName: 'Stanford University',
                  userName: 'Dr. Jane Smith',
                  role: 'Faculty',
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: gradebookAsync.when(
                      data: (records) => GlobalViewContainer(
                        state: records.isEmpty ? ViewState.empty : ViewState.content,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'STUDENT EVALUATION RECORDS',
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                            const SizedBox(height: 16),
                            SyncoraDataTable(
                              columns: const [
                                SyncoraColumn(title: 'Student ID', width: 0.15),
                                SyncoraColumn(title: 'Student Name', width: 0.25),
                                SyncoraColumn(title: 'Course Code', width: 0.15),
                                SyncoraColumn(title: 'Assignment', width: 0.25),
                                SyncoraColumn(title: 'Score', width: 0.1),
                                SyncoraColumn(title: 'Grade', width: 0.1),
                              ],
                              rows: records.map((r) {
                                return [
                                  Text(r.studentId, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                  Text(r.studentName, style: const TextStyle(color: Colors.white)),
                                  Text(r.courseCode, style: const TextStyle(color: SyncoraTheme.textSecondary)),
                                  Text(r.assignmentName, style: const TextStyle(color: SyncoraTheme.textSecondary)),
                                  Text('${r.score}/${r.maxScore}', style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                    decoration: BoxDecoration(
                                      color: SyncoraTheme.primary.withValues(alpha: 0.2),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(r.grade, style: const TextStyle(color: SyncoraTheme.primary, fontWeight: FontWeight.bold)),
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
                        onErrorRetry: () => ref.refresh(gradebookRecordsProvider),
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
