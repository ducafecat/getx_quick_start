import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_quick_start/common/routes/app_pages.dart';

class RouteAuthMiddleware extends GetMiddleware {
  @override
  int? priority = 0;

  RouteAuthMiddleware({required this.priority});

  @override
  RouteSettings? redirect(String? route) {
    // 加入 AuthService
    Future.delayed(Duration(seconds: 1), () => Get.snackbar("提示", "请先登录APP"));

    return RouteSettings(name: AppRoutes.Login);
  }
}
