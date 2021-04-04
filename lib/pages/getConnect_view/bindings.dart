// ignore: import_of_legacy_library_into_null_safe
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
