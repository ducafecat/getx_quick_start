import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';
import 'package:getx_quick_start/common/entity/news.dart';
import 'controller.dart';

// ignore: must_be_immutable
class NewsView extends GetView<NewsController> {
  NewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetConnect Page"),
      ),
      body: controller.obx(
        // (state) {
        //   return Container();
        // },
        (state) => ListView.separated(
          itemCount: state.items.length,
          itemBuilder: (context, index) {
            final NewsItem item = state.items[index];
            return ListTile(
              onTap: () => null,
              title: Text(item.title),
              trailing: Text("分类 ${item.category}"),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
        ),
        onEmpty: Text("onEmpty"),
        onLoading: Center(
          child: Column(
            children: [
              Text("onLoading"),
              ElevatedButton(
                onPressed: () {
                  controller.getNewsPageList();
                },
                child: Text('拉取数据'),
              ),
            ],
          ),
        ),
        onError: (err) => Text("onEmpty" + err),
      ),
    );
  }
}
