import 'package:get/get.dart';

import 'controller.dart';

class NestedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NestedController());
  }
}
