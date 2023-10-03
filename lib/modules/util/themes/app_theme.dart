import 'package:flutter/material.dart';

@immutable
class MyAppTheme extends ThemeExtension<MyAppTheme> {
  const MyAppTheme(
      {this.brandColor,
      this.danger,
      this.appbarBackGround,
      this.appBarTitleTextStyle});

  // add properties here
  final Color? brandColor;
  final Color? danger;
  final Color? appbarBackGround;
  final TextStyle? appBarTitleTextStyle;

  ///

  @override
  MyAppTheme copyWith({MyAppTheme? myAppTheme}) {
    return myAppTheme ?? this;
  }

  /// Curves smooth change theme
  @override
  MyAppTheme lerp(ThemeExtension<MyAppTheme>? other, double t) {
    if (other is! MyAppTheme) {
      return this;
    }
    return MyAppTheme(
        brandColor: Color.lerp(brandColor, other.brandColor, t),
        danger: Color.lerp(danger, other.danger, t),
        appbarBackGround:
            Color.lerp(appbarBackGround, other.appbarBackGround, t),
        appBarTitleTextStyle: TextStyle.lerp(
            appBarTitleTextStyle, other.appBarTitleTextStyle, t));
  }

  // Optional
  // @override
  // String toString() => 'MyColors(brandColor: $brandColor, danger: $danger)';
}
