import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_quick_start/common/entity/news.dart';
import 'controller.dart';

// ignore: must_be_immutable
class NewsStateMixinView extends GetView<NewsStateMixinController> {
  NewsStateMixinView({Key? key}) : super(key: key);

  _buildListView(NewsPageListResponseEntity? state) {
    return ListView.separated(
      itemCount: state != null ? state.items!.length : 0,
      itemBuilder: (context, index) {
        final NewsItem item = state!.items![index];
        return ListTile(
          onTap: () => null,
          title: Text(item.title),
          trailing: Text("分类 ${item.category}"),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetConnect Page"),
      ),
      body: controller.obx(
        (state) => _buildListView(state),
        onEmpty: Text("onEmpty"),
        onLoading: Center(
          child: Column(
            children: [
              Text("没有数据"),
              ElevatedButton(
                onPressed: () {
                  controller.getNewsPageList();
                },
                child: Text('拉取数据'),
              ),
            ],
          ),
        ),
        onError: (err) => Text("onEmpty" + err.toString()),
      ),
    );
  }
}
