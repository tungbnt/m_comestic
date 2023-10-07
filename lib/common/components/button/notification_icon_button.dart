import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mcomestic/common/components/counting_indicator.dart';
import 'package:mcomestic/general/constants/app_colors.dart';
import 'package:remixicon/remixicon.dart';



class NotificationIconButton extends StatefulWidget {
  const NotificationIconButton({
    super.key,
    this.showBadge = true,
  });

  final bool showBadge;

  @override
  State<NotificationIconButton> createState() => _NotificationIconButtonState();
}

class _NotificationIconButtonState extends State<NotificationIconButton> {
  final int allNotifyNew = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
        clipBehavior: Clip.none,
        children: [
          InkResponse(
            onTap: () =>{},
            child: const Icon(Remix.notification_line,color: AppColors.black,),
          ),
          if (allNotifyNew > 0 && widget.showBadge)
            Positioned(
              top: -8,
              right: -8,
              child:
                  CountingIndicator(count: allNotifyNew),
            ),
        ],
    );
  }
}
