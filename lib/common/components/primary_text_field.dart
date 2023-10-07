import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mcomestic/general/constants/app_colors.dart';


// TextField with border color
class PrimaryTextField extends StatelessWidget {
  PrimaryTextField({
    super.key,
    required this.controller,
    this.focusNode,
    this.prefixWidget,
    this.suffixWidget,
    this.hintText,
    this.label,
    this.onChanged,
    this.maxLine,
    this.minLine,
    this.onSubmit,
    this.keyboardType,
    this.validator,
    this.textColor,
    this.textStyle,
    this.contentPadding,
    this.enableColor,
    this.focusedColor,
    this.underEnableColor,
    this.underFocusedColor,
    this.onTap,
    this.readOnly,
    this.autoFocus,
    this.decoration,
    this.inputFormatters,
    this.onEditingComplete,
  });
  final TextEditingController controller;
  final FocusNode? focusNode;
  final TextStyle? textStyle;
  final EdgeInsets? contentPadding;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final Color? textColor;
  final Color? focusedColor;
  final Color? underFocusedColor;
  final Color? underEnableColor;
  final Color? enableColor;
  final String? hintText;
  final Widget? label;
  final int? maxLine;
  final int? minLine;
  final bool? readOnly;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;
  final bool? autoFocus;
  final InputDecoration? decoration;
  final List<TextInputFormatter>? inputFormatters;
  Function(String)? onChanged;
  Function(String)? onSubmit;
  Function()? onTap;
  Function()? onEditingComplete;
  @override
  Widget build(BuildContext context) {

    return TextFormField(
      readOnly: readOnly ?? false,
      autofocus: autoFocus ?? false,
      controller: controller,
      focusNode: focusNode,
      keyboardType: keyboardType,
      validator: validator,
      cursorColor: AppColors.greyColor,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: const TextStyle(),
        label: label,
        labelStyle:  const TextStyle(),
        border: InputBorder.none,
        contentPadding: contentPadding ?? const EdgeInsets.symmetric(horizontal: 8),
        focusedBorder: underFocusedColor == null
            ? OutlineInputBorder(
                borderSide: BorderSide(
                  color: focusedColor ?? AppColors.color8661D7,
                ),
                borderRadius: BorderRadius.circular(0),
              )
            : UnderlineInputBorder(
                borderSide: BorderSide(
                  color: underFocusedColor ?? AppColors.color8661D7,
                ),
                borderRadius: BorderRadius.circular(0),
              ),
        enabledBorder: underEnableColor == null
            ? OutlineInputBorder(
                borderSide: BorderSide(
                  color: enableColor ?? AppColors.black,
                ),
                borderRadius: BorderRadius.circular(0),
              )
            : UnderlineInputBorder(
                borderSide: BorderSide(
                  color: underEnableColor ?? AppColors.color8661D7,
                ),
                borderRadius: BorderRadius.circular(0),
              ),
        prefixIcon: prefixWidget == null
            ? null
            : Container(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                alignment: Alignment.center,
                width: 16,
                child: prefixWidget,
              ),
        suffixIcon: suffixWidget == null
            ? null
            : Container(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                alignment: Alignment.center,
                width: 16,
                child: suffixWidget,
              ),
      ).copyWith(
        prefixIcon: decoration?.prefixIcon,
        suffixIcon: decoration?.suffixIcon,
      ),
      onChanged: onChanged,
      onFieldSubmitted: onSubmit,
      onEditingComplete: onEditingComplete,
      onTap: onTap,
      maxLines: maxLine,
      minLines: minLine,
      style: textStyle ?? const TextStyle(),
    );
  }
}
