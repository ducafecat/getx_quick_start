import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';
import 'controller.dart';

// ignore: must_be_immutable
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
