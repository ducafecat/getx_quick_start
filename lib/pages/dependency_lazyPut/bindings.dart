import 'package:get/get.dart';

import 'controller.dart';

class DependencyLazyPutBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CountController>(() => CountController());
  }
}
