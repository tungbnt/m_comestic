import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mcomestic/general/constants/app_colors.dart';
import 'package:mcomestic/modules/home/screen/home_view.dart';
import 'package:mcomestic/modules/member_page/screen/member_page_screens.dart';
import 'package:mcomestic/modules/util/app_gap.dart';
import 'package:mcomestic/modules/util/assetsPath/assets_SVG.dart';
import 'package:mcomestic/modules/util/key_const.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:remixicon/remixicon.dart';

import '../../util/themes/app_text_theme.dart';


class DashboardScreens extends StatefulWidget{
  const DashboardScreens({Key? key}) : super(key: key);

  @override
  State<DashboardScreens> createState() => _DashboardScreensState();
}

class _DashboardScreensState extends State<DashboardScreens> {
  int currentTabIndex = 0;
  final currentTabHomeIndex = 0;
  final ScrollController homeScrollController = ScrollController();
  PersistentTabController persistentTabController =
  PersistentTabController(initialIndex: 0);
  void animateToTop() {
    if (currentTabHomeIndex == 0) {
      homeScrollController.animateTo(0, duration: const Duration(seconds: 1), curve: Curves.fastOutSlowIn);
    }
  }
  void onItemsSelected(int index) {
    if (currentTabIndex == index && index == 0) {
      animateToTop();
    }

    currentTabIndex = index;
    persistentTabController.index = index;
  }

  @override
  Widget build(BuildContext context) {

    return CupertinoScaffold(
      topRadius: const Radius.circular(10),
      body: Theme(
        data: Theme.of(context),
        child: Builder(
          builder: (context) {
            return PersistentTabView(
              context,
              onItemSelected: (index) {
                onItemsSelected(index);
              },
              screens: _buildScreens(context),
              items: _navBarsItems(),
              confineInSafeArea: true,
              handleAndroidBackButtonPress: true,
              resizeToAvoidBottomInset: true,
              hideNavigationBarWhenKeyboardShows: true,
              controller: persistentTabController,
              navBarStyle: NavBarStyle.style14,
              screenTransitionAnimation: const ScreenTransitionAnimation(
                animateTabTransition: true,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: Duration(milliseconds: 200),
              ),
            );
          },
        ),
      ),
    );
  }

  List<Widget> _buildScreens(
    BuildContext context,
  ) {
    return [
      DashboardContext(
        context: context,
        child: const HomeView(),
      ),


      const MemberPage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems(

  ) {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Remix.home_line),
        activeColorPrimary: AppColors.black,
        inactiveColorPrimary:  AppColors.greyColor97939393,
        title: KeyConst.home,
        textStyle: TextStyle(),
      ),
      // PersistentBottomNavBarItem(
      //   icon: Material(
      //     type: MaterialType.transparency,
      //     child: Column(
      //       mainAxisSize: MainAxisSize.min,
      //       children: [
      //         SvgPicture.asset(
      //           PathSVG.category_searchSVG,
      //           color:  AppColors.greyColor,
      //         ),
      //         Text(
      //           KeyConst.category,
      //           style: TextStyle()
      //         ),
      //       ],
      //     ),
      //   ),
      //   inactiveIcon: Material(
      //     type: MaterialType.transparency,
      //     child: Column(
      //       mainAxisSize: MainAxisSize.min,
      //       children: [
      //         SvgPicture.asset(
      //           PathSVG.category_searchSVG,
      //           color:  AppColors.greyColor,
      //         ),
      //         AppGap.h2,
      //         Text(
      //           KeyConst.category,
      //           style: TextStyle()
      //         ),
      //       ],
      //     ),
      //   ),
      //   activeColorPrimary: AppColors.greyColor,
      //   inactiveColorPrimary:  AppColors.greyColor,
      // ),
      // PersistentBottomNavBarItem(
      //   icon: const Icon(Remix.qr_scan_2_line),
      //   activeColorPrimary: AppColors.greyColor,
      //   inactiveColorPrimary:  AppColors.greyColor,
      //   title: 'Barcode',
      //   textStyle: TextStyle(),
      // ),
      //
      PersistentBottomNavBarItem(
        icon: const Icon(Remix.user_3_line),
        activeColorPrimary:  AppColors.black,
        inactiveColorPrimary:  AppColors.greyColor97939393,
        title: KeyConst.member,
        textStyle: TextStyle(),
      ),
    ];
  }
}

class DashboardContext extends InheritedWidget {
  DashboardContext({
    super.key,
    required super.child,
    required this.context,
  }) {
    _globalContext = context;
  }

  final BuildContext context;

  static BuildContext? _globalContext;

  /// Dùng để show popup banner ở home
  static BuildContext? get globalContext => _globalContext;

  static BuildContext? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<DashboardContext>()?.context;
  }

  @override
  bool updateShouldNotify(covariant DashboardContext oldWidget) {
    return oldWidget.context != context;
  }
}
