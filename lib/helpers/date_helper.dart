import 'package:intl/intl.dart';

String getDateTimeNow() {
  DateTime now = DateTime.now();
  String nowFormattedDate = DateFormat('yyyy-MM-dd HH:mm').format(now);
  return nowFormattedDate;
}

String formatDate(String date) {
  DateFormat dateFormat = DateFormat("yyyy-MM-dd");
  DateTime dateTime = dateFormat.parse(date);
  return dateTime.toString();
}

String convertDateTimeDisplay(String date) {
  if (date == null) {
    return null;
  } else {
    final DateFormat sourceFormat = DateFormat('yyyy-MM-dd HH:mm:ss');
    final DateFormat displayFormat = DateFormat('dd-MM-yyyy');
    final DateTime displayDate = sourceFormat.parse(date);
    final String formatted = displayFormat.format(displayDate);
    return formatted;
  }
}

String daysToDate(String date) {
  DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
  DateTime dateTime = dateFormat.parse(date);
  // final birthday = DateTime(1967, 10, 12);
  final dateNow = DateTime.now();
  final difference = dateTime.difference(dateNow).inDays;

  if (difference < 250) {
    return 'expires in ${difference.toStringAsFixed(0)} days';
  } else {
    return 'expires in ${(difference / 30).toStringAsFixed(0)} months';
  }
}
