import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const Size designScreenSize = Size(310, 812);

late Size scaledScreenSize;

final _util = ScreenUtil();

height(double height) {
  if (_util.scaleHeight < designScreenSize.height) {
    return _util.setHeight(height);
  }

  return width;
}

width(double width) {
  if (_util.screenWidth < designScreenSize.width) {
    return _util.setHeight(width);
  }

  return width;
}

radius(double radius) => ScreenUtil().radius(radius);

size(double size) => size;

Size getResponsiveSizeBaseOnWidth(
  BuildContext context, {
  required double imageWidth,
  required double imageHeight,
  required double designScreenWidth,
}) {
  final double screenWidth = MediaQuery.of(context).size.width;

  final double widthDelta = imageWidth / designScreenWidth;
  final double heightDelta = imageHeight / imageWidth;

  final width = screenWidth * widthDelta;

  return Size(width, width * heightDelta);
}

Size getScaleSize({
  required double width,
  required double designWidth,
  required double designHeight,
}) {
  final double ratio = designWidth / designHeight;

  return Size(width, width / ratio);
}
