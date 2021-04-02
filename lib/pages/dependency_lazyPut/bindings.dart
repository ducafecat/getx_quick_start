// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';

import 'controller.dart';

class DependencyLazyPutBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CountController>(() => CountController());
  }
}
