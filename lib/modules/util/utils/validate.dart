

import 'package:mcomestic/modules/util/key_const.dart';

class Validate {
  static String? validatePhone(String value) {
    if (value.isEmpty) {
      return KeyConst.pleaseEnterThePhoneNumber;
    }
    if (RegExp(r'[.-]+').hasMatch(value)) {
      return KeyConst.phoneNumberDoesNotContainSpecialCharacters;
    }
    if (RegExp(r'[ ]+').hasMatch(value)) {
      return KeyConst.phoneNumbersDoNotContainSpaces;
    }
    // if (!RegExp(
    //         r'^((3[2-9])|(5[689])|(7[06-9])|(8[1-689])|(9[0-46-9]))(\d)(\d{3})(\d{3})$')
    //     .hasMatch(value)) {
    //   return 'Số điện thoại không hợp lệ';
    // }
    // if (value.trim().length != 9 || value.trim().length != 14) {
    //   return 'Số điện thoại không đúng định dạng'.tr;
    // }
    return null;
  }

  static String? validateEmail(String? value) {
    // if (value == null || value.trim().isEmpty || value.trim() == '') {
    //   return 'Email không được để trống'.tr;
    // }
    if (!RegExp(r'^[a-zA-Z0-9.]*@(?:[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-z0-9])?\.)+[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?')
            .hasMatch(value!.trim()) &&
        value.trim().isNotEmpty) {
      return KeyConst.theEmailYouEnteredIsNotValid;
    }
    return null;
  }


  static String? validateWidthHeight(String value, String error) {
    if (RegExp(r'[.,-]+').hasMatch(value)) {
      return '$error ${KeyConst.doesNotContainSpecialCharacters}';
    }
    if (RegExp(r'[ ]+').hasMatch(value)) {
      return '$error ${KeyConst.doesNotContainSpaces}';
    }
    return null;
  }

  static String? validateOtp(String value) {
    if (value.trim().isEmpty) {
      return KeyConst.pleaseEnterOTPForAuthentication;
    }
    if (value.trim().length < 7) {
      return KeyConst.oTPCodeConsistsOf4Digits;
    }
    return null;
  }

  static String? validateName(String value) {
    if (value.isEmpty) {
      return KeyConst.firstAndLastNameCannotBeLeftBlank;
    }
    if (RegExp(r' {2,}').hasMatch(value.trim())) {
      return KeyConst.firstAndLastNamesMustNotContainSpaces;
    }
    if (RegExp(r'[.,!@#\$&*~^%()+x=/_€£¥₩÷`|•√π×∆°{}℅?¢<>;:"]')
        .hasMatch(value.trim())) {
      return KeyConst.nameCannotContainSpecialCharacters;
    }
    if (RegExp(r'[0-9]').hasMatch(value.trim()) && value.trim().isNotEmpty) {
      return KeyConst.namesCannotContainNumbers;
    }

    return null;
  }

  static String? validateOpinion(String? value) {
    if (value == null ||
        value.trim().isEmpty ||
        value == KeyConst.haveNotSelection) {
      return KeyConst.requiredFieldEmptyErrorString;
    }
    return null;
  }

  static String? validateRequiredFieldNotEmpty(String? value, [String? error]) {
    if (value == null || value.trim().isEmpty) {
      return error ?? KeyConst.requiredFieldEmptyErrorString;
    }

    return null;
  }

  static String? validateConstraintsLengthField(
    final String? value, {
    required final int minLength,
  }) {
    final validateEmptyResult = validateRequiredFieldNotEmpty(value);

    if (validateEmptyResult != null) return validateEmptyResult;

    final characterLeftCount = minLength - (value?.length ?? 1);

    if (characterLeftCount > 0) {
      return KeyConst.enterAtLeastCharacters.replaceAll(
        '__1__',
        characterLeftCount.toString(),
      );
    }

    return null;
  }
}
