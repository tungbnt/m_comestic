import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mcomestic/common/components/progess_dot_loading.dart';
import 'package:mcomestic/general/constants/app_colors.dart';
import 'package:mcomestic/modules/app_manager.dart';

import '../../../general/constants/app_constants.dart';
import '../../../general/constants/app_styles.dart';

class DialogService {
  static BuildContext get context =>
      AppManager.globalKeyRootMaterial.currentContext!;

  static Future<void> showLoadingDefault(
      {String? content, String? title, String? codeError, Function? action}) async {


    await showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.6),
      builder: (context) =>
          Material(
            type: MaterialType.transparency,
            child: Dialog(
              elevation: 0,
              backgroundColor: Colors.white,
              // insetPadding: const EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Container(
                padding: EdgeInsets.only(top: 40),
                alignment: Alignment.center,
                height: 111,
                width: 289,
                decoration: AppStyles.boxDecoration,
                child: Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'Đợi xử lí từ  ',
                              style: AppStyles.text50016(color: AppColors.black)),
                          TextSpan(
                              text: r'"M-comestic"',
                              style: AppStyles.text50018(color: AppColors.primary)),
                        ],
                      ),
                    ),
                    const ProgressDotLoading(
                      color: AppColors.bgWhiteFFFFFF,
                      size: 50,
                    ),
                  ],
                ),
              ),
            ),
          ),

    );
  }

  static void showDialogNotification({String? title, String? body}) {
    showDialog(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
          title: Text(title ?? ''),
          content: Text(body ?? ''),
          actions: [
            CupertinoDialogAction(
              isDefaultAction: true,
              child: Text('ok'),
              onPressed: () async {
                Navigator.of(context, rootNavigator: true).pop();
              },
            )
          ],
        ));
  }

  static void showToast({String? msg}) {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}