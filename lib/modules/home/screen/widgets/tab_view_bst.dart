import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mcomestic/common/components/keep_alive_client_widget.dart';
import 'package:mcomestic/domain/repositories/product/response/bst_response.dart';

class TabViewBST extends StatefulWidget {
  const TabViewBST({super.key});

  @override
  State<TabViewBST> createState() => _TabViewBSTState();
}

class _TabViewBSTState extends State<TabViewBST> {
  final ScrollController bstScrollController = ScrollController();
  final listBST = List<DataCollections>.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        controller: bstScrollController,
        itemCount: 2,
        itemBuilder: (context, index) {
          return listBST[index].images == null
              ? Container()
              : KeepAliveClientWidget(
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: listBST[index].images!
                        .map(
                          (e) => GestureDetector(
                            onTap: () {
                              // controller.gotoDetailCollection(listBST[index].id!);
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
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
}
