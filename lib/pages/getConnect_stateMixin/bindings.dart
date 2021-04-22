import 'package:get/get.dart';

import 'controller.dart';
import 'provider.dart';

class NewsStateMixinBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewsStateMixinProvider>(() => NewsStateMixinProvider());
    Get.lazyPut<NewsStateMixinController>(
        () => NewsStateMixinController(provider: Get.find()));
  }
}
