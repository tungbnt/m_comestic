import 'package:flutter/material.dart';
import 'package:mcomestic/general/constants/app_colors.dart';
import 'package:remixicon/remixicon.dart';


class CartIconButton extends StatelessWidget {
  const CartIconButton({
    super.key,
    this.showBadge = true,
    this.onBeforeNavigateToCartScreen,
    this.onAfterNavigateBackFromCartScreen,
  });

  final bool showBadge;
  final VoidCallback? onBeforeNavigateToCartScreen;
  final VoidCallback? onAfterNavigateBackFromCartScreen;
  final _amountCart = 0;
  int getAmountCart() {
    return _amountCart;
  }

  @override
  Widget build(BuildContext context) {

    return  Stack(
        clipBehavior: Clip.none,
        children: [
          InkResponse(
            onTap: () {
              onBeforeNavigateToCartScreen?.call();

              // final future = Get.toNamed(Routes.CART);

              // if (onAfterNavigateBackFromCartScreen != null) {
              //   future?.whenComplete(onAfterNavigateBackFromCartScreen!);
              // }
            },
            child: const Icon(Remix.shopping_bag_line,color: AppColors.black,),
          ),
          if (getAmountCart() > 0 && showBadge)
            Positioned(
              top: -8,
              right: -8,
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primary,
                ),
                width: 20,
                height: 20,
                padding: const EdgeInsets.only(bottom: 2, left: 1),
                child: Center(
                  child: Text(
                    '${getAmountCart() > 99 ? '99+' : getAmountCart()}',
                    style: const TextStyle()
                  ),
                ),
              ),
            ),
        ],
    );
  }
}
