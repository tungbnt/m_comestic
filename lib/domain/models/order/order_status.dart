

import 'package:flutter/material.dart';
import 'package:mcomestic/general/constants/app_constants.dart';
import 'package:mcomestic/helper/json_ext.dart';
import 'package:mcomestic/modules/util/key_const.dart';
import 'package:remixicon/remixicon.dart';

enum DefinedOrderStatus {
  waitingForPayment(
    id: AppConstants.orderInWaitingForPaymentStatusId,
    titleLangKey: KeyConst.orderInWaitingForPayment,
    shortDescriptionLangKey: '',
    // descriptionLangKey: '',
    detailedDescriptionLangKey: KeyConst.retryPaymentDetailDesc,
  ),
  orderReceived(
    id: AppConstants.orderReceivedStatusId,
    titleLangKey: KeyConst.orderReceived,
    shortDescriptionLangKey: '',
    // descriptionLangKey: '',
    // detailedDescriptionLangKey: '',
    iconData: Remix.wallet_line,
  ),
  confirm(
    id: AppConstants.orderConfirmStatusId,
    titleLangKey: KeyConst.confirm,
    shortDescriptionLangKey: '',
    // descriptionLangKey: '',
    // detailedDescriptionLangKey: '',
    iconData: Remix.inbox_unarchive_line,
  ),
  delivering(
    id: AppConstants.orderDeliveringStatusId,
    titleLangKey: KeyConst.shipping,
    shortDescriptionLangKey: KeyConst.orderDeliveringShortDesc,
    // descriptionLangKey: KeyConst.orderDeliveringShortDesc,
    // detailedDescriptionLangKey: KeyConst.orderDeliveringShortDetailedDesc,
    iconData: Remix.truck_line,
  ),
  completed(
    id: AppConstants.orderCompletedStatusId,
    titleLangKey: KeyConst.completed,
    shortDescriptionLangKey: KeyConst.orderCompletedShortDesc,
    // descriptionLangKey: KeyConst.orderCompletedDesc,
    // detailedDescriptionLangKey: KeyConst.orderCompletedDetailedDesc,
    iconData: Remix.star_line,
  ),
  // failed(),
  canceled(
    id: AppConstants.orderCanceledStatusId,
    titleLangKey: KeyConst.canceled,
    shortDescriptionLangKey: KeyConst.canceled,
    // descriptionLangKey: KeyConst.canceled,
    // detailedDescriptionLangKey: KeyConst.orderCanceledDetailedDesc,
  );

  static String remoteTypeName = 'order_process';

  final int id;
  final String titleLangKey;
  final String shortDescriptionLangKey;
  final String? descriptionLangKey;
  final String? detailedDescriptionLangKey;
  final IconData? iconData;

  /// When status is closed, meaning that the `OrderStatus` equal `completed` or `canceled`;
  bool get isClosed => this == DefinedOrderStatus.completed || this == DefinedOrderStatus.canceled;

  bool get isOpening => isClosed == false;

  const DefinedOrderStatus({
    required this.id,
    required this.titleLangKey,
    required this.shortDescriptionLangKey,
    this.descriptionLangKey,
    this.detailedDescriptionLangKey,
    this.iconData,
  });
}

class OrderStatusModel {
  final String title;
  final DefinedOrderStatus? definedStatus;

  OrderStatusModel({
    required final int statusId,
    required this.title,
  }) : definedStatus = DefinedOrderStatus.values.firstWhere((e) => e.id == statusId);

  OrderStatusModel._fromStatus(DefinedOrderStatus this.definedStatus) : title = definedStatus.titleLangKey;

  factory OrderStatusModel.fake(DefinedOrderStatus definedStatus) {
    return OrderStatusModel._fromStatus(definedStatus);
  }

  factory OrderStatusModel.fromMap(Map<String, dynamic> map) {
    return OrderStatusModel(
      statusId: map.lookup('status'),
      title: map.lookup('order_status_text'),
    );
  }

  factory OrderStatusModel.completed() {
    return OrderStatusModel._fromStatus(DefinedOrderStatus.completed);
  }
}


