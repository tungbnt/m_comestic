import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class ConvertValue {
  static String convertUIDateTime(DateTime date) {
    return DateFormat('HH:mm dd/MM/yyyy').format(date);
  }

  static String convertUIDate(DateTime date) {
    return DateFormat('dd/MM/yyyy').format(date);
  }

  static String convertStartDate(DateTime date) {
    return DateFormat('y-MM-dd').format(date);
  }

  static String convertTime(DateTime date) {
    return DateFormat('HH:mm').format(date);
  }

  static String convertTimeString(String str) {
    return DateFormat('dd-MM-yyyy').format(DateFormat('dd/MM/yyyy').parse(str));
  }

  static String convertUIRangeDate(DateTime date) {
    return DateFormat('dd/MM/yyyy').format(date);
  }

  static String convertPhone(TextEditingController phoneTEC) {
    if (phoneTEC.text.startsWith('(+84)')) {
      return phoneTEC.text.replaceFirst('(+84)', '(+84) ');
    }
    if (phoneTEC.text.startsWith('')) {
      return phoneTEC.text.replaceFirst('', '(+84) ');
    }
    return phoneTEC.text;
  }

  static String convertPhoneString(String phoneTEC) {
    if (phoneTEC.startsWith('0')) {
      return phoneTEC.replaceFirst('0', '(+84) ');
    }
    if (phoneTEC.startsWith('(+84)')) {
      return phoneTEC.replaceFirst('(+84)', '(+84) ');
    }

    return phoneTEC;
  }

  static String convertAreaPhone(String phoneNumber) {
    if (phoneNumber.startsWith('(+84) ')) {
      return phoneNumber.replaceFirst('(+84) ', '');
    }
    return phoneNumber;
  }
}
