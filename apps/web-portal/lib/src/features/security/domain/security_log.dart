class SecurityLog {
  final String logId;
  final String visitorName;
  final String gateName;
  final String entryTime;
  final String? exitTime;
  final String status;

  const SecurityLog({
    required this.logId,
    required this.visitorName,
    required this.gateName,
    required this.entryTime,
    this.exitTime,
    required this.status,
  });
}
