import 'package:moment_dart/moment_dart.dart';

extension MomentExt on Moment {
  String formatDateWithWeekdayShort() {
    return formatDateTimeWithWeekdayShort().split(" ").sublist(0, 4).join(" ");
  }

  String formatDateWithWeekday() {
    return formatDateTimeWithWeekday().split(" ").sublist(0, 4).join(" ");
  }
}
