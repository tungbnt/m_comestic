import 'package:flutter/material.dart';
import 'package:mcomestic/general/constants/app_colors.dart';
import 'package:mcomestic/modules/util/key_const.dart';
import 'package:remixicon/remixicon.dart';

import '../../../../common/components/button/primary_button.dart';


class ButtonShowAll extends StatelessWidget {
  const ButtonShowAll({
    Key? key,
    required this.onTap,
    this.text = KeyConst.seeAll,
  }) : super(key: key);


  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: PrimaryButton(
        onPressed: onTap,
        text: text.toUpperCase(),
        textStyle: TextStyle(),
        backgroundColor: Colors.white,
        borderColor: AppColors.greyColor,
        isCenter: true,
      ),
    );
  }
}
