import 'package:get/get.dart';

import 'controller.dart';
import 'provider.dart';
import 'repository.dart';

class NewsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<INewsProvider>(() => NewsProvider());
    Get.lazyPut<INewsRepository>(() => NewsRepository(provider: Get.find()));
    Get.lazyPut(() => NewsController(repository: Get.find()));
  }
}
