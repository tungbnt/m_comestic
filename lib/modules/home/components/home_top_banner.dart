import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mcomestic/common/components/app_carousel_image.dart';
import 'package:mcomestic/data/home/banner_home_data.dart';
import 'package:mcomestic/modules/home/bloc/home_cubit.dart';
import 'package:mcomestic/modules/util/app_pad.dart';

class HomeTopBanner extends StatefulWidget {
  const HomeTopBanner({super.key});

  @override
  State<HomeTopBanner> createState() => _HomeTopBannerState();
}

class _HomeTopBannerState extends State<HomeTopBanner> {
  HomeCubit? cubit;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cubit = context.read<HomeCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (context,state)=> state is HomeSuccess,
        builder: (content, state) {
      if(state is HomeSuccess){
        cubit!.listBannerTop = state.listBannerTop!;
        return Padding(
          padding: AppPad.b40,
          child: AppCarouselImages(
            height: Platform.isAndroid
                ? MediaQuery.of(context).size.height * 6 / 8
                : MediaQuery.of(context).size.height * 5 / 7 - 20,
            // ignore: invalid_use_of_protected_member
            imagesUrl: cubit!.listBannerTop
                .map(
                  (element) {
                    return element.url ?? '';
                  },
            )
                .toList(),
            alignment: Alignment.topCenter,
            autoPlay: false,
          ),
        );
      }
      return  const SizedBox(height: 40);

    });
  }
}
