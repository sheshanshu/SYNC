import '../domain/fee_invoice.dart';

abstract class FinanceRepository {
  Future<List<FeeInvoice>> getInvoices();
}

class MockFinanceRepository implements FinanceRepository {
  @override
  Future<List<FeeInvoice>> getInvoices() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return const [
      FeeInvoice(
        invoiceId: 'INV-2024-001',
        studentName: 'Alice Walker',
        feeType: 'Tuition Fee - Fall 2024',
        amount: 3500.0,
        dueDate: '2024-10-15',
        status: 'PAID',
      ),
      FeeInvoice(
        invoiceId: 'INV-2024-002',
        studentName: 'Bob Martinez',
        feeType: 'Tuition Fee - Fall 2024',
        amount: 3500.0,
        dueDate: '2024-10-15',
        status: 'PENDING',
      ),
      FeeInvoice(
        invoiceId: 'INV-2024-003',
        studentName: 'Charlie Chen',
        feeType: 'Hostel & Mess Charges',
        amount: 1200.0,
        dueDate: '2024-09-30',
        status: 'OVERDUE',
      ),
    ];
  }
}
