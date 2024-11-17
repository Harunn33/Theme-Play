import 'package:intl/intl.dart';

final class DateTimeHelpers {
  const DateTimeHelpers._();

  static const DateTimeHelpers instance = DateTimeHelpers._();

  String formatDateTime(String? date, {String format = 'dd.MM.yyyy HH:mm:ss'}) {
    if (date == null || date.isEmpty) return 'Invalid date format';
    final dateTime = DateTime.parse(date);
    final utcDateTime = dateTime.toLocal();

    return DateFormat(format).format(utcDateTime);
  }
}
