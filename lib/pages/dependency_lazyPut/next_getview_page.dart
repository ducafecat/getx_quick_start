import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'controller.dart';

class NextPageView extends GetView<CountController> {
  NextPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetView Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() => Text('value -> ${controller.count}')),
            Divider(),

            // 按钮
            ElevatedButton(
              onPressed: () {
                controller.add();
              },
              child: Text('add'),
            ),
          ],
        ),
      ),
    );
  }
}
