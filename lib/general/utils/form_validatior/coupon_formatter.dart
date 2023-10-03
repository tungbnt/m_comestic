import 'package:flutter/services.dart';

class CouponFormatter extends TextInputFormatter {
  final String code;
  final String separator;

  CouponFormatter({
    required this.code, required this.separator,
  }) {
    assert(code != null);
    assert(separator != null);
  }

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue,
      TextEditingValue newValue) {
    if (newValue.text.length > 0) {
      if (newValue.text.length > oldValue.text.length) {
        if (newValue.text.length > code.length) return oldValue;
        if (newValue.text.length < code.length &&
            code[newValue.text.length - 1] == separator) {
          return TextEditingValue(
              text: '${oldValue.text}$separator${newValue.text.substring(
                  newValue.text.length - 1)}',
              selection: TextSelection.collapsed(
                  offset: newValue.selection.end + 1)
          );
        }
      }
    }
    return newValue;
  }
}