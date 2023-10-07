import 'package:flutter/material.dart';
import 'package:mcomestic/modules/util/themes/theme_service.dart';


class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.onPressed,
    this.backgroundColor,
    this.borderColor,
    this.prefixIcon,
    this.suffixIcon,
    this.text,
    this.textStyle,
    this.textColor,
    this.isCenter,
    this.padding,
    // this.borderRadius,
  });
  final String? text;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? isCenter;
  final EdgeInsetsGeometry? padding;
  // final double? borderRadius;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: backgroundColor ,
        shape: RoundedRectangleBorder(
          side: borderColor != null ? BorderSide(color: borderColor!) : BorderSide.none,
          // borderRadius: BorderRadius.circular(borderRadius??0),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: isCenter == true ? MainAxisAlignment.center : MainAxisAlignment.start,
        children: [
          if (prefixIcon != null) prefixIcon!,
          // prefixIcon ?? Container(),

          Padding(
            padding: padding ?? const EdgeInsets.all(0),
            child: Text(
              text ?? '',
              style: textStyle ,
            ),
          ),
          if (suffixIcon != null) suffixIcon!,
        ],
      ),
    );
  }
}
