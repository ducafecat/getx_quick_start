import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';
import 'package:getx_quick_start/common/routes/app_pages.dart';

class MessageView extends StatelessWidget {
  const MessageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的"),
      ),
      body: Center(
        child: Column(
          children: [
            ListTile(
              title: Text("返回首页"),
              subtitle: Text('Get.offAllNamed(AppRoutes.Home)'),
              onTap: () => Get.offAllNamed(AppRoutes.Home),
            ),
          ],
        ),
      ),
    );
  }
}