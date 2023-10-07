import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:mcomestic/domain/models/data_category.dart';
import 'package:mcomestic/domain/repositories/home/response/banner_response.dart';
import 'package:mcomestic/modules/home/screen/widgets/tab_view_bst.dart';
import 'package:mcomestic/modules/home/screen/widgets/tab_view_home.dart';
import 'package:mcomestic/modules/util/key_const.dart';
import 'package:meta/meta.dart';

import '../../../data/home/banner_home_data.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  final listWidget = List<Widget>.empty(growable: true);
  late  List<Banners> listBannerTop = List<Banners>.empty(growable: true);
  final listBannerMiddle = List<Banners>.empty(growable: true);
  final listBannerBottom = List<Banners>.empty(growable: true);
  final listBannerPopup = List<Banners>.empty(growable: true);
  TabController? _defaultTabController;

  List<DataCategory> listCategories = <DataCategory>[
    DataCategory(
      categoryId: -1,
      selfName: 'HOME',
    ),
    DataCategory(
      categoryId: 0,
      selfName: KeyConst.collectionAbbreviation.toUpperCase(),
    ),
  ];

  void init(){
    emit(const HomeLoading());
    Timer(const Duration(seconds: 2), () async{
      await getBannerData();
      await getCategoriesOnTabBar();
      emit(HomeSuccess(listBannerTop: listBannerTop,listWidget: listWidget));
    });


  }

  Future<void> getBannerData() async {
    final response = await HomeBannerData.instance.getStates();
    listBannerTop = response;
  }


  Future<void> getCategoriesOnTabBar() async {
    listWidget.addAll([
      Builder(
        builder: (context) {
          _updateDefaultTabControllerRef(context);

          return const TabViewHome();
        },
      ),
      Builder(
        builder: (context) {
          _updateDefaultTabControllerRef(context);

          return const TabViewBST();
        },
      )
    ]);

  }

  void _updateDefaultTabControllerRef(BuildContext context) {
    _defaultTabController = DefaultTabController.maybeOf(context);
  }
}
