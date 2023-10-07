import 'package:flutter/material.dart';
import 'package:mcomestic/domain/models/order/order_status.dart';
import 'package:mcomestic/domain/models/order/order_status_model_item.dart';
import 'package:mcomestic/general/constants/app_colors.dart';
import 'package:mcomestic/general/constants/app_styles.dart';
import 'package:mcomestic/helper/widget_iterable_collection_extension.dart';
import 'package:mcomestic/modules/util/app_gap.dart';
import 'package:mcomestic/modules/util/app_pad.dart';
import 'package:mcomestic/modules/util/key_const.dart';
import 'package:remixicon/remixicon.dart';

import '../../../common/components/counting_indicator.dart';

import 'group_heading.dart';



class OrderAndBuy extends StatelessWidget {
  const OrderAndBuy({super.key});

  @override
  Widget build(BuildContext context) {

    final heading = GroupHeading(
      titleLangKey: KeyConst.orderAndBuy,
      trailingAction: InkWell(
        onTap: () {},
        child:  Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppGap.w8,
            Text(
              KeyConst.viewOrderHistory,
              style: AppStyles.text50012,
            ),
            AppGap.w4,
            Icon(
              Remix.arrow_right_s_line,
              size: 16,
              color: AppColors.primary,
            )
          ],
        ),
      ),
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        heading,
        const OrderStates(),
      ],
    );
  }
}

class OrderStates extends StatelessWidget {
  const OrderStates({super.key});

  @override
  Widget build(BuildContext context) {


    final List<OrderStatusModelActionItem> actionItems = [
      OrderStatusModelActionItem(
        titleLangKey: DefinedOrderStatus.orderReceived.titleLangKey,
        iconData: DefinedOrderStatus.orderReceived.iconData!,
        onTap: (){},
        count: 0,
      ),
      OrderStatusModelActionItem(
        titleLangKey: DefinedOrderStatus.confirm.titleLangKey,
        iconData: DefinedOrderStatus.confirm.iconData!,
        onTap: (){},
        count: 0,
      ),
      OrderStatusModelActionItem(
        titleLangKey: DefinedOrderStatus.delivering.titleLangKey,
        iconData: DefinedOrderStatus.delivering.iconData!,
        onTap: (){},
        count: 10,
      ),
      OrderStatusModelActionItem(
        titleLangKey: DefinedOrderStatus.completed.titleLangKey,
        iconData: DefinedOrderStatus.completed.iconData!,
        onTap: (){},
        count: 20,
      ),
    ];

    return Padding(
      padding: AppPad.a16,
      child: Row(
        children: actionItems
            .map<Widget>(
              (e) => Expanded(
                child: InkWell(
                  onTap: e.onTap,
                  child: Column(
                    children: [
                      AppGap.h8,
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Icon(e.iconData, color: AppColors.black),
                          Positioned(
                            top: -6,
                            right: -6,
                            child: Visibility(
                                visible: e.count! > 0,
                                child: CountingIndicator(
                                  count: e.count!,
                                  dimension: 16,
                                ),
                              ),
                          ),
                        ],
                      ),
                      AppGap.h8,
                      Text(
                        e.titleLangKey,
                        style: AppStyles.text40010(),
                      ),
                      AppGap.h8,
                    ],
                  ),
                ),
              ),
            )
            .separateWith(AppGap.w8)
            .toList(),
      ),
    );
  }
}
