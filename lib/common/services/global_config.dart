// ignore: import_of_legacy_library_into_null_safe
import 'dart:io';
// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';

class GlobalConfigService extends GetxService {
  /// 发布渠道
  var channel = "".obs;

  /// 是否 ios
  var isIOS = false.obs;

  Future<GlobalConfigService> init() async {
    channel.value = "huawei";
    isIOS.value = Platform.isIOS;
    return this;
  }
}
