import '../domain/security_log.dart';

abstract class SecurityRepository {
  Future<List<SecurityLog>> getGateLogs();
}

class MockSecurityRepository implements SecurityRepository {
  @override
  Future<List<SecurityLog>> getGateLogs() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return const [
      SecurityLog(
        logId: 'GATE-0881',
        visitorName: 'David Miller (Vendor)',
        gateName: 'North Main Gate',
        entryTime: '2026-09-02 09:15',
        exitTime: null,
        status: 'CHECKED_IN',
      ),
      SecurityLog(
        logId: 'GATE-0880',
        visitorName: 'Elena Rostova (Guest)',
        gateName: 'East Campus Gate',
        entryTime: '2026-09-02 08:30',
        exitTime: '2026-09-02 10:45',
        status: 'CHECKED_OUT',
      ),
    ];
  }
}
