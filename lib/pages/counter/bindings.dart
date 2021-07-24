import 'package:get/get.dart';

import 'controller.dart';

class CountBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CountController>(() => CountController());
  }
}
