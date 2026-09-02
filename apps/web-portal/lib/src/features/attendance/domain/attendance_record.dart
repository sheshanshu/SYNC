class AttendanceRecord {
  final String date;
  final String courseCode;
  final String sessionName;
  final int totalStudents;
  final int presentCount;
  final int absentCount;
  final double percentage;

  const AttendanceRecord({
    required this.date,
    required this.courseCode,
    required this.sessionName,
    required this.totalStudents,
    required this.presentCount,
    required this.absentCount,
    required this.percentage,
  });
}
