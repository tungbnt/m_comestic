import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mcomestic/general/constants/app_colors.dart';

class LoadingData extends StatefulWidget {
  final Widget? insteadWidget;
  final int? loadingTime;
  final double? height;
  final double? width;
  final double? strokeWidth;
  final void Function()? onEnd;
  final bool? isShowLoading;

  LoadingData({
    this.isShowLoading,
    this.insteadWidget,
    this.loadingTime,
    this.height,
    this.width,
    this.strokeWidth,
    this.onEnd,
  });

  @override
  LoadingDataState createState() => LoadingDataState();
}

class LoadingDataState extends State<LoadingData> {
  late Timer _timer;
  int _start = 12;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          if (widget.onEnd != null) {
            widget.onEnd!();
          }
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  initState() {
    super.initState();
    _start = widget.loadingTime ?? 12;
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _start > 0
        ? LoadingWidget(
      width: widget.width,
      height: widget.height,
      strokeWidth: widget.strokeWidth,
      isShowLoading: widget.isShowLoading ?? true,
    )
        : (widget.insteadWidget != null
        ? widget.insteadWidget!
        : const SizedBox.shrink());
  }
}

class LoadingWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final double? strokeWidth;
  final bool isShowLoading;

  const LoadingWidget({
    super.key,
    this.width,
    this.height,
    this.strokeWidth,
    required this.isShowLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width,
      height: height ?? MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Center(
        child: SizedBox(
          width: 35,
          height: 35,
          child: isShowLoading
              ? CircularProgressIndicator(
            strokeWidth: strokeWidth ?? 4,
            color: AppColors.color8661D7,
          )
              : const SizedBox.shrink(),
        ),
      ),
    );
  }
}
