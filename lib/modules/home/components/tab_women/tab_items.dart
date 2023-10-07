// import 'package:elise_customer_app/modules/home/controllers/extensions/tab_category_controller.dart';
// import 'package:elise_customer_app/modules/home/controllers/home_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:get/get.dart';
// import 'package:get/instance_manager.dart';

// import '../../../../common/components/custom_tab_bar.dart';
// import '../../../../util/app_gap.dart';
// import '../../../../util/themes/theme_service.dart';
// import '../../views/widgets/tab_view_category.dart';
// import '../components_child/big_title.dart';

// class TabItemsOnWomen extends StatelessWidget {
//   TabItemsOnWomen({
//     super.key,
//   });
//   final HomeController controller = Get.find<HomeController>();

//   @override
//   Widget build(BuildContext context) {
//     final colorTheme = ThemeService.getAppColorTheme(context);
//     final textTheme = ThemeService.getAppTextTheme(context);
//     return Expanded(
//       child: DefaultTabController(
//         length: 3,
//         child: Column(
//           children: [
//             TabBar(
//               isScrollable: true,
//               indicatorSize: TabBarIndicatorSize.label,
//               indicatorColor: colorTheme.gray[700],
//               labelPadding: const EdgeInsets.symmetric(
//                 horizontal: 8,
//                 vertical: 8,
//               ),
//               indicatorWeight: 2,
//               unselectedLabelColor: colorTheme.gray[400],
//               labelColor: colorTheme.gray[700],
//               labelStyle: textTheme.baseRegular.copyWith(fontSize: 15),
//               padding: const EdgeInsets.only(bottom: 16),
//               onTap: (index) {},
//               tabs: [
//                 const Text(
//                   'ĐẦM',
//                 ),
//                 const Text(
//                   'CHÂN VÁY',
//                 ),
//                 const Text(
//                   'QUẦN',
//                 ),
//               ],
//             ),
//             FlexibleTabBarView(
//               // child: FlexibleTabBarView(
//               // estimatedPageSize: 670,
//               children: [
//                 Obx(
//                   () => TabViewCategory(
//                     // refreshController: controller.refreshTabWomen[0],
//                     productModels: controller.productModels.value,
//                     pullDown: false,
//                     onLoading: () {
//                       controller.loadMoreProduct();
//                     },
//                   ),
//                 ),
//                 Obx(
//                   () => TabViewCategory(
//                     // refreshController: controller.refreshTabWomen[1],
//                     productModels: controller.productModels.value,
//                     pullDown: false,
//                     onLoading: () {
//                       controller.loadMoreProduct();
//                     },
//                   ),
//                 ),
//                 Obx(
//                   () => TabViewCategory(
//                     // refreshController: controller.refreshTabWomen[2],
//                     productModels: controller.productModels.value,
//                     pullDown: false,
//                     onLoading: () {
//                       controller.loadMoreProduct();
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
