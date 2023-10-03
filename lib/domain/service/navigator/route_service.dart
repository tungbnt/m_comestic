import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mcomestic/modules/app_manager.dart';


//Handle Navigator Route to any Page
@singleton
class RouteService {
  static BuildContext get context =>
      AppManager.globalKeyRootMaterial.currentContext!;


  static Route? getCurrentRoute() {
    Route? currentRoute;
    Navigator.popUntil(context, (route) {
      currentRoute = route;
      return true;
    });
    return currentRoute;
  }

}