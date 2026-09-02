import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/dashboard_repository.dart';
import '../domain/dashboard_metrics.dart';

final dashboardRepositoryProvider = Provider<DashboardRepository>((ref) {
  return MockDashboardRepository();
});

final dashboardMetricsProvider = FutureProvider<DashboardMetrics>((ref) async {
  final repo = ref.watch(dashboardRepositoryProvider);
  return repo.getMetrics();
});
