import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mcomestic/modules/home/bloc/home_cubit.dart';
import 'package:mcomestic/modules/home/components/home_advantages.dart';
import 'package:mcomestic/modules/home/components/home_top_banner.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';


import '../../../../common/smart_refresher_custom.dart';

class TabViewHome extends StatefulWidget {
  const TabViewHome({super.key});

  @override
  State<TabViewHome> createState() => _TabViewHomeState();
}

class _TabViewHomeState extends State<TabViewHome> {
  final ScrollController homeScrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    RefreshController homeRefreshController = RefreshController(initialRefresh: false);
    final List<Widget> listTabTopWidget = [
      const HomeTopBanner(),
      // const NewProducts(),
      // const BestSellerItems(),
      // const HomeMiddleBanner(),
      // if (Features.isFlashSaleEnable) const FlashSaleHome(),
      // const TabSuggestionAndRecentlyChecked(),
      // const EliseInformation(),
      // const NewsHome(),
      // ignore: invalid_use_of_protected_member
      // if (Features.isLivestreamEnable && controller.listLivestream.value.isNotEmpty) const LiveStreamNews(),
      // const AdvantagesHome(),
      // const BottomBanner(),
    ];
    return CustomSmartRefresher(
          controller: homeRefreshController,
          enablePullDown: true,
          enablePullUp: false,
          onRefresh: () async {
            // await controller.initData();
            homeRefreshController.refreshCompleted();
          },
          child: ListView.builder(
            controller: homeScrollController,
            itemCount: listTabTopWidget.length,
            itemBuilder: (context, index) {
              return listTabTopWidget[index];
            },
          ),
        );

  }
}

class HomeMiddleBanner extends StatefulWidget {
  const HomeMiddleBanner({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeMiddleBanner> createState() => _HomeMiddleBannerState();
}

class _HomeMiddleBannerState extends State<HomeMiddleBanner> {
  HomeCubit? cubit;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cubit = context.read<HomeCubit>();
  }
  @override
  Widget build(BuildContext context) {
    late final banner = cubit!.listBannerMiddle.first;
    late final bannerDesc = banner.desc;

    if (cubit!.listBannerMiddle.isEmpty || bannerDesc == null || bannerDesc.imageHD == null) {
      return const SizedBox.shrink();
    }

    late final targetId = banner.objId;
    late final targetUrl = banner.url;
    return  Padding(
          padding: const Pad(horizontal: 16, bottom: 40),
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              // if (banner.type == "news") {
              //   if (targetId == null) return;
              //
              //   controller.gotoNewsDetail(targetId);
              // } else if (banner.type == "collection") {
              //   if (targetId == null) return;
              //
              //   controller.gotoDetailCollection(targetId);
              // } else if (banner.type == "webview") {
              //   Get.back();
              //
              //   if (targetUrl == null) return;
              //
              //   CupertinoScaffold.showCupertinoModalBottomSheet(
              //     context: DashboardContext.of(context) ?? context,
              //     builder: (context) => WebviewMenuContentMbs(
              //       title: bannerDesc.name ?? "",
              //       url: targetUrl,
              //     ),
              //   );
              // }
            },
            child: CachedNetworkImage(
              imageUrl: bannerDesc.imageHD!,
            ),
          ),
        );

  }
}
