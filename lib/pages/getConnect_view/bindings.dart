import 'package:get/get.dart';

import 'controller.dart';
import 'provider.dart';

class NewsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewsProvider>(() => NewsProvider());
    Get.lazyPut<NewsController>(() => NewsController(provider: Get.find()));
  }
}
