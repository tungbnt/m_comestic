import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mcomestic/modules/app_manager.dart';


//Handle Navigator Route to any Page
@singleton
class RouteService {
  static BuildContext get context =>
      AppManager.globalKeyRootMaterial.currentContext!;

  static dynamic pop() {
    return Navigator.pop(context);
  }
  static Route? getCurrentRoute() {
    Route? currentRoute;
    Navigator.popUntil(context, (route) {
      currentRoute = route;
      return true;
    });
    return currentRoute;
  }

  static dynamic routeGoOnePage(Widget page) {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  static dynamic routePushReplacementPage(Widget page) {
    MaterialPageRoute route = MaterialPageRoute(
        builder: (context) {
          return page;
        });
    return Navigator.pushReplacement(
      context,
      route,
    );
  }

}