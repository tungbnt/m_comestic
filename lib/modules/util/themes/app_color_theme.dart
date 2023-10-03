import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppStateColor extends ColorSwatch<int> {
  /// Creates a color swatch with a variety of shades.
  const AppStateColor(super.primary, super.swatch);

  /// The lightest shade.
  Color get shade50 => this[50]!;

  /// The second lightest shade.
  Color get shade100 => this[100]!;

  /// The third lightest shade.
  Color get shade200 => this[200]!;

  /// The fourth lightest shade.
  Color get shade300 => this[300]!;

  /// The fifth lightest shade.
  Color get shade400 => this[400]!;

  /// The default shade.
  Color get shade500 => this[500]!;

  /// The fourth darkest shade.
  Color get shade600 => this[600]!;

  /// The third darkest shade.
  Color get shade700 => this[700]!;

  static AppStateColor? lerp(AppStateColor a, AppStateColor b, double t) {
    return AppStateColor(
      Color.lerp(a, b, t)!.value,
      <int, Color>{
        50: Color.lerp(a.shade50, b.shade50, t)!,
        100: Color.lerp(a.shade100, b.shade100, t)!,
        200: Color.lerp(a.shade200, b.shade200, t)!,
        300: Color.lerp(a.shade300, b.shade300, t)!,
        400: Color.lerp(a.shade400, b.shade400, t)!,
        500: Color.lerp(a.shade500, b.shade500, t)!,
        600: Color.lerp(a.shade600, b.shade600, t)!,
        700: Color.lerp(a.shade700, b.shade700, t)!,
      },
    );
  }
}

class CupertinoSwitchTheme extends Color with Diagnosticable {
  CupertinoSwitchTheme({
    String? debugLabel,
    required this.activeColor,
    required this.trackColor,
  })  : _debugLabel = debugLabel,
        // The super constructor has to be called with a dummy value in order to mark
        // this constructor const.
        // The field `value` is overridden in the class implementation.
        super(0);

  final String? _debugLabel;

  final Color activeColor;
  final Color trackColor;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is CupertinoSwitchTheme &&
        other.value == value &&
        other.activeColor == activeColor &&
        other.trackColor == trackColor;
  }

  @override
  int get hashCode => Object.hash(
        value,
        activeColor,
        trackColor,
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    if (_debugLabel != null) {
      properties.add(MessageProperty('debugLabel', _debugLabel!));
    }
    properties.add(ColorProperty('activeColor', activeColor));
    properties.add(ColorProperty('trackColor', trackColor));
  }
}

class AppColorTheme extends ThemeExtension<AppColorTheme> {
  final Color title;
  final Color primaryText;
  final Color secondaryText1;
  final Color secondaryText2;
  final Color disable;
  final Color dividers1;
  final Color dividers2;
  final Color borderFocused;
  final Color borderEnable;
  final Color buttonBackgroundPrimary;
  final Color background2;
  final Color background3;

  final Color barrierColor;
  final Color mbsBarrierColor;

  final Color dialogBackground;
  static const Color black = Color(0xFF000000);
  static const Color black1B1D25 = Color(0xFF1B1D25);
  static const Color white = Color(0xFFFFFFFF);
  static const Color blue = Color(0xFF1E90FF);
  static const Color gray898C98 = Color(0xFF898C98);
  static const Color grayECEDF0 = Color(0xFFECEDF0);
  static const Color grayF5F5F5 = Color(0xFFF5F5F5);
  static const Color grayAEB1BA = Color(0xFFAEB1BA);
  static const Color grayD9DADF = Color(0xFFD9DADF);
  static const Color yellowA68242 = Color(0xFFA68242);
  static const Color yellowFFF9E7 = Color(0xFFFFF9E7);
  static const Color green12B76A = Color(0xFF12B76A);
  static const Color redF04438 = Color(0xFFF04438);
  static const Color redD92D20 = Color(0xFFD92D20);
  static const Color greyF9F9FA = Color(0xFFF9F9FA);

  static const Color grayBDBDBD = Color(0xFFBDBDBD);
  final AppStateColor gray;

  /// Green Color
  final AppStateColor success;

  final CupertinoSwitchTheme cupertinoSwitch;
  final Color appBarColor;
  final Color iconColor;
  final Color hintTextColor;
  final AppStateColor red;
  final AppStateColor yellow;
  final Color secondaryBackground;

  const AppColorTheme({
    required this.title,
    required this.primaryText,
    required this.secondaryText1,
    required this.secondaryText2,
    required this.disable,
    required this.dividers1,
    required this.dividers2,
    required this.borderFocused,
    required this.borderEnable,
    required this.buttonBackgroundPrimary,
    required this.background2,
    required this.background3,
    required this.gray,
    required this.success,
    required this.cupertinoSwitch,
    required this.appBarColor,
    required this.iconColor,
    required this.hintTextColor,
    required this.barrierColor,
    required this.mbsBarrierColor,
    required this.dialogBackground,
    required this.red,
    required this.yellow,
    required this.secondaryBackground,
  });

  @override
  ThemeExtension<AppColorTheme> copyWith() {
    return AppColorTheme(
      title: title,
      primaryText: primaryText,
      secondaryText1: secondaryText1,
      secondaryText2: secondaryText2,
      disable: disable,
      dividers1: dividers1,
      dividers2: dividers2,
      borderFocused: borderFocused,
      borderEnable: borderEnable,
      buttonBackgroundPrimary: buttonBackgroundPrimary,
      background2: background2,
      background3: background3,
      gray: gray,
      barrierColor: barrierColor,
      mbsBarrierColor: mbsBarrierColor,
      dialogBackground: dialogBackground,
      success: success,
      cupertinoSwitch: cupertinoSwitch,
      appBarColor: appBarColor,
      iconColor: iconColor,
      hintTextColor: hintTextColor,
      red: red,
      yellow: yellow,
      secondaryBackground: secondaryBackground,
    );
  }

  @override
  ThemeExtension<AppColorTheme> lerp(covariant AppColorTheme other, double t) {
    return AppColorTheme(
      title: Color.lerp(title, other.title, t)!,
      primaryText: Color.lerp(primaryText, other.primaryText, t)!,
      secondaryText1: Color.lerp(secondaryText1, other.secondaryText1, t)!,
      secondaryText2: Color.lerp(secondaryText2, other.secondaryText2, t)!,
      disable: Color.lerp(disable, other.disable, t)!,
      dividers1: Color.lerp(dividers1, other.dividers1, t)!,
      dividers2: Color.lerp(dividers2, other.dividers2, t)!,
      borderFocused: Color.lerp(borderFocused, other.borderFocused, t)!,
      borderEnable: Color.lerp(borderEnable, other.borderEnable, t)!,
      buttonBackgroundPrimary: Color.lerp(buttonBackgroundPrimary, other.buttonBackgroundPrimary, t)!,
      background2: Color.lerp(background2, other.background2, t)!,
      background3: Color.lerp(background3, other.background3, t)!,
      gray: AppStateColor.lerp(gray, other.gray, t)!,
      barrierColor: Color.lerp(barrierColor, other.barrierColor, t)!,
      mbsBarrierColor: Color.lerp(mbsBarrierColor, other.mbsBarrierColor, t)!,
      dialogBackground: Color.lerp(dialogBackground, other.dialogBackground, t)!,
      success: AppStateColor.lerp(success, other.success, t)!,
      cupertinoSwitch: CupertinoSwitchTheme(
        activeColor: Color.lerp(
          cupertinoSwitch.activeColor,
          other.cupertinoSwitch.activeColor,
          t,
        )!,
        trackColor: Color.lerp(
          cupertinoSwitch.trackColor,
          other.cupertinoSwitch.trackColor,
          t,
        )!,
      ),
      appBarColor: Color.lerp(appBarColor, other.appBarColor, t)!,
      iconColor: Color.lerp(iconColor, other.iconColor, t)!,
      hintTextColor: Color.lerp(hintTextColor, other.hintTextColor, t)!,
      red: AppStateColor.lerp(red, other.red, t)!,
      yellow: AppStateColor.lerp(yellow, other.yellow, t)!,
      secondaryBackground: Color.lerp(secondaryBackground, other.secondaryBackground, t)!,
    );
  }

  static AppColorTheme of(BuildContext context) {
    return Theme.of(context).extension<AppColorTheme>()!;
  }
}
