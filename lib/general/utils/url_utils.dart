import 'package:intl/intl.dart';

Map<String, dynamic> getParamsFromUrl(String url) {
  Uri uri = Uri.tryParse(url) ?? Uri();
  return uri.queryParameters;
}

bool afterCurrentDate(String dateString) {
  var formatter = DateFormat('yyyy-MM-dd');
  DateTime date = formatter.parse(dateString);
  DateTime now = DateTime.now();
  return now.isBefore(date);
}

String jpDateFormat(String dateString) {
  var formatter = DateFormat('yyyy-MM-dd');
  var formatterJP = DateFormat('yyyy月MM日dd');
  DateTime date = formatter.parse(dateString);
  return formatterJP.format(date);
}

String jpDateToString(DateTime date) {
  // var formatter =  DateFormat('yyyy-MM-dd');
  var formatterJP = DateFormat('yyyy月MM日dd');
  // DateTime date = formatter.parse(dateString);
  return formatterJP.format(date);
}

String jpDateToMMddString(DateTime date) {
  // var formatter =  DateFormat('yyyy-MM-dd');
  var formatterJP = DateFormat('MM月dd日');
  // DateTime date = formatter.parse(dateString);
  return formatterJP.format(date);
}

String dateToString(DateTime date) {
  var formatterJP = DateFormat('yyyy-MM-dd');
  return formatterJP.format(date);
}

toDuration(String time) {
  String hour = time.split(':')[0];
  String min = time.split(':')[1];
  String secornd = time.split(':')[2];

  if (int.parse(hour) >= 1) {
    return '${int.parse(hour)}:$min:$secornd';
  } else {
    return '$min:$secornd';
  }
}

String printDuration(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, "0");
  String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
  String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
  if (duration.inHours != 0) {
    return "${duration.inHours}:$twoDigitMinutes:$twoDigitSeconds";
  }
  return "$twoDigitMinutes:$twoDigitSeconds";
}
