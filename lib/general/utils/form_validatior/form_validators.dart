import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mcomestic/general/app_strings/app_strings.dart';
import 'package:mcomestic/modules/app_manager.dart';


BuildContext get context => AppManager.globalKeyRootMaterial.currentContext!;

String? validatorPassword(String? value) {
  if (value == null || value.isEmpty) {
    return AppStrings.of(context).PLEASE_FILL_PASSWORD;
  } else if (value.length > 16 || value.length < 8) {
    return AppStrings.of(context).PASSWORD_FROM_EIGHT_TO_SIXTEEN_CHARACTER;
  } else if (!regexPasswordValidator.hasMatch(value)) {
    return AppStrings.of(context).ERROR_PASSWORD;
  }
  return null;
}

String? phoneNumberValidator(String? value, {String? errorEmpty, String? errorInvalid}) {
  if (value!.isEmpty) {
    return errorEmpty ?? AppStrings.of(context).PLEASE_ENTER_YOUR_PHONE;
  }
  RegExp regex = RegExp(r'^0[789]0[0-9]{7,8}$');
  if (!regex.hasMatch(value)) {
    return errorInvalid ?? AppStrings.of(context).ENTER_VALID_PHONE_NUMBER;
  } else {
    return null;
  }
}

String? katakanaValidator(String? value) {
  if (value!.isEmpty) {
    return AppStrings.of(context).NAME_KATAKANA_REQUIRED;
  }
  RegExp regex = RegExp(r'^([ァ-ン]|ー|ヴ)+(\s([ァ-ン]|ー|ヴ)+)*$');
  if (!regex.hasMatch(value)) {
    return AppStrings.of(context).NAME_KATAKANA_CONTENT;
  } else {
    return null;
  }
}

String? kanjiValidator(String? value) {
  if (value!.isEmpty) {
    return AppStrings.of(context).NAME_KANJI_REQUIRED;
  }
  RegExp regex = RegExp(r'^([ぁ-んァ-ン-ー-龥a-zA-ZＡ-ｚ\s|　])+$');
  if (!regex.hasMatch(value)) {
    return AppStrings.of(context).NAME_KANJI_CONTENT;
  } else {
    return null;
  }
}

String? notNumberValidator(String? value) {
  if (value!.isEmpty) {
    return AppStrings.of(context).PLEASE_ENTER_A_NAME;
  }
  RegExp regex = RegExp(r'^([0-9])+$');
  if (regex.hasMatch(value)) {
    return AppStrings.of(context).ENTER_A_NAME;
  } else {
    return null;
  }
}

String? validatorPostalCodeExtra(String? value) {
  if (value!.isEmpty) {
    return '';
  }
  RegExp regex = RegExp(r'^\d{3}[-]\d{4}$|^\d{7}$');
  if (!regex.hasMatch(value)) {
    return '';
  } else {
    return null;
  }
}

String? validatorPostalCode(String? value) {
  if (value!.isEmpty) {
    return AppStrings.of(context).FIELD_NOT_EMPTY;
  }
  if (value.length != 7) {
    return AppStrings.of(context).POSTAL_CODE_MUST_HAVE_SEVEN_CHAR;
  }
}
String? validatorPostalCodeCoupon(String? value,{String? messageError}) {

  if (value!.isEmpty) {
    return null;
  }
  if(value.length != 9) {
    return AppStrings
        .of(context)
        .POSTAL_CODE_INVAILD_COUPON;
  }
  if(value.length == 9 ) {
    return messageError;
  }
  return null;
}

String? validatorNotEmpty(String? value, {String? error}) {
  if (value!.isEmpty) {
    return error ?? AppStrings.of(context).FIELD_NOT_EMPTY;
  }
  return null;
}

String? validatorCreditCardName(String? value, {String? error}) {
  if (value!.isEmpty) {
    return error ?? AppStrings.of(context).CREDIT_CARD_NAME_EMPTY_VALIDATE;
  } else if (value.replaceAll(' ', '').contains(RegExp(r'[0-9]'))) {
    return AppStrings.of(context).CREDIT_CARD_NOT_CONTAINS_NUMBER;
  }

  return null;
}

String? validatorNotEmptyNonMessage(String? value) {
  if (value!.isEmpty) {
    return '';
  }
  return null;
}

String? validatorCreditCardNumber(String? value) {
  print(value?.length);
  if (value!.isEmpty) {
    return AppStrings.of(context).CREDIT_CARD_NUMBER_EMPTY_VALIDATE;
  } else if (value.replaceAll(' ', '').length < 13 || value.replaceAll(' ', '').length > 16) {
    return AppStrings.of(context).CREDIT_CARD_INPUT_VALIDATE;
  } else {
    return null;
  }
}

String? validatorCreditCardCVV(String? value) {
  if (value!.isEmpty) {
    return AppStrings.of(context).CVV_REQUIRED;
  } else if (value.length < 3 || value.length > 4) {
    return AppStrings.of(context).CVV_INPUT_VALIDATE;
  } else {
    return null;
  }
}

String? validatorCreditCardDate(String? value) {
  DateTime now = DateTime(DateTime.now().year, DateTime.now().month);
  DateTime valueToCompare;
  if (value!.isEmpty) {
    return AppStrings.of(context).EXPIRATION_DATE_REQUIRED;
  } else if (value.replaceAll('/', '').length < 4) {
    return AppStrings.of(context).EXPIRATION_DATE_INVALID;
  } else {
    var dataToList = value.split('/').map((e) => int.parse(e)).toList();
    valueToCompare = DateTime(2000 + dataToList.last, dataToList.first);
    if (dataToList.first > 12 || (dataToList.last.toString().length > 2) || (now.millisecondsSinceEpoch >= valueToCompare.millisecondsSinceEpoch)) {
      return AppStrings.of(context).EXPIRATION_DATE_OUTDATE;
    } else {
      return null;
    }
  }
}

RegExp regexPasswordValidator = RegExp(r'^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[\w~@#$%^&*+=`|{}:;!.?"()\[\]-]{8,16}$');

RegExp regexCreditCardNameValidator = RegExp(r'[0-9\s]*$');

RegExp regexCouponTextValidator = RegExp(r'[0-9\s]*$');
