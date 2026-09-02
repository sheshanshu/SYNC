import '../domain/gradebook_record.dart';

abstract class GradebookRepository {
  Future<List<GradebookRecord>> getGradebookRecords();
}

class MockGradebookRepository implements GradebookRepository {
  @override
  Future<List<GradebookRecord>> getGradebookRecords() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return const [
      GradebookRecord(
        studentId: 'STU-1001',
        studentName: 'Alice Walker',
        courseCode: 'CS-101',
        assignmentName: 'Midterm Project',
        score: 95.0,
        maxScore: 100.0,
        grade: 'A',
      ),
      GradebookRecord(
        studentId: 'STU-1002',
        studentName: 'Bob Martinez',
        courseCode: 'CS-101',
        assignmentName: 'Midterm Project',
        score: 88.0,
        maxScore: 100.0,
        grade: 'B+',
      ),
      GradebookRecord(
        studentId: 'STU-1003',
        studentName: 'Charlie Chen',
        courseCode: 'ENG-204',
        assignmentName: 'Software Architecture Essay',
        score: 92.5,
        maxScore: 100.0,
        grade: 'A-',
      ),
    ];
  }
}
