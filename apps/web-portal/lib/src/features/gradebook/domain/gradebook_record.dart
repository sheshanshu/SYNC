class GradebookRecord {
  final String studentId;
  final String studentName;
  final String courseCode;
  final String assignmentName;
  final double score;
  final double maxScore;
  final String grade;

  const GradebookRecord({
    required this.studentId,
    required this.studentName,
    required this.courseCode,
    required this.assignmentName,
    required this.score,
    required this.maxScore,
    required this.grade,
  });
}
