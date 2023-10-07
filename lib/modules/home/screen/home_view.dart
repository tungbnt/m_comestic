// import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mcomestic/general/constants/app_colors.dart';
import 'package:mcomestic/modules/home/bloc/home_cubit.dart';
import 'package:mcomestic/modules/home/components/home_tab_bar.dart';
import 'package:mcomestic/modules/util/app_gap.dart';


class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeCubit? cubit;
  late List<Widget> listWidget;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cubit = context.read<HomeCubit>();
    cubit!.init();
    // listWidget =cubit!.listWidget;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          child: BlocBuilder<HomeCubit, HomeState>(
            buildWhen: (context,state)=> state is HomeLoading || state is HomeSuccess,
            builder: (context, state) {
              print(state);
              if(state is HomeLoading){
                return const Center(
                  child: CupertinoActivityIndicator(),
                );
              }
              if(state is HomeSuccess){
                listWidget = state.listWidget!;

                return DefaultTabController(
                  length: cubit!.listCategories.length,
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        AppGap.h6,
                        const TopBarHome(),
                        AppGap.h8,
                        TabBar(
                          isScrollable: true,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: AppColors.black,
                          labelPadding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 8),
                          indicatorWeight: 2,
                          unselectedLabelColor: AppColors.greyColor97939393,
                          labelColor: AppColors.black,
                          // labelStyle: textTheme.baseRegular.copyWith(fontSize: 15),
                          onTap: (index) {
                            // controller.changeTabBar(index);
                          },
                          tabs: cubit!.listCategories
                              .map(
                                (e) => Text(e.selfName?.toUpperCase() ?? ''),
                          )
                              .toList(),
                        ),
                        Expanded(
                          child: TabBarView(
                            physics: const NeverScrollableScrollPhysics(),
                            children: listWidget!,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }
}
