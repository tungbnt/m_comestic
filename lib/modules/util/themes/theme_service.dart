

import 'package:flutter/material.dart';

import 'app_color_theme.dart';
import 'app_text_theme.dart';
import 'app_theme.dart';

abstract class ThemeService {
  static ThemeMode _themeModeApp = ThemeMode.light;

  static ThemeMode getTheme() {
    return _themeModeApp;
  }

  static setTheme(ThemeMode themeMode) {
    _themeModeApp = themeMode;
  }

  static MyAppTheme getAppTheme(context) {
    return Theme.of(context).extension<MyAppTheme>()!;
  }

  static AppTextTheme getAppTextTheme(context) {
    return Theme.of(context).extension<AppTextTheme>()!;
  }

  static AppColorTheme getAppColorTheme(context) {
    return Theme.of(context).extension<AppColorTheme>()!;
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    try {
      hexColor = hexColor.toUpperCase().replaceAll("#", "");
      if (hexColor.length == 6) {
        hexColor = "FF$hexColor";
      }
      return int.parse(hexColor, radix: 16);
    } catch (ex) {
      return int.parse("000000", radix: 16);
    }
  }

  static int? toInt(String hexColor) {
    hexColor = hexColor.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
      return null;
    }
    if (hexColor.length == 8) {
      return int.parse("0x$hexColor");
    }

    return null;
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
