import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/gradebook_repository.dart';
import '../domain/gradebook_record.dart';

final gradebookRepositoryProvider = Provider<GradebookRepository>((ref) {
  return MockGradebookRepository();
});

final gradebookRecordsProvider = FutureProvider<List<GradebookRecord>>((ref) async {
  final repo = ref.watch(gradebookRepositoryProvider);
  return repo.getGradebookRecords();
});
