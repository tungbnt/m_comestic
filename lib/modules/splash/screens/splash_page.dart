import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mcomestic/domain/service/navigator/route_service.dart';
import 'package:mcomestic/general/constants/app_colors.dart';
import 'package:mcomestic/general/constants/app_images.dart';
import 'package:mcomestic/modules/login/screens/login_screen.dart';
import 'package:mcomestic/modules/util/assetsPath/assets_PNG.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    durationSplash();


  }
  void durationSplash(){
    Timer(const Duration(seconds: 2), () {
      RouteService.routePushReplacementPage(LoginScreen());
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(PathPNG.splash, fit: BoxFit.cover)));
  }
}
