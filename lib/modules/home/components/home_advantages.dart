// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:mcomestic/modules/util/app_gap.dart';
//
// import '/modules/home/controllers/home_controller.dart';
// import '/util/app_gap.dart';
// import '/util/themes/theme_service.dart';
// import 'components_child/big_title.dart';
// import 'home_news.dart';
//
// class AdvantagesHome extends StatelessWidget {
//   const AdvantagesHome({
//     super.key,
//   });
//   @override
//   Widget build(BuildContext context) {
//
//     return Column(
//               children: [
//                 BigTitle(
//                   title: controller.dataNewsList.value.utility!.type!,
//                 ),
//                 AppGap.h12,
//                 TabNewsSpecialItems(
//                   controller: controller,
//                   textTheme: textTheme,
//                   colorTheme: colorTheme,
//                   news: controller.dataNewsList.value.utility!.news ?? [],
//                 ),
//                 // AppGap.h16,
//                 // AppGap.h24,
//                 AppGap.h40,
//               ],
//
//     );
//   }
// }
