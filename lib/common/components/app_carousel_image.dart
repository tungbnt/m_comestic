import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mcomestic/modules/util/assetsPath/assets_PNG.dart';

import 'cached_network_shaped_image.dart';


class AppCarouselImages extends StatelessWidget {
  const AppCarouselImages({
    super.key,
    required this.imagesUrl,
    this.autoPlay,
    this.height,
    this.aspectRatio,
    this.carouselController,
    this.alignment = Alignment.center,
    this.getCurrentIndex,
    this.showIndicatorBottom = true,
  });
  final List<String> imagesUrl;
  final bool? autoPlay;
  final double? height;
  final double? aspectRatio;
  final CarouselController? carouselController;
  final Alignment alignment;
  final ValueSetter<int>? getCurrentIndex;
  final bool showIndicatorBottom;
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return Stack(
      children: [
        CarouselSlider(
          carouselController: carouselController,
          options: CarouselOptions(
            height: height,
            autoPlay: autoPlay ?? false,
            aspectRatio: aspectRatio ?? 9 / 16,
            enableInfiniteScroll: imagesUrl.length > 1,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              currentIndex = index;
              getCurrentIndex?.call(index);
            },
          ),
          // items: [1, 2, 3, 4, 5].map((i) {
          //   return Text(
          //     'text $i',
          //     style: const TextStyle(fontSize: 16.0),
          //   );
          // }).toList(),
          items: imagesUrl.map(
            (url) {
              return CachedNetworkRectangleImage(
                imageUrl: url,
                fit: BoxFit.fitHeight,
                alignment: alignment,
                errorWidget: Image.asset(
                  PathPNG.error_imagePNG,
                ),
              );
            },
          ).toList(),
        ),
        if (showIndicatorBottom)
          Positioned(
            bottom: 16,
            left: 0,
            right: 0,
            child: IndicatorCarousel(
                  length: imagesUrl.length,
                  currentIndex: currentIndex,
                ),
          ),
      ],
    );
  }
}

class IndicatorCarousel extends StatelessWidget {
  IndicatorCarousel({
    super.key,
    required this.length,
    required this.currentIndex,
    this.borderColor = Colors.white,
  });
  int length;
  int currentIndex;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 8,
      children: [
        for (int i = 0; i < length; i++)
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: borderColor,
              ),
              color: currentIndex == i ? borderColor : Colors.transparent,
            ),
            height: 8,
            width: 8,
          ),
      ],
    );
  }
}
