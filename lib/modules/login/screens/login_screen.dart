import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mcomestic/common/components/button/primary_button.dart';
import 'package:mcomestic/common/components/form/phone_number_field.dart';
import 'package:mcomestic/modules/util/app_gap.dart';
import 'package:mcomestic/modules/util/assetsPath/assets_icons.dart';
import 'package:mcomestic/modules/util/key_const.dart';
import 'package:mcomestic/modules/util/screen_size.dart';
import 'package:mcomestic/modules/util/utils/validate.dart';

import '../../../domain/models/country_dialling_code.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late CountryDiallingCode selectedCodeData;
  late TextEditingController phoneController;

  @override
  void initState() {
    selectedCodeData = CountryDiallingCode.vi;
    phoneController = TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          toolbarHeight: 0,
        ),
        body: Container(
          // height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: width(16), vertical: height(46)),
          child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: height(57)),
            const Row(
              children: [
                // SvgPicture.asset(PathSVG.elise_appbar_logoSVG),
                Spacer(),
                // dropDownLang()
              ],
            ),
            SizedBox(height: height(46)),
            buildTitle(),
            SizedBox(height: height(40)),
            const Text(
              KeyConst.number_phone,
              // style: appTextTheme.caption2.copyWith(color: appColorTheme.gray[400]),
            ),
            PhoneNumberField(
              validator: (value) {
                return Validate.validatePhone(value!);
              },
              selectedCodeData: selectedCodeData,
              controller: phoneController,
              // formKey: controller.phoneFormKey,
              textInputType: TextInputType.phone,
            ),
            SizedBox(height: height(40)),
            SizedBox(
              width: double.infinity,
              height: height(44),
              child: PrimaryButton(
                isCenter: true,
                onPressed: () async {
                  // showLoading();
                  FocusManager.instance.primaryFocus?.unfocus();
                  // controller.resetValidate();
                },
                text: KeyConst.next.toUpperCase(),
              ),
            ),
            SizedBox(height: height(24)),
            lineWithText(),
            SizedBox(height: height(24)),
            button(),
            const Spacer(),
            buildTextBottom(),
          ]),
        ),
      ),
    );
  }
  Widget buildTextBottom() {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan( children: [
          const TextSpan(text: "${KeyConst.by_login_with_your_acc}\n"),
          TextSpan(
            text: "${KeyConst.condition_polyci} ",
            // style: appTextTheme.chip.copyWith(fontWeight: FontWeight.w700, color: appColorTheme.secondaryText1),
            recognizer: TapGestureRecognizer()
              ..onTap = () {},
          ),
          const TextSpan(
            text: KeyConst.and,
          ),
          TextSpan(
            text: " ${KeyConst.security_polyci} ",
            // style: appTextTheme.chip.copyWith(fontWeight: FontWeight.w700, color: appColorTheme.secondaryText1),
            recognizer: TapGestureRecognizer()
              ..onTap = () {},
          ),
          const TextSpan(
            text: "${KeyConst.of} ",
          ),
          const TextSpan(
            text: KeyConst.elise,
            // style: appTextTheme.chip.copyWith(fontWeight: FontWeight.w700),
          ),
        ]),
      ),
    );
  }

  Widget button() {
    return Column(
      children: [
        Visibility(
          visible: Platform.isIOS,
          child: SizedBox(
            width: double.infinity,
            height: height(44),
            child: buildButtonElement(
                onPressed: (){},
                hasBorder: true,
                iconPath: PathIcon.apple_iconSVG,
                text: KeyConst.login_appleId.toUpperCase()),
          ),
        ),
        AppGap.h8,
        buildButtonElement(
            onPressed: (){},
            hasBorder: true,
            iconPath: PathIcon.facebook_iconSVG,
            text: KeyConst.login_facebook.toUpperCase()),
        AppGap.h8,
        buildButtonElement(
            onPressed: (){},
            hasBorder: true,
            iconPath: PathIcon.google_iconSVG,
            text: KeyConst.login_google.toUpperCase()),
        AppGap.h8,
        buildButtonElement(text: KeyConst.skip_login.toUpperCase(), onPressed: (){}),
      ],
    );
  }

  buildButtonElement({
    String? iconPath,
    String? text,
    bool? hasBorder,
    Function()? onPressed,
  }) {
    return SizedBox(
      width: double.infinity,
      height: height(44),
      child: PrimaryButton(
        isCenter: true,
        prefixIcon: Visibility(
            visible: iconPath != null,
            child: Padding(padding: EdgeInsets.only(right: width(8)), child: SvgPicture.asset(iconPath ?? ""))),
        // backgroundColor: appColorTheme.background2,
        // borderColor: hasBorder != true ? null : appColorTheme.gray[700],
        // hasBorder: hasBorder,
        onPressed: () {
          onPressed?.call();
        },
        // textStyle: appTextTheme.bodyMediumBold.copyWith(color: appColorTheme.gray[700]),
        text: text,
      ),
    );
  }

  Widget buildTitle() {
    return Row(
      children: [
        Text(
          KeyConst.login.toUpperCase(),
          // style: appTextTheme.heading3Bold,
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            // controller.onPressRegister();
          },
          child: const Text(
            KeyConst.create_account,
            // style: appTextTheme.bodyLarge,
          ),
        ),
      ],
    );
  }

  Widget lineWithText() {
    return Row(
      children: [
        Flexible(
            child: Container(
              height: 1,
              // color: appColorTheme.borderFocused,
            )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width(5)),
          child: Text(
            KeyConst.or.toUpperCase(),
            // style: appTextTheme.bodyMedium.copyWith(color: appColorTheme.gray[500]),
          ),
        ),
        Flexible(
            child: Container(
              height: 1,
              // color: appColorTheme.borderFocused,
            ))
      ],
    );
  }

  Widget line() {
    return Flexible(
        child: Container(
          height: 1,
          // color: appColorTheme.borderFocused,
        ));
  }





  AppBar appbar() {
    return AppBar(
      // primary: false,
      leadingWidth: 0,
      titleSpacing: width(16),
      elevation: 0,
      // backgroundColor: appColorTheme.background2,
      // title: SvgPicture.asset(PathSVG.elise_appbar_logoSVG),
      centerTitle: false,
      // actions: [dropDownLang()],
    );
  }
}

