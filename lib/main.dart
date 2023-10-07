import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mcomestic/general/inject_dependencies/inject_dependencies.dart';
import 'modules/init_app/screens/init_app.page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  configureDependencies();
  //Default the main will play on development environment
  runApp(ScreenUtilInit(builder: (context, widget) {
    return const MComesticApp();
  }));
}
