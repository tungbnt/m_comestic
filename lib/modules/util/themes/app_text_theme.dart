import 'package:flutter/material.dart';

const defaultFontFamily = 'Helvetica Neue';

class AppTextTheme extends ThemeExtension<AppTextTheme> {
  /// Base style for inheritable
  ///
  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontWeight: FontWeight.w400,
  ///   colorLightTheme: title ~ black,
  /// )
  /// ```
  final TextStyle baseRegular;

  /// Base style for inheritable
  ///
  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontWeight: FontWeight.w700,
  ///   colorLightTheme: title ~ black,
  /// )
  /// ```
  final TextStyle baseBold;

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 34,
  ///   colorLightTheme: title ~ black,
  ///   letterSpacing: 0.06,
  /// )
  /// ```
  final TextStyle displayLarge;

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 34,
  ///   fontWeight: FontWeight.w700,
  ///   colorLightTheme: title ~ black,
  ///   letterSpacing: 0.06,
  /// )
  /// ```
  TextStyle get displayLargeBold {
    return displayLarge.copyWith(
      fontWeight: FontWeight.w700,
    );
  }

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 28,
  ///   colorLightTheme: title ~ black,
  /// )
  /// ```
  final TextStyle heading1;

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 28,
  ///   fontWeight: FontWeight.w700,
  ///   colorLightTheme: title ~ black,
  /// )
  /// ```
  TextStyle get heading1Bold {
    return heading1.copyWith(
      fontWeight: FontWeight.w700,
    );
  }

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 22,
  ///   colorLightTheme: title ~ black,
  /// )
  /// ```
  final TextStyle heading2;

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 22,
  ///   fontWeight: FontWeight.w700,
  ///   colorLightTheme: title ~ black,
  /// )
  /// ```
  TextStyle get heading2Bold {
    return heading2.copyWith(
      fontWeight: FontWeight.w700,
    );
  }

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 20,
  ///   colorLightTheme: title ~ black,
  /// )
  /// ```
  final TextStyle heading3;

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 20,
  ///   fontWeight: FontWeight.w700,
  ///   colorLightTheme: title ~ black,
  /// )
  /// ```
  TextStyle get heading3Bold {
    return heading3.copyWith(
      fontWeight: FontWeight.w700,
    );
  }

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 17,
  ///   colorLightTheme: title ~ black,
  /// )
  /// ```
  final TextStyle headline;

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 17,
  ///   fontWeight: FontWeight.w700,
  ///   colorLightTheme: title ~ black,
  /// )
  /// ```
  TextStyle get headlineBold {
    return headline.copyWith(
      fontWeight: FontWeight.w700,
    );
  }

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 14,
  ///   colorLightTheme: title ~ black,
  /// )
  /// ```
  final TextStyle subheadline;

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 14,
  ///   fontWeight: FontWeight.w700,
  ///   colorLightTheme: title ~ black,
  /// )
  /// ```
  TextStyle get subheadlineBold {
    return subheadline.copyWith(
      fontWeight: FontWeight.w700,
    );
  }

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 15,
  ///   fontWeight: FontWeight.w700,
  ///   colorLightTheme: black,
  /// )
  /// ```
  final TextStyle groupTitle;

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 17,
  ///   colorLightTheme: primaryText ~ gray.shade700,
  /// )
  /// ```
  final TextStyle bodyLarge;

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 17,
  ///   fontWeight: FontWeight.w700,
  ///   colorLightTheme: primaryText ~ gray.shade700,
  /// )
  /// ```
  TextStyle get bodyLargeBold {
    return bodyLarge.copyWith(
      fontWeight: FontWeight.w700,
    );
  }

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 15,
  ///   colorLightTheme: primaryText ~ gray.shade700,
  /// )
  /// ```
  final TextStyle bodyMedium;

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 15,
  ///   fontWeight: FontWeight.w700,
  ///   colorLightTheme: primaryText ~ gray.shade700,
  /// )
  /// ```
  TextStyle get bodyMediumBold {
    return bodyMedium.copyWith(
      fontWeight: FontWeight.w700,
    );
  }

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 13,
  ///   colorLightTheme: gray.shade700,
  /// )
  /// ```
  final TextStyle bodySmall;

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 13,
  ///   fontWeight: FontWeight.w700,
  ///   colorLightTheme: gray.shade700,
  /// )
  /// ```
  TextStyle get bodySmallBold {
    return bodySmall.copyWith(
      fontWeight: FontWeight.w700,
    );
  }

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 14,
  ///   colorLightTheme: secondaryText1 ~ Color(0xFFA68242) ~ #A68242,
  /// )
  /// ```
  final TextStyle footnote;

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 14,
  ///   fontWeight: FontWeight.w700,
  ///   colorLightTheme: secondaryText1 ~ Color(0xFFA68242) ~ #A68242,
  /// )
  /// ```
  TextStyle get footnoteBold {
    return footnote.copyWith(
      fontWeight: FontWeight.w700,
    );
  }

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 12,
  ///   colorLightTheme: secondaryText1 ~ Color(0xFFA68242) ~ #A68242,
  /// )
  /// ```
  final TextStyle caption1;

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 12,
  ///   fontWeight: FontWeight.w700,
  ///   colorLightTheme: secondaryText1 ~ Color(0xFFA68242) ~ #A68242,
  /// )
  /// ```
  TextStyle get caption1Bold {
    return caption1.copyWith(
      fontWeight: FontWeight.w700,
    );
  }

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 11,
  ///   colorLightTheme: secondaryText1 ~ Color(0xFFA68242) ~ #A68242,
  /// )
  /// ```
  final TextStyle caption2;

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 11,
  ///   fontWeight: FontWeight.w700,
  ///   colorLightTheme: secondaryText1 ~ Color(0xFFA68242) ~ #A68242,
  /// )
  /// ```
  TextStyle get caption2Bold {
    return caption2.copyWith(
      fontWeight: FontWeight.w700,
    );
  }

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 15,
  ///   fontWeight: FontWeight.w400,
  ///   colorLightTheme: gray.shade700,
  /// )
  /// ```
  final TextStyle inputField;

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 15,
  ///   fontWeight: FontWeight.w400,
  ///   colorLightTheme: gray.shade500,
  /// )
  /// ```
  final TextStyle inputHint;

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 11,
  ///   fontWeight: FontWeight.w400,
  ///   colorLightTheme: gray.shade500,
  /// )
  /// ```
  final TextStyle inputLabel;

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 11,
  ///   fontWeight: FontWeight.w400,
  ///   colorLightTheme: red,
  /// )
  /// ```
  final TextStyle inputError;

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 15,
  ///   fontWeight: FontWeight.w500,
  ///   colorLightTheme: white,
  /// )
  /// ```
  final TextStyle button;

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 11,
  ///   fontWeight: FontWeight.w400,
  ///   colorLightTheme: gray.shade500,
  /// )
  /// ```
  final TextStyle smallButton;

  /// ```dart
  /// TextStyle(
  ///   fontFamily: Helvetica Neue,
  ///   fontSize: 15,
  ///   fontWeight: FontWeight.w400,
  ///   colorLightTheme: gray.shade700,
  /// )
  /// ```
  final TextStyle listTitle;

  /// ```dart
  /// TextStyle(
  ///   fontFamily: Helvetica Neue,
  ///   fontSize: 12,
  ///   fontWeight: FontWeight.w400,
  ///   colorLightTheme: gray.shade500,
  /// )
  /// ```
  final TextStyle listTitleDescription;

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 17,
  ///   fontWeight: FontWeight.w400,
  ///   colorLightTheme: black,
  /// )
  /// ```
  final TextStyle cupertinoActionSheetAction;

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 15,
  ///   fontWeight: FontWeight.w400,
  ///   colorLightTheme: gray.shade700,
  /// )
  /// ```
  final TextStyle tabBarLabel;

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 16,
  ///   fontWeight: FontWeight.w400,
  ///   colorLightTheme: gray.shade700,
  /// )
  /// ```
  final TextStyle bottomSheetTitle;

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 15,
  ///   fontWeight: FontWeight.w400,
  ///   colorLightTheme: gray.shade700,
  /// )
  /// ```
  final TextStyle bottomSheetSmallTitle;

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 12,
  ///   fontWeight: FontWeight.w400,
  ///   colorLightTheme: gray.shade700,
  /// )
  /// ```
  final TextStyle chip;

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 12,
  ///   fontWeight: FontWeight.w400,
  /// )
  /// ```
  final TextStyle goodsStatus;

  /// ```dart
  /// TextStyle(
  ///   fontFamily: 'Helvetica Neue',
  ///   fontSize: 15,
  ///   colorLightTheme: gray.shade600,
  /// )
  /// ```
  final TextStyle dataMedium;

  final TextStyle buttonBook;

  final TextStyle textLabel;
  final TextStyle textW700S15;
  final TextStyle textW700S13;
  final TextStyle textW700S12;
  final TextStyle textW400S13;
  final TextStyle textW400S12;
  final TextStyle textW400S9;
  final TextStyle textW700S17;

  const AppTextTheme({
    this.baseRegular = const TextStyle(
      fontFamily: defaultFontFamily,
      fontWeight: FontWeight.w400,
    ),
    this.baseBold = const TextStyle(
      fontFamily: defaultFontFamily,
      fontWeight: FontWeight.w700,
    ),
    //
    this.displayLarge = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 34,
      letterSpacing: 0.06,
    ),
    this.heading1 = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 28,
    ),
    this.heading2 = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 22,
    ),
    this.heading3 = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 20,
    ),
    this.headline = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 17,
    ),
    this.subheadline = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 14,
    ),
    this.groupTitle = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 15,
      fontWeight: FontWeight.w700,
    ),
    this.bodyLarge = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 17,
    ),
    this.bodyMedium = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 15,
    ),
    this.bodySmall = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 13,
    ),
    this.footnote = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 14,
    ),
    this.caption1 = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 12,
    ),
    this.caption2 = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 11,
    ),
    //
    this.inputField = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    this.inputHint = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    this.inputLabel = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    this.inputError = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 11,
      fontWeight: FontWeight.w400,
    ),
    //
    this.button = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 15,
      fontWeight: FontWeight.w500,
    ),
//
    this.buttonBook = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 13,
      fontWeight: FontWeight.w500,
    ),
    this.smallButton = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 11,
      fontWeight: FontWeight.w400,
    ),
    this.listTitle = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    this.listTitleDescription = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    this.cupertinoActionSheetAction = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 17,
      fontWeight: FontWeight.w400,
    ),
    this.tabBarLabel = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    //
    this.bottomSheetTitle = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    this.bottomSheetSmallTitle = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    //
    this.chip = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    //
    this.goodsStatus = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    this.dataMedium = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 15,
    ),
    //
    this.textLabel = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),
    this.textW700S15 = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 15,
      fontWeight: FontWeight.w700,
    ),
    this.textW700S13 = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 13,
      fontWeight: FontWeight.w700,
    ),
    this.textW700S12 = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),
    this.textW400S13 = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),
    this.textW400S12 = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),
    this.textW400S9 = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 9,
      fontWeight: FontWeight.w400,
    ),
    this.textW700S17 = const TextStyle(
      fontFamily: defaultFontFamily,
      fontSize: 17,
      fontWeight: FontWeight.w700,
    ),
  });

  @override
  ThemeExtension<AppTextTheme> copyWith({
    Color? baseRegularColor,
    Color? baseBoldColor,
    Color? displayLargeColor,
    Color? headline1Color,
    Color? headline2Color,
    Color? headline3Color,
    Color? headlineColor,
    Color? subheadlineColor,
    Color? groupTitleColor,
    Color? bodyLargeColor,
    Color? bodyMediumColor,
    Color? bodySmallColor,
    Color? footnoteColor,
    Color? caption1Color,
    Color? caption2Color,
    Color? inputFieldColor,
    Color? inputHintColor,
    Color? inputLabelColor,
    Color? inputErrorColor,
    Color? buttonColor,
    Color? smallButtonColor,
    Color? listTitleColor,
    Color? listTitleDescriptionColor,
    Color? cupertinoActionSheetActionColor,
    Color? tabBarLabelColor,
    Color? bottomSheetTitleColor,
    Color? bottomSheetSmallTitleColor,
    Color? chipColor,
    Color? goodsStatusColor,
    Color? dataMediumColor,
    Color? textLabelColor,
    Color? textW700S15Color,
    Color? textW700S13Color,
    Color? textW700S12Color,
    Color? textW400S13Color,
    Color? textW400S12Color,
    Color? textW400S9Color,
    Color? textW700S17Color,
  }) {
    return AppTextTheme(
      baseRegular: baseRegular.copyWith(color: baseRegularColor),
      baseBold: baseBold.copyWith(color: baseBoldColor),
      displayLarge: displayLarge.copyWith(color: displayLargeColor),
      heading1: heading1.copyWith(color: headline1Color),
      heading2: heading2.copyWith(color: headline2Color),
      heading3: heading3.copyWith(color: headline3Color),
      headline: headline.copyWith(color: headlineColor),
      subheadline: subheadline.copyWith(color: subheadlineColor),
      groupTitle: groupTitle.copyWith(color: groupTitleColor),
      bodyLarge: bodyLarge.copyWith(color: bodyLargeColor),
      bodyMedium: bodyMedium.copyWith(color: bodyMediumColor),
      bodySmall: bodySmall.copyWith(color: bodySmallColor),
      footnote: footnote.copyWith(color: footnoteColor),
      caption1: caption1.copyWith(color: caption1Color),
      caption2: caption2.copyWith(color: caption2Color),
      inputField: inputField.copyWith(color: inputFieldColor),
      inputHint: inputField.copyWith(color: inputHintColor),
      inputLabel: inputLabel.copyWith(color: inputLabelColor),
      inputError: inputError.copyWith(color: inputErrorColor),
      button: button.copyWith(color: buttonColor),
      smallButton: smallButton.copyWith(color: smallButtonColor),
      listTitle: listTitle.copyWith(color: listTitleColor),
      listTitleDescription:
          listTitleDescription.copyWith(color: listTitleDescriptionColor),
      cupertinoActionSheetAction: cupertinoActionSheetAction.copyWith(
          color: cupertinoActionSheetActionColor),
      tabBarLabel: tabBarLabel.copyWith(color: tabBarLabelColor),
      bottomSheetTitle: bottomSheetTitle.copyWith(color: bottomSheetTitleColor),
      bottomSheetSmallTitle:
          bottomSheetSmallTitle.copyWith(color: bottomSheetSmallTitleColor),
      chip: chip.copyWith(color: chipColor),
      goodsStatus: goodsStatus.copyWith(color: goodsStatusColor),
      dataMedium: dataMedium.copyWith(color: dataMediumColor),
      textLabel: textLabel.copyWith(color: textLabelColor),
      textW700S15: textW700S15.copyWith(color: textW700S15Color),
      textW700S13: textW700S13.copyWith(color: textW700S13Color),
      textW700S12: textW700S12.copyWith(color: textW700S12Color),
      textW400S13: textW400S13.copyWith(color: textW400S13Color),
      textW400S12: textW400S12.copyWith(color: textW400S12Color),
      textW400S9: textW400S9.copyWith(color: textW400S9Color),
      textW700S17: textW700S17.copyWith(color: textW700S17Color),
    );
  }

  @override
  ThemeExtension<AppTextTheme> lerp(covariant AppTextTheme other, double t) {
    return AppTextTheme(
      baseRegular: TextStyle.lerp(baseRegular, other.baseRegular, t)!,
      baseBold: TextStyle.lerp(baseBold, other.baseBold, t)!,
      displayLarge: TextStyle.lerp(displayLarge, other.displayLarge, t)!,
      heading1: TextStyle.lerp(heading1, other.heading1, t)!,
      heading2: TextStyle.lerp(heading2, other.heading2, t)!,
      heading3: TextStyle.lerp(heading3, other.heading3, t)!,
      headline: TextStyle.lerp(headline, other.headline, t)!,
      subheadline: TextStyle.lerp(subheadline, other.subheadline, t)!,
      bodyLarge: TextStyle.lerp(bodyLarge, other.bodyLarge, t)!,
      bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t)!,
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t)!,
      footnote: TextStyle.lerp(footnote, other.footnote, t)!,
      caption1: TextStyle.lerp(caption1, other.caption1, t)!,
      caption2: TextStyle.lerp(caption2, other.caption2, t)!,
      inputField: TextStyle.lerp(inputField, other.inputField, t)!,
      inputHint: TextStyle.lerp(inputHint, other.inputHint, t)!,
      inputLabel: TextStyle.lerp(inputLabel, other.inputLabel, t)!,
      inputError: TextStyle.lerp(inputError, other.inputError, t)!,
      button: TextStyle.lerp(button, other.button, t)!,
      smallButton: TextStyle.lerp(smallButton, other.smallButton, t)!,
      listTitle: TextStyle.lerp(listTitle, other.listTitle, t)!,
      listTitleDescription: TextStyle.lerp(
        listTitleDescription,
        other.listTitleDescription,
        t,
      )!,
      cupertinoActionSheetAction: TextStyle.lerp(
        cupertinoActionSheetAction,
        other.cupertinoActionSheetAction,
        t,
      )!,
      tabBarLabel: TextStyle.lerp(tabBarLabel, other.tabBarLabel, t)!,
      bottomSheetTitle:
          TextStyle.lerp(bottomSheetTitle, other.bottomSheetTitle, t)!,
      bottomSheetSmallTitle: TextStyle.lerp(
        bottomSheetSmallTitle,
        other.bottomSheetSmallTitle,
        t,
      )!,
      chip: TextStyle.lerp(chip, other.chip, t)!,
      goodsStatus: TextStyle.lerp(goodsStatus, other.goodsStatus, t)!,
      dataMedium: TextStyle.lerp(dataMedium, other.dataMedium, t)!,
      textLabel: TextStyle.lerp(textLabel, other.textLabel, t)!,
      textW700S15: TextStyle.lerp(textW700S15, other.textW700S15, t)!,
      textW700S13: TextStyle.lerp(textW700S13, other.textW700S13, t)!,
      textW700S12: TextStyle.lerp(textW700S12, other.textW700S12, t)!,
      textW400S13: TextStyle.lerp(textW400S13, other.textW400S13, t)!,
      textW400S12: TextStyle.lerp(textW400S12, other.textW400S12, t)!,
      textW400S9: TextStyle.lerp(textW400S9, other.textW400S9, t)!,
      textW700S17: TextStyle.lerp(textW700S17, other.textW700S17, t)!,
    );
  }

  static AppTextTheme of(BuildContext context) {
    return Theme.of(context).extension<AppTextTheme>()!;
  }
}
