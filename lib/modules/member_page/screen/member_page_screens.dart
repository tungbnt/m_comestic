import 'package:flutter/material.dart';
import 'package:mcomestic/common/components/app_list_item_divider.dart';
import 'package:mcomestic/common/components/counting_indicator.dart';
import 'package:mcomestic/common/components/custom_scaffold.dart';
import 'package:mcomestic/domain/service/dialog/dialog_service.dart';
import 'package:mcomestic/general/constants/app_colors.dart';
import 'package:mcomestic/general/constants/app_styles.dart';
import 'package:mcomestic/modules/member_page/components/group_option_item.dart';
import 'package:mcomestic/modules/member_page/components/order_and_buy.dart';
import 'package:mcomestic/modules/util/app_gap.dart';
import 'package:mcomestic/modules/util/key_const.dart';
import 'package:remixicon/remixicon.dart';

class MemberPage extends StatefulWidget {
  const MemberPage({super.key});

  @override
  State<MemberPage> createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {

   void _onTap(){
    DialogService.showToast(msg: 'Tính năng đang phát triển!');
  }
  @override
  Widget build(BuildContext context) {
    const divider = AppListItemDivider();

    const gap = Divider(
      color: AppColors.greyColor,
      thickness: 16,
      height: 16,
    );

    // final membershipCardSection = ColoredBox(
    //   color: backgroundColor,
    //   child: Padding(
    //     padding: AppPad.a16,
    //     child: GestureDetector(
    //       onTap: () => Get.to(
    //             () => CupertinoScaffold(
    //           topRadius: const Radius.circular(10),
    //           body: Theme(
    //             data: Theme.of(context),
    //             child: Builder(
    //               builder: (context) {
    //                 return MembershipCardView(
    //                   onTapViewMembershipPolicy: () {
    //                     showLoading(afterPostFrame: false);
    //                     Get.find<MemberController>().getMembershipPolicyContent().then((value) {
    //                       hideLoading();
    //                       CupertinoScaffold.showCupertinoModalBottomSheet(
    //                         context: context,
    //                         builder: (context) => HtmlMenuContentMbs(
    //                           title: KeyConst.membershipPolicy.tr,
    //                           futureContent: Future.value(value),
    //                         ),
    //                       );
    //                     }).catchError((e) {
    //                       hideLoading();
    //                       showCustomCupertinoAlertWithSingleInteractiveButtonDialog(
    //                         context,
    //                         content: e.toString(),
    //                       );
    //                     });
    //                   },
    //                 );
    //               },
    //             ),
    //           ),
    //         ),
    //       ),
          /*
              child: Hero(
                createRectTween: (begin, end) {
                  // return CustomRectTween(
                  //   begin: begin,
                  //   end: end,
                  //   cubic: Curves.easeInBack,
                  // );
                  final Size largestSize = Size(
                    max(begin!.size.width, end!.size.width),
                    max(begin.size.height, end.size.height),
                  );
                  return RectTween(
                    begin: begin.topLeft & largestSize,
                    end: end.topLeft & largestSize,
                  );
                },
                tag: MembershipCard.heroTag,
                child: const MembershipCard(isDense: true),
              ),
              */
    //       child: Obx(
    //             () => controller.isLoadingUserInfo.value
    //             ? SizedBox(
    //           height: 200 * context.textScaleFactor,
    //           child: const Center(
    //             child: CircularProgressIndicator(),
    //           ),
    //         )
    //             : const MembershipCard(isDense: true),
    //       ),
    //     ),
    //   ),
    // );

    final orderSection = [
      GroupOptionItem(
        onTap: ()=> _onTap(),
        titleLangKey: KeyConst.orderAndBuy,
        titleColor: AppColors.black,
        iconData: Remix.user_3_line,
        trailingAction: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppGap.w8,
            Text(
              KeyConst.viewOrderHistory,
              style: AppStyles.text40016,
            ),
            AppGap.w4,
            Icon(
              Remix.arrow_right_s_line,
              size: 16,
              color: AppColors.black,
            )
          ],
        ),
      ),
      divider,
       const Material(
        color: AppColors.bgWhiteFFFFFF,
        child: OrderStates(),
      ),
      divider,
      GroupOptionItem(
        onTap: ()=> _onTap(),
        titleLangKey: KeyConst.tryOnAppointment.toUpperCase(),
        iconData: Remix.map_pin_time_line,
        trailingAction:  const Visibility(
            visible: false,
            child: CountingIndicator(
              count: 1,
              dimension: 20,
            ),
        ),
      ),
      divider,
    ];

    final otherSection = [
       GroupOptionItem(
        titleLangKey: KeyConst.vouchers,
        iconData: Remix.coupon_2_line,
        onTap: ()=> _onTap(),
      ),
      divider,
       GroupOptionItem(
        titleLangKey: KeyConst.storeSearching,
        iconData: Remix.store_line,
        onTap: ()=> _onTap(),
      ),
      divider,

    ];

    final personalSection = [
       GroupOptionItem(
        titleLangKey: KeyConst.personalInformation,
        iconData: Remix.user_3_line,
        onTap: ()=> _onTap(),
      ),
      divider,
      GroupOptionItem(
        titleLangKey: KeyConst.favouriteList,
        iconData: Remix.heart_line,
        onTap: ()=> _onTap(),
      ),
      divider,
       GroupOptionItem(
        titleLangKey: KeyConst.productsJustSaw,
        iconData: Remix.time_line,
        onTap:()=> _onTap(),
      ),
      divider,
    ];

    final appSection = [
      GroupOptionItem(
          titleLangKey: KeyConst.shareApp,
          iconData: Remix.share_forward_box_fill,
          onTap: () {

          },
        ),

      divider,
       GroupOptionItem(
        titleLangKey: KeyConst.policiesAndRegulations,
        iconData: Remix.information_line,
        onTap: (){},
      ),
      divider,
      GroupOptionItem(
        titleLangKey: KeyConst.installingApp,
        iconData: Remix.settings_2_line,
        onTap: () {
          // controller.gotoSettingsApp();
        },
      ),
      divider,
    ];

    // final footerSection = [
    //   if (AppState.authenticated) ...[
    //     GroupOptionItem(
    //       titleLangKey: KeyConst.signOut,
    //       titleColor: colorTheme.red.shade600,
    //       icon: Icon(Remix.logout_circle_r_line, size: 20, color: colorTheme.red.shade600),
    //       onTap: () {
    //         controller.signOutPress();
    //       },
    //     ),
    //     divider,
    //   ],
    //   ColoredBox(
    //     color: backgroundColor,
    //     child: Padding(
    //       padding: const EdgeInsets.only(top: 42, bottom: 18),
    //       child: Center(
    //         child: Text(
    //           "${KeyConst.appVersion.tr} ${ConstantsKey.appVersion}",
    //           style: textTheme.baseRegular.copyWith(
    //             fontSize: 11,
    //             color: colorTheme.gray.shade500,
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // ];

    final List<Widget> children = [
      // membershipCardSection,
      ...orderSection,
      gap,
      ...otherSection,
      gap,
      ...personalSection,
      gap,
      ...appSection,
      // if (AppState.authenticated) gap,
      // ...footerSection,
    ];

    return CustomScaffold(
      automaticallyImplyLeading: false,
      title: KeyConst.member,
      backgroundColor: AppColors.greyColor,
      body:  ListView.builder(
            itemCount: children.length,
            itemBuilder: (context, index) => children[index],
          ),
    );
  }
}

class MembershipCardRectTween extends RectTween {
  final Cubic _cubic;

  MembershipCardRectTween({
    Rect? begin,
    Rect? end,
    required Cubic cubic,
  })  : _cubic = cubic,
        super(begin: begin, end: end);

  @override
  Rect lerp(double t) {
    double height = (end?.top ?? 0) - (begin?.top ?? 0);
    double width = (end?.left ?? 0) - (begin?.left ?? 0);

    double transformedY = _cubic.transform(t);

    double animatedX = (begin?.left ?? 0) + (t * width);
    double animatedY = (begin?.top ?? 0) + (transformedY * height);

    return Rect.fromLTWH(animatedX, animatedY, 1, 1);
  }
}
