class FeeInvoice {
  final String invoiceId;
  final String studentName;
  final String feeType;
  final double amount;
  final String dueDate;
  final String status;

  const FeeInvoice({
    required this.invoiceId,
    required this.studentName,
    required this.feeType,
    required this.amount,
    required this.dueDate,
    required this.status,
  });
}
