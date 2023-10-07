import 'package:flutter/cupertino.dart';
import 'package:mcomestic/common/components/button/cart_icon_button.dart';
import 'package:mcomestic/common/components/button/notification_icon_button.dart';
import 'package:mcomestic/common/components/primary_text_field.dart';
import 'package:mcomestic/domain/service/navigator/route_service.dart';
import 'package:mcomestic/general/constants/app_colors.dart';
import 'package:mcomestic/modules/search_product/screen/search_product_screens.dart';
import 'package:mcomestic/modules/util/app_gap.dart';
import 'package:mcomestic/modules/util/key_const.dart';
import 'package:remixicon/remixicon.dart';



class TopBarHome extends StatefulWidget {
  const TopBarHome({
    super.key,
  });

  @override
  State<TopBarHome> createState() => _TopBarHomeState();
}

class _TopBarHomeState extends State<TopBarHome> {
  TextEditingController searchBarCtrl = TextEditingController();
  void gotoSearchProduct() async {
    final result = await RouteService.routeGoOnePage(const SearchProductScreens());
  }

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 40,
              child: PrimaryTextField(
                focusedColor: AppColors.black,
                onTap: () {
                  gotoSearchProduct();
                },
                readOnly: true,
                controller: searchBarCtrl,
                hintText: KeyConst.search,
                prefixWidget: const Icon(
                  Remix.search_line,
                  color: AppColors.black,
                ),
              ),
            ),
          ),
          AppGap.w22,
          const NotificationIconButton(),
          AppGap.w16,
          const CartIconButton(),
        ],
      ),
    );
  }
}
