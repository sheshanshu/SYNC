import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/security_repository.dart';
import '../domain/security_log.dart';

final securityRepositoryProvider = Provider<SecurityRepository>((ref) {
  return MockSecurityRepository();
});

final securityLogsProvider = FutureProvider<List<SecurityLog>>((ref) async {
  final repo = ref.watch(securityRepositoryProvider);
  return repo.getGateLogs();
});
