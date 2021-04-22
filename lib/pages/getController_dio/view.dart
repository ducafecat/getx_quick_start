import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_quick_start/common/entity/news.dart';

import 'controller.dart';

class NewsDioView extends StatelessWidget {
  NewsDioView({Key? key}) : super(key: key);

  _buildListView(List<NewsItem>? items) {
    return items == null
        ? Center(
            child: Column(
              children: [
                Text("没有数据"),
                ElevatedButton(
                  onPressed: () {
                    Get.find<NewsDioController>().getPageList();
                  },
                  child: Text('拉取数据'),
                ),
              ],
            ),
          )
        : ListView.separated(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final NewsItem item = items[index];
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
    var controller = Get.find<NewsDioController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("GetConnect Page"),
      ),
      body: GetX<NewsDioController>(
        init: controller,
        builder: (_) => _buildListView(_.newsPageList.value.items),
      ),
    );
  }
}
