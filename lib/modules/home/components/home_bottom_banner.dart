

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mcomestic/general/constants/app_styles.dart';

import '../../../common/components/button/primary_button.dart';
import '../../../common/components/cached_network_shaped_image.dart';
import '../../util/app_gap.dart';
import '../../util/key_const.dart';
import '../../util/screen_size.dart';
import '../bloc/home_cubit.dart';

class BottomBanner extends StatefulWidget {
  const BottomBanner({super.key});

  @override
  State<BottomBanner> createState() => _BottomBannerState();
}

class _BottomBannerState extends State<BottomBanner> {
  HomeCubit? cubit;
  @override
  void initState() {
    super.initState();
    cubit = context.read<HomeCubit>();
  }


  @override
  Widget build(BuildContext context) {
    const double designScreenWidth = 375;
    const double designBannerImageWidth = 375;
    const double designBannerImageHeight = 508;

    final bannerMinImageHeight = getResponsiveSizeBaseOnWidth(
      context,
      imageWidth: designBannerImageWidth,
      imageHeight: designBannerImageHeight,
      designScreenWidth: designScreenWidth,
    ).height;

    return  SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  CachedNetworkRectangleImage(
                    imageUrl: "https://bigone.vn/uploads/images/nguon-goc-lich-su-cosmetic.jpg" ?? '',
                    width: MediaQuery.of(context).size.width,
                    minHeight: bannerMinImageHeight,
                    fit: BoxFit.cover,
                  ),
                  Positioned.fill(
                    bottom: 42,
                    left: 16,
                    right: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width / 5,
                          ),
                          child: Text(
                            KeyConst.homeBannerTitle.toUpperCase(),
                            style: AppStyles.text40016
                          ),
                        ),
                        AppGap.h24,
                        PrimaryButton(
                          onPressed: () {

                          },
                          text: KeyConst.seeHomeBannerButton.toUpperCase(),
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          isCenter: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
    );
  }
}
