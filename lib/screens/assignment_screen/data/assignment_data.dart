class AssignmentData {
  final String subjectName;
  final String topicName;
  final String assignDate;
  final String lastDate;
  final String status;

  AssignmentData(
    this.subjectName,
    this.topicName,
    this.assignDate,
    this.lastDate,
    this.status,
  );
}

List<AssignmentData> assignment = [
  AssignmentData('Biology', 'Red Blood Cells', '17 Nov 2023', '20 Nov 2023', 'Pending'),
  AssignmentData('Physics', 'Bohr Theory', '11 Nov 2023', '20 Nov 2023', 'Submitted'),
  AssignmentData('Chemistry', 'Organic Chemistry', '22 Oct 2023', '27 Oct 2023', 'Not Submitted'),
  AssignmentData('Mathematics', 'Algebra', '17 Sep 2023', '30 Sep 2023', 'Pending'),
];
