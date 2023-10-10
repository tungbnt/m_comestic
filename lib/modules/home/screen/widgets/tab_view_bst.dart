import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mcomestic/common/components/keep_alive_client_widget.dart';
import 'package:mcomestic/modules/home/bloc/home_cubit.dart';

class TabViewBST extends StatefulWidget {
  const TabViewBST({super.key});

  @override
  State<TabViewBST> createState() => _TabViewBSTState();
}

class _TabViewBSTState extends State<TabViewBST> {
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
      buildWhen: (context, state) => state is HomeSuccess,
      builder: (context, state) {
        if (state is HomeSuccess) {
          cubit!.listBST = state.listBST;
          return ListView.builder(
            controller: cubit!.bstScrollController,
            itemCount: 2,
            itemBuilder: (context, index) {
              return cubit!.listBST[index].images == null
                  ? Container()
                  : KeepAliveClientWidget(
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: cubit!.listBST[index].images!
                            .map(
                              (e) => GestureDetector(
                                onTap: () {
                                  // controller.gotoDetailCollection(listBST[index].id!);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 6, horizontal: 16),
                                  child: CachedNetworkImage(
                                    imageUrl: e,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    );
            },
          );
        }
        return Container();
      },
    );
  }
}
