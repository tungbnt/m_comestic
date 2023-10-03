import 'package:flutter/material.dart';

Future<dynamic> openDialogBox(BuildContext context, Widget widget,{bool? isBarrierDismissible = true}) async{
  return await showDialog(
      barrierColor: const Color.fromRGBO(255, 255, 255, 0.85),
      context: context,
      barrierDismissible: isBarrierDismissible!,
      builder: (context) {
        return widget;
      });
}

openBottomSheetBox(BuildContext context, Widget widget) {
  return showModalBottomSheet(
      isScrollControlled: true,
      barrierColor: const Color.fromRGBO(255, 255, 255, 0.85),
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return widget;
      });
}
