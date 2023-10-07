import 'package:flutter/material.dart';
import 'package:mcomestic/general/constants/app_colors.dart';


class ProgressDotLoading extends StatefulWidget {
  final double size;
  final Color color;

  const ProgressDotLoading({
    Key? key,
    this.color = AppColors.primary,
    required this.size,
  }) : super(key: key);

  @override
  _ProgressDotLoadingState createState() => _ProgressDotLoadingState();
}

/*
class _ProgressDotLoadingState extends State<ProgressDotLoading>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation1;
  late final CurvedAnimation curveAnimation2;
  late final CurvedAnimation curveAnimation3;
  late Animation<Offset> _translateAnimation2;
  late Animation<Offset> _translateAnimation3;
  late Animation<double> _scaleAnimation4;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 600, // 0.6 * 1000,
      ),
    )..repeat();
    final curveAnimation1 = CurvedAnimation(
      parent: _animationController,
      curve: const Interval(
        0.0,
        1.0,
      ),
    );
    _scaleAnimation1 =
        Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation1);

    //
    curveAnimation2 = CurvedAnimation(
      parent: _animationController,
      curve: const Interval(
        0.0,
        1.0,
      ),
    );
    curveAnimation3 = CurvedAnimation(
      parent: _animationController,
      curve: const Interval(
        0.0,
        1.0,
      ),
    );

    //
    final curveAnimation4 = CurvedAnimation(
      parent: _animationController,
      curve: const Interval(
        0.3,
        0.7,
      ),
    );
    _scaleAnimation4 =
        Tween<double>(begin: 1.0, end: 0.0).animate(curveAnimation4);
  }

  @override
  Widget build(BuildContext context) {
    final Color color = widget.color;
    final double size = widget.size;
    final double dotSize = size * 0.17;
    final double negativeSpace = size - (4 * dotSize);
    final double gapBetweenDots = negativeSpace / 3;
    final double previousDotPosition = (gapBetweenDots + dotSize);
    // final double previousDotPosition = negativeSpace - dotSize; // (gapBetweenDots + dotSize);

    final Offset firstDotOffset = Offset.zero;
    final Offset secondDotOffset =
        firstDotOffset + Offset(dotSize + previousDotPosition, 0);
    final Offset thirstDotOffset =
        secondDotOffset + Offset(previousDotPosition, 0);

    _translateAnimation2 = Tween<Offset>(
      begin: firstDotOffset - Offset(previousDotPosition, 0),
      end: secondDotOffset - Offset(gapBetweenDots, 0),
    ).animate(curveAnimation2);

    _translateAnimation3 = Tween<Offset>(
      begin: secondDotOffset - firstDotOffset,
      end: thirstDotOffset + Offset(previousDotPosition, 0),
    ).animate(curveAnimation3);

    Widget translatingDot(Offset offset, Color color) => Transform.translate(
          offset: offset,
          child: Container(
            height: dotSize,
            width: dotSize,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
              border: color != AppColors.colorFFCB08
                  ? Border.all(color: AppColors.colorFFCB08, width: 1)
                  : null,
            ),
          ),
        );

    Widget scalingDot(double scale, Color color) => Transform.scale(
          scale: scale,
          child: Container(
            width: dotSize,
            height: dotSize,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
              border: color != AppColors.colorFFCB08
                  ? Border.all(color: AppColors.colorFFCB08, width: 1)
                  : null,
            ),
          ),
        );

    return SizedBox(
      width: size,
      height: size,
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (_, __) {
          return Stack(
            // clipBehavior: Clip.none,
            children: <Widget>[
              Positioned(
                left: firstDotOffset.dx,
                child: scalingDot(_scaleAnimation1.value, color),
              ),
              Positioned(
                left: firstDotOffset.dx,
                child: Visibility(
                  visible: _scaleAnimation1.value == 1,
                  child: translatingDot(
                      _translateAnimation2.value, AppColors.colorFFCB08),
                ),
              ),
              Positioned(
                left: (firstDotOffset - Offset(previousDotPosition, 0)).dx,
                child:
                    translatingDot(_translateAnimation3.value, AppColors.colorFFCB08),
              ),
              Positioned(
                left: thirstDotOffset.dx,
                child:
                    scalingDot(_scaleAnimation4.value, AppColors.colorFFCB08),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
*/
class _ProgressDotLoadingState extends State<ProgressDotLoading>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 600,
      ),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    final Color color = widget.color;
    final double size = widget.size;
    final double dotSize = size * 0.17;
    final double negativeSpace = size - (3 * dotSize);
    final double gapBetweenDots = negativeSpace / 2;
    final double previousDotPosition = (gapBetweenDots + dotSize);

    Widget translatingDot(Color color) => Transform.translate(
          offset: Tween<Offset>(
            begin: Offset.zero,
            end: Offset(previousDotPosition, 0),
          )
              .animate(
                CurvedAnimation(
                  parent: _animationController,
                  curve: const Interval(
                    0.22,
                    0.82,
                  ),
                ),
              )
              .value,
          child: Container(
            height: dotSize,
            width: dotSize,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
              border: color != AppColors.primary
                  ? Border.all(color: AppColors.primary, width: 1)
                  : null,
            ),
          ),
        );

    Widget scalingDot(bool scaleDown, Interval interval,Color color) => Transform.scale(
          scale: Tween<double>(
            begin: scaleDown ? 1.0 : 0.0,
            end: scaleDown ? 0.0 : 1.0,
          )
              .animate(
                CurvedAnimation(
                  parent: _animationController,
                  curve: interval,
                ),
              )
              .value,
          child: Container(
            height: dotSize,
            width: dotSize,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
              border: color != AppColors.primary
                  ? Border.all(color: AppColors.primary, width: 1)
                  : null,
            ),
          ),
        );

    return SizedBox(
      width: size,
      height: size,
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (_, __) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  scalingDot(
                      false,
                      const Interval(
                        0.3,
                        0.7,
                      ),widget.color
                  ),
                  translatingDot(AppColors.primary),
                ],
              ),
              translatingDot(AppColors.primary),
              scalingDot(
                true,
                const Interval(
                  0.0,
                  0.4,
                ),AppColors.primary
              ),

              // translatingDot(),

            ],
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
