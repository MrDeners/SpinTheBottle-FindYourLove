import 'package:intl/intl.dart';

class DateTimeUtility {
  ///   1/10/2023
  static String formatDateFull(DateTime? date) {
    return date != null ? DateFormat('dd/MM/yyyy').format(date) : '';
  }

  ///   03:29:44:05
  static String formatTimeLeft(DateTime? date) {
    return date != null ? DateFormat('dd:HH:mm:ss').format(date) : '';
  }

  ///   03/24
  static String formatDateWithoutYear(DateTime? date) {
    return date != null ? DateFormat('dd/MM').format(date) : '';
  }

  ///   10 ago 2024
  static String formatDateFullWithAbbreviatedMonth(DateTime? date) {
    return date != null ? DateFormat('dd MMM yyyy').format(date) : '';
  }

  /// DateTime without hours ans less
  static DateTime dateToDay(DateTime date) {
    return DateTime(date.year, date.month, date.day);
  }
}
