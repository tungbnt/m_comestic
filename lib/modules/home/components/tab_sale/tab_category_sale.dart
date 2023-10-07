// // import 'package:elise_customer_app/modules/home/controllers/extensions/tab_category_controller.dart';
// // import 'package:elise_customer_app/modules/home/controllers/home_controller.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter/src/widgets/container.dart';
// // import 'package:flutter/src/widgets/framework.dart';
// // import 'package:get/get.dart';
// // import 'package:get/instance_manager.dart';

// // import '../../../../common/components/custom_tab_bar.dart';
// // import '../../../../util/app_gap.dart';
// // import '../../../../util/themes/theme_service.dart';
// // import '../../views/widgets/tab_view_category.dart';
// // import '../components_child/big_title.dart';

// // class TabCategorySale extends StatelessWidget {
// //   TabCategorySale({
// //     super.key,
// //   });
// //   final HomeController controller = Get.find<HomeController>();

// //   @override
// //   Widget build(BuildContext context) {
// //     final colorTheme = ThemeService.getAppColorTheme(context);
// //     final textTheme = ThemeService.getAppTextTheme(context);
// //     return DefaultTabController(
// //       length: 5,
// //       child: Column(
// //         children: [
// //           TabBar(
// //             isScrollable: true,
// //             indicatorSize: TabBarIndicatorSize.label,
// //             indicatorColor: colorTheme.gray[700],
// //             labelPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
// //             indicatorWeight: 2,
// //             unselectedLabelColor: colorTheme.gray[400],
// //             labelColor: colorTheme.gray[700],
// //             labelStyle: textTheme.baseRegular.copyWith(fontSize: 15),
// //             padding: const EdgeInsets.only(bottom: 16),
// //             onTap: (index) {},
// //             tabs: [
// //               const Text(
// //                 'ĐẦM',
// //               ),
// //               const Text(
// //                 'CHÂN VÁY',
// //               ),
// //               const Text(
// //                 'QUẦN',
// //               ),
// //               const Text(
// //                 'TÚI',
// //               ),
// //               const Text(
// //                 'GIÀY',
// //               ),
// //             ],
// //           ),
// //           FlexibleTabBarView(
// //             children: [
// //               Obx(
// //                 () => TabViewCategory(
// //                   // refreshController: controller.refreshTabSale[0],
// //                   productModels: controller.productModels.value,
// //                   pullDown: false,
// //                   onLoading: () {
// //                     controller.loadMoreProduct();
// //                   },
// //                 ),
// //               ),
// //               Obx(
// //                 () => TabViewCategory(
// //                   // refreshController: controller.refreshTabSale[1],
// //                   productModels: controller.productModels.value,
// //                   pullDown: false,
// //                   onLoading: () {
// //                     controller.loadMoreProduct();
// //                   },
// //                 ),
// //               ),
// //               Obx(
// //                 () => TabViewCategory(
// //                   // refreshController: controller.refreshTabSale[2],
// //                   productModels: controller.productModels.value,
// //                   pullDown: false,
// //                   onLoading: () {
// //                     controller.loadMoreProduct();
// //                   },
// //                 ),
// //               ),
// //               Obx(
// //                 () => TabViewCategory(
// //                   // refreshController: controller.refreshTabSale[3],
// //                   productModels: controller.productModels.value,
// //                   pullDown: false,
// //                   onLoading: () {
// //                     controller.loadMoreProduct();
// //                   },
// //                 ),
// //               ),
// //               Obx(
// //                 () => TabViewCategory(
// //                   // refreshController: controller.refreshTabSale[4],
// //                   productModels: controller.productModels.value,
// //                   pullDown: false,
// //                   onLoading: () {
// //                     controller.loadMoreProduct();
// //                   },
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:pull_to_refresh/pull_to_refresh.dart';

// import '../../../../common/components/product_grid_list/list_grid_product.dart';
// import '../../../../common/components/product_horizontal_list/product_horizontal_list_item.dart';
// import '../../../../models/product/product_model.dart';
// import '../../../../util/app_gap.dart';
// import '../../../../util/key_const.dart';
// import '../../../../util/themes/app_color_theme.dart';
// import '../../../../util/themes/app_text_theme.dart';
// import '../../controllers/home_controller.dart';
// import '../../views/widgets/tab_view_category.dart';
// import '../components_child/big_title.dart';
// import '../components_child/button_show_all.dart';

// class TabCategorySale extends StatefulWidget {
//   const TabCategorySale({
//     Key? key,
//     required this.colorTheme,
//     required this.textTheme,
//     required this.controller,
//     required this.id,
//   }) : super(key: key);
//   final AppTextTheme textTheme;
//   final AppColorTheme colorTheme;
//   final HomeController controller;
//   final int id;

//   @override
//   State<TabCategorySale> createState() => _TabCategorySaleState();
// }

// class _TabCategorySaleState extends State<TabCategorySale> {
//   late Future<List<ProductModel>> getProductModels;

//   @override
//   void initState() {
//     getProductModels = widget.controller.getPromotionProduct(
//       cateId: widget.id.toString(),
//     );
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: getProductModels,
//       builder: (context, snapShot) {
//         if (snapShot.connectionState == ConnectionState.waiting) {
//           return Center(
//             child: CupertinoActivityIndicator(),
//           );
//         } else if (snapShot.hasError) {
//           return ErrorLoadData();
//         } else if (snapShot.data!.isEmpty) {
//           return Container();
//         }
//         return ProductGridView(
//           productModels: snapShot.data ?? [],
//           builder: (child) {
//             return CustomSmartRefresher(
//               controller: RefreshController(initialRefresh: false),
//               child: child,
//             );
//           },
//         );
//       },
//     );
//   }
// }
