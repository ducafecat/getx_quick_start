import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_quick_start/common/routes/app_pages.dart';
import './controller.dart';

class CountPage extends GetView<CountController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Count"),
      ),
      body: Center(
        child: Column(
          children: [
            GetX<CountController>(
              init: Get.find<CountController>(),
              builder: (_) {
                return Text('value -> ${_.count}');
              },
            ),
            Divider(),

            // 按钮
            ElevatedButton(
              onPressed: () {
                Get.find<CountController>().add();
              },
              child: Text('add'),
            ),

            // 跳转
            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  AppRoutes.Count,
                  preventDuplicates: false,
                );
              },
              child: Text('Get.toNamed -> Count Page'),
            ),
          ],
        ),
      ),
    );
  }
}
