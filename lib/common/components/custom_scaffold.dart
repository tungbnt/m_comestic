import 'package:flutter/material.dart';
import 'package:mcomestic/domain/service/navigator/route_service.dart';
import 'package:mcomestic/general/constants/app_colors.dart';
import 'package:mcomestic/general/constants/app_styles.dart';
import 'package:remixicon/remixicon.dart';


class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    required this.title,
    this.titleFontSize,
    this.automaticallyImplyLeading = true,
    this.actions,
    this.backgroundColor,
    required this.body,
    this.bottomNavigationBar,
    this.elevation = 0,
  });

  final String title;
  final double? titleFontSize;
  final bool automaticallyImplyLeading;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final Widget body;
  final Widget? bottomNavigationBar;
  final double? elevation;

  void _handleBackButton() {
    RouteService.pop();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: automaticallyImplyLeading,
        leading: !automaticallyImplyLeading
            ? null
            : IconButton(
                icon: Icon(

                  Remix.arrow_left_s_line,
                  size: 24,
                  color: AppColors.primary,
                ),
                iconSize: 24,
                padding: const EdgeInsets.only(left: 16, right: 8),
                onPressed: _handleBackButton,
                tooltip: MaterialLocalizations.of(context).backButtonTooltip,
              ),
        leadingWidth: 48,
        title: Text(
          title.toUpperCase(),
          style: AppStyles.text70020(color: AppColors.black),
        ),
        centerTitle: true,
        toolbarHeight: 43,
        backgroundColor: AppColors.bgWhiteFFFFFF,
        elevation: elevation,
        actions: actions,
      ),
      backgroundColor: backgroundColor ?? AppColors.black,
      body: body,
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: bottomNavigationBar == null
          ? null
          : SafeArea(
              top: false,
              child: bottomNavigationBar!,
            ),
    );
  }
}
