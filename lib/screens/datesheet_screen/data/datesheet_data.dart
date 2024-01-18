class DateSheet {
  final int date;
  final String monthName;
  final String subjectName;
  final String dayName;
  final String time;

  DateSheet(
    this.date,
    this.monthName,
    this.subjectName,
    this.dayName,
    this.time,
  );
}

List<DateSheet> dateSheet = [
  DateSheet(11, 'JAN', 'Computer Science', 'Sunday', '11:00am'),
  DateSheet(12, 'JAN', 'Computer Science', 'Monday', '9:00am'),
  DateSheet(13, 'JAN', 'Computer Science', 'Tuesday', '10:00am'),
  DateSheet(14, 'JAN', 'Computer Science', 'Wednesday', '9:30am'),
  DateSheet(15, 'JAN', 'Computer Science', 'Thursday', '11:00am'),
  DateSheet(17, 'JAN', 'Computer Science', 'Saturday', '9:00am'),
];
