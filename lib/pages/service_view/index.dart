import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_quick_start/common/services/global_config.dart';

// ignore: must_be_immutable
class ServiceView extends StatelessWidget {
  ServiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Service"),
      ),
      body: Center(
        child: Column(
          children: [
            // Service Global Config
            ListTile(
              title: Text("Service Global Config -> channel"),
              subtitle: Text(
                  "channel : " + Get.find<GlobalConfigService>().channel.value),
            ),
            ListTile(
              title: Text("Service Global Config -> isIOS"),
              subtitle: Text("isIOS : " +
                  Get.find<GlobalConfigService>().isIOS.value.toString()),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
