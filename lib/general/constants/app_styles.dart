import 'package:flutter/cupertino.dart';

import 'app_colors.dart';

class AppStyles {
  static const minAppPadding = 24.0;

// text style
  static TextStyle text7008({Color? color, double? height}) {
    return TextStyle(fontSize: 8, fontWeight: FontWeight.w700, height: height ?? 1.4);
  }

  static TextStyle text40012({Color? color}) {
    return TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: color ?? AppColors.textNormalColor);
  }

  static TextStyle text40014({Color? color, double? height}) {
    return TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: color ?? AppColors.textNormalColor, height: height ?? 1.4);
  }

  static const TextStyle text70014 = TextStyle(fontSize: 14, fontWeight: FontWeight.w700, height: 1.4);

  static const TextStyle text40018 = TextStyle(fontSize: 18, fontWeight: FontWeight.w400);
  static const TextStyle text40016 = TextStyle(fontSize: 16, fontWeight: FontWeight.w400);

  static TextStyle text70018({Color? color}) {
    return TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: color ?? AppColors.textNormalColor);
  }

  static const TextStyle text70024 = TextStyle(fontSize: 24, fontWeight: FontWeight.w700);

  static TextStyle text70020({
    Color? color,
  }) {
    return TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: color ?? AppColors.textNormalColor);
  }

  static TextStyle text50018({Color? color}) {
    return TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: color ?? AppColors.textNormalColor);
  }

  static TextStyle get text50012 => const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.textNormalColor);

  static TextStyle text50011({Color? color}) {
    return TextStyle(fontSize: 11, fontWeight: FontWeight.w500, color: color ?? AppColors.textNormalColor);
  }

// static TextStyle text50012({Color? color, double? height}) {
//   return TextStyle(
//       fontSize: 12,
//       fontWeight: FontWeight.w500,
//       height: height ?? 1.4,
//       color: color ?? AppColors.textNormalColor);
// }

  static TextStyle text70010({Color? color}) {
    return TextStyle(fontSize: 10, fontWeight: FontWeight.w700, color: color ?? AppColors.textNormalColor);
  }

  static TextStyle text70011({Color? color}) {
    return TextStyle(fontSize: 11, fontWeight: FontWeight.w700, color: color ?? AppColors.textNormalColor);
  }

  static TextStyle text70012({Color? color}) {
    return TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: color ?? AppColors.textNormalColor);
  }

  static TextStyle text40010({Color? color}) {
    return TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: color ?? AppColors.textNormalColor);
  }

  static TextStyle text70016({Color? color}) {
    return TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: color ?? AppColors.textNormalColor);
  }

  static TextStyle text50016({Color? color}) {
    return TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: color ?? AppColors.textNormalColor);
  }

  static TextStyle text50014({Color? color, double? height}) {
    return TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: color ?? AppColors.textNormalColor, height: height ?? 1.4);
  }

  static TextStyle text50015({Color? color, double? height}) {
    return TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: color ?? AppColors.textNormalColor, height: height ?? 1.4);
  }

  static TextStyle text50024({Color? color}) {
    return TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: color ?? AppColors.textNormalColor);
  }

  static TextStyle text50020({Color? color}) {
    return TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: color ?? AppColors.textNormalColor);
  }

  static TextStyle text70032({Color? color}) {
    return TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: color ?? AppColors.textNormalColor);
  }

// container decoration
  static BoxDecoration boxDecoration = BoxDecoration(
      color: AppColors.backgroundLightColor,
      borderRadius: BorderRadius.circular(8),
      boxShadow: const [BoxShadow(color: Color.fromRGBO(16, 24, 64, 0.1), blurRadius: 10, offset: Offset(0, -2))]);

// container decoration
  static BoxDecoration outlineContainer({Color? backgroundColor, Color? borderColor}) {
    return BoxDecoration(
        color: backgroundColor ?? AppColors.backgroundLightColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: borderColor ?? AppColors.borderE6E8F0));
  }
}
