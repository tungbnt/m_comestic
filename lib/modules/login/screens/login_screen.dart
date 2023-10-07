import 'dart:async';
import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mcomestic/common/components/button/primary_button.dart';
import 'package:mcomestic/common/components/text_field_option.dart';
import 'package:mcomestic/domain/service/dialog/dialog_service.dart';
import 'package:mcomestic/domain/service/navigator/route_service.dart';
import 'package:mcomestic/general/constants/app_colors.dart';
import 'package:mcomestic/modules/dashboard/screen/dashboard_screens.dart';
import 'package:mcomestic/modules/util/app_gap.dart';
import 'package:mcomestic/modules/util/assetsPath/assets_PNG.dart';
import 'package:mcomestic/modules/util/assetsPath/assets_SVG.dart';
import 'package:mcomestic/modules/util/assetsPath/assets_icons.dart';
import 'package:mcomestic/modules/util/key_const.dart';
import 'package:mcomestic/modules/util/screen_size.dart';
import 'package:mcomestic/modules/util/utils/validate.dart';

import '../../../domain/models/country_dialling_code.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late CountryDiallingCode selectedCodeData;
  late TextEditingController phoneController;

  @override
  void initState() {
    super.initState();
    selectedCodeData = CountryDiallingCode.vi;
    phoneController = TextEditingController();
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
          padding:
              EdgeInsets.symmetric(horizontal: width(16), vertical: height(46)),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height(27)),
                Row(
                  children: [
                    Image.asset(
                      PathPNG.logo,
                      height: 65,
                    ),
                    AppGap.w10,
                    SvgPicture.asset(
                      PathSVG.appbar_logo,
                      height: 25,
                    ),
                    // Spacer(),
                    // dropDownLang()
                    // dropDownLang()
                  ],
                ),
                AppGap.h12,
                buildTitle(),
                AppGap.h32,
                const Text(
                  KeyConst.number_phone,
                  style: TextStyle(
                      color: AppColors.black, fontFamily: 'Quicksand'),
                ),
                AppGap.h10,
                TextFieldOption(
                  hintText: KeyConst.hint_email,
                  controller: phoneController,
                  onChanged: (value) {},
                  validator: (value) => Validate.validatePhone(value!),
                ),
                AppGap.h40,
                SizedBox(
                  width: double.infinity,
                  height: height(44),
                  child: PrimaryButton(
                    backgroundColor: AppColors.pinkSkyColor,
                    isCenter: true,
                    onPressed: () async {
                      DialogService.showLoadingDefault();

                      Timer(const Duration(seconds: 4), () {
                        FocusManager.instance.primaryFocus?.unfocus();
                        RouteService.pop();
                        RouteService.routeGoOnePage(const DashboardScreens());
                      });

                      // controller.resetValidate();
                    },
                    text: KeyConst.next.toUpperCase(),
                  ),
                ),
                AppGap.h24,
                lineWithText(),
                AppGap.h24,
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
        text: TextSpan(children: [
          const TextSpan(
            text: "${KeyConst.by_login_with_your_acc}",
            style: const TextStyle(
                color: AppColors.black, fontFamily: 'Quicksand'),
          ),
          TextSpan(
            text: "${KeyConst.condition_polyci} ",
            style: const TextStyle(
                color: AppColors.errorColor, fontFamily: 'Quicksand'),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          const TextSpan(
            text: KeyConst.and,
            style: const TextStyle(
                color: AppColors.black, fontFamily: 'Quicksand'),
          ),
          TextSpan(
            text: " ${KeyConst.security_polyci} ",
            style: const TextStyle(
                color: AppColors.errorColor, fontFamily: 'Quicksand'),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          const TextSpan(
            text: "${KeyConst.of} ",
            style: const TextStyle(
                color: AppColors.black, fontFamily: 'Quicksand'),
          ),
          const TextSpan(
            text: KeyConst.elise,
            style: const TextStyle(
                color: AppColors.black, fontFamily: 'Quicksand'),
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
                onPressed: () {
                  RouteService.routeGoOnePage(const DashboardScreens());
                },
                hasBorder: true,
                iconPath: PathIcon.apple_iconSVG,
                text: KeyConst.login_appleId.toUpperCase()),
          ),
        ),
        AppGap.h8,
        buildButtonElement(
            onPressed: () {},
            hasBorder: true,
            iconPath: PathIcon.facebook_iconSVG,
            text: KeyConst.login_facebook.toUpperCase()),
        AppGap.h8,
        buildButtonElement(
            onPressed: () {},
            hasBorder: true,
            iconPath: PathIcon.google_iconSVG,
            text: KeyConst.login_google.toUpperCase()),
        AppGap.h8,
        buildButtonElement(
            text: KeyConst.skip_login.toUpperCase(), onPressed: () {}),
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
            child: Padding(
                padding: EdgeInsets.only(right: width(8)),
                child: SvgPicture.asset(iconPath ?? ""))),
        backgroundColor: AppColors.backgroundGreyColor,
        borderColor: hasBorder != true ? null : AppColors.black,
        // hasBorder: hasBorder,
        onPressed: () {
          onPressed?.call();
        },
        textStyle:
            const TextStyle(color: AppColors.black, fontFamily: 'Quicksand'),
        text: text,
      ),
    );
  }

  Widget buildTitle() {
    return Row(
      children: [
        Text(
          KeyConst.login.toUpperCase(),
          style: const TextStyle(
            color: AppColors.black,
            fontFamily: 'Quicksand',
            fontSize: 20,
          ),
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
          color: AppColors.black,
        )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width(5)),
          child: Text(
            KeyConst.or.toUpperCase(),
            style: const TextStyle(
                color: AppColors.black, fontFamily: 'Quicksand'),
          ),
        ),
        Flexible(
            child: Container(
          height: 1,
          color: AppColors.black,
        ))
      ],
    );
  }

  Widget line() {
    return Flexible(
        child: Container(
      height: 1,
      color: AppColors.black,
    ));
  }

// AppBar appbar() {
//   return AppBar(
//     // primary: false,
//     leadingWidth: 0,
//     titleSpacing: width(16),
//     elevation: 0,
//     backgroundColor: AppColors.backgroundGreyColor,
//     title: SvgPicture.asset(PathSVG.appbar_logo),
//     centerTitle: false,
//     // actions: [dropDownLang()],
//   );
// }
}
