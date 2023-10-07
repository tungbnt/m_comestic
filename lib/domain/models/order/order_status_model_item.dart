import 'package:flutter/widgets.dart';
import 'package:mcomestic/domain/models/option_model_item.dart';


class OrderStatusModelItem extends OptionModelItem {
  final int? count;

  const OrderStatusModelItem({
    required super.titleLangKey,
    required super.iconData,
    this.count,
  });
}

class OrderStatusModelActionItem extends OrderStatusModelItem {
  final VoidCallback onTap;

  const OrderStatusModelActionItem({
    required super.titleLangKey,
    required super.iconData,
    required this.onTap,
    super.count,
  });
}
