import 'package:flutter/material.dart';
import 'package:mcomestic/general/constants/app_colors.dart';


class CountingIndicator extends StatelessWidget {
  const CountingIndicator({
    super.key,
    required this.count,
    this.color,
    this.dimension = 16,
  });

  final int count;
  final Color? color;
  final double dimension;

  @override
  Widget build(BuildContext context) {


    return  Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color ?? AppColors.primary,
        ),
        width: 20,
        height: 20,
        padding: const EdgeInsets.only(bottom: 2, left: 1),
        child: Center(
          child: Text(
            '${count > 99 ? '99+' : count}',
            style: TextStyle()
          ),
        ),
    );
  }
}
