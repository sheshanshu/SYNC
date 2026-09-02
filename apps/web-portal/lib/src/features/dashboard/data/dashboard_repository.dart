import '../domain/dashboard_metrics.dart';

abstract class DashboardRepository {
  Future<DashboardMetrics> getMetrics();
}

class MockDashboardRepository implements DashboardRepository {
  @override
  Future<DashboardMetrics> getMetrics() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return const DashboardMetrics(
      totalStudents: 1420,
      activeCourses: 38,
      attendanceRate: 94.2,
      feeCollectionRate: 88.5,
    );
  }
}
