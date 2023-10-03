import 'dart:ui';

import 'package:flutter/material.dart';

class AppInputTheme extends ThemeExtension<AppInputTheme> {
  final UnderlineInputBorder validBorder;
  final UnderlineInputBorder focusedValidBorder;
  final OutlineInputBorder searchFieldBorder;

  const AppInputTheme({
    required this.validBorder,
    required this.focusedValidBorder,
    required this.searchFieldBorder,
  });

  @override
  ThemeExtension<AppInputTheme> copyWith() {
    return AppInputTheme(
      validBorder: validBorder,
      focusedValidBorder: focusedValidBorder,
      searchFieldBorder: searchFieldBorder,
    );
  }

  @override
  ThemeExtension<AppInputTheme> lerp(covariant AppInputTheme other, double t) {
    return AppInputTheme(
      validBorder: UnderlineInputBorder(
        borderSide: BorderSide.lerp(
          validBorder.borderSide,
          other.validBorder.borderSide,
          t,
        ),
        borderRadius: BorderRadius.lerp(
          validBorder.borderRadius,
          other.validBorder.borderRadius,
          t,
        )!,
      ),
      focusedValidBorder: UnderlineInputBorder(
        borderSide: BorderSide.lerp(
          focusedValidBorder.borderSide,
          other.focusedValidBorder.borderSide,
          t,
        ),
        borderRadius: BorderRadius.lerp(
          focusedValidBorder.borderRadius,
          other.focusedValidBorder.borderRadius,
          t,
        )!,
      ),
      searchFieldBorder: OutlineInputBorder(
        borderSide: BorderSide.lerp(
          searchFieldBorder.borderSide,
          other.searchFieldBorder.borderSide,
          t,
        ),
        borderRadius: BorderRadius.lerp(
          searchFieldBorder.borderRadius,
          other.searchFieldBorder.borderRadius,
          t,
        )!,
        gapPadding: lerpDouble(
          searchFieldBorder.gapPadding,
          other.searchFieldBorder.gapPadding,
          t,
        )!,
      ),
    );
  }

  static AppInputTheme of(BuildContext context) {
    return Theme.of(context).extension<AppInputTheme>()!;
  }
}
