import 'package:flutter/material.dart';
import 'package:mcomestic/general/constants/app_styles.dart';
import 'package:mcomestic/modules/util/app_gap.dart';
import 'package:mcomestic/modules/util/app_pad.dart';


class GroupHeading extends StatelessWidget {
  const GroupHeading({
    super.key,
    required this.titleLangKey,
    this.trailingAction,
  });

  final String titleLangKey;
  final Widget? trailingAction;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: AppPad.a16,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(titleLangKey, style: AppStyles.text40018),
          if (trailingAction != null) ...[
            AppGap.w4,
            trailingAction!,
          ],
        ],
      ),
    );
  }
}
