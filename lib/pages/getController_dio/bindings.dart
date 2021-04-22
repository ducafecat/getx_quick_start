import 'package:get/get.dart';

import 'controller.dart';

class NewsDioBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewsDioController>(() => NewsDioController());
  }
}
