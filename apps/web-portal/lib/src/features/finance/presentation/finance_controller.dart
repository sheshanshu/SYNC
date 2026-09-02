import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/finance_repository.dart';
import '../domain/fee_invoice.dart';

final financeRepositoryProvider = Provider<FinanceRepository>((ref) {
  return MockFinanceRepository();
});

final financeInvoicesProvider = FutureProvider<List<FeeInvoice>>((ref) async {
  final repo = ref.watch(financeRepositoryProvider);
  return repo.getInvoices();
});
