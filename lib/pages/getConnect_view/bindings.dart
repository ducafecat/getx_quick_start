import 'package:get/get.dart';

import 'controller.dart';
import 'provider.dart';

class NewsBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<NewsProvider>(NewsProvider());
    Get.put<NewsController>(NewsController());
  }
}
