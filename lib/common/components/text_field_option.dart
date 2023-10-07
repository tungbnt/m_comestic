import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mcomestic/general/constants/app_colors.dart';

const _kEnableBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(16)),
  borderSide: BorderSide(color: AppColors.backgroundGreyColor, width: 1),
);
const _kFocusedBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(16)),
  borderSide: BorderSide(color: AppColors.backgroundGreyColor, width: 1),
);
const _kBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(4),
  ),
);
const _kDisableBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(4),
  ),
);

class TextFieldOption extends StatelessWidget {
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final Color? fillColor;
  final String? hintText;
  final TextStyle? hintStyle;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final int? maxLength;
  final bool? obscureText;
  final String? counterText;
  final Widget? suffix;
  final Widget? suffixIcon;
  final bool? enabled;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? disabledBorder;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? border;
  final bool? autofocus;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;

  const TextFieldOption({
    this.inputFormatters,
    this.focusNode,
    this.fillColor,
    this.hintText,
    this.hintStyle,
    this.controller,
    this.onChanged,
    this.onFieldSubmitted,
    this.maxLength,
    this.obscureText,
    this.counterText,
    this.suffix,
    this.contentPadding,
    this.suffixIcon,
    this.enabled,
    this.border,
    this.disabledBorder,
    this.enabledBorder,
    this.focusedBorder,
    this.autofocus,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        hintText: hintText,
        counterText: counterText ?? '',
        hintStyle: hintStyle,
        enabledBorder: enabledBorder ?? _kEnableBorder,
        focusedBorder: focusedBorder ?? _kFocusedBorder,
        border: border ?? _kBorder,
        disabledBorder: disabledBorder ?? _kDisableBorder,
        suffix: suffix,
        suffixIcon: suffixIcon,
        enabled: enabled ?? true,
        contentPadding: contentPadding,
      ),
      autofocus: autofocus ?? false,
      obscureText: obscureText ?? false,
      maxLength: maxLength ?? 50,
      controller: controller,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      validator: validator,
    );
  }
}
