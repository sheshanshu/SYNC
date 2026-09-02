import '../domain/attendance_record.dart';

abstract class AttendanceRepository {
  Future<List<AttendanceRecord>> getAttendanceLogs();
}

class MockAttendanceRepository implements AttendanceRepository {
  @override
  Future<List<AttendanceRecord>> getAttendanceLogs() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return const [
      AttendanceRecord(
        date: '2026-09-02',
        courseCode: 'CS-101',
        sessionName: 'Lecture 14 - Operating Systems',
        totalStudents: 45,
        presentCount: 42,
        absentCount: 3,
        percentage: 93.3,
      ),
      AttendanceRecord(
        date: '2026-09-01',
        courseCode: 'ENG-204',
        sessionName: 'Seminar - Software Patterns',
        totalStudents: 30,
        presentCount: 29,
        absentCount: 1,
        percentage: 96.7,
      ),
    ];
  }
}
