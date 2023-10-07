import 'package:flutter/material.dart';
import 'package:mcomestic/general/constants/app_colors.dart';
import 'package:mcomestic/general/constants/app_styles.dart';
import 'package:mcomestic/modules/util/app_gap.dart';
import 'package:mcomestic/modules/util/app_pad.dart';


class GroupOptionItem extends StatelessWidget {
  const GroupOptionItem({
    super.key,
    required this.onTap,
    required this.titleLangKey,
    this.titleColor,
    this.iconData,
    this.icon,
    this.isDense = false,
    this.trailingAction,
  });

  final String titleLangKey;
  final Color? titleColor;
  final IconData? iconData;
  final Widget? icon;
  final bool isDense;
  final Widget? trailingAction;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {


    return InkWell(
      onTap: onTap,
      child: Ink(
        color: AppColors.bgWhiteFFFFFF,
        child: Padding(
          padding: isDense ? AppPad.h16v8 : AppPad.a16,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              if (iconData != null) ...[
                Icon(iconData!, size: 20, color: AppColors.black,),
                AppGap.w10,
              ] else if (icon != null) ...[
                icon!,
                AppGap.w10,
              ],
              Expanded(
                child: Text(
                  titleLangKey.toUpperCase(),
                  style: AppStyles.text40014()
                ),
              ),
              if (trailingAction != null) ...[
                AppGap.w4,
                trailingAction!,
              ],
            ],
          ),
        ),
      ),
    );
  }
}
