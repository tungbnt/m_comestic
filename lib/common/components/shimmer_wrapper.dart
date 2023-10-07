import 'package:flutter/widgets.dart';
import 'package:mcomestic/general/constants/app_colors.dart';
import 'package:shimmer/shimmer.dart';


class ShimmerWrapper extends StatelessWidget {
  const ShimmerWrapper({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {

    return Shimmer.fromColors(
      baseColor: AppColors.greyColor,
      highlightColor: AppColors.backgroundGreyColor,
      period: const Duration(milliseconds: 900),
      child: child,
    );
  }
}
