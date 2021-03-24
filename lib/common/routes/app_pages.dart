// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';
import 'package:getx_quick_start/common/middleware/router_auth.dart';
import 'package:getx_quick_start/pages/home/index.dart';
import 'package:getx_quick_start/pages/list_detail/index.dart';
import 'package:getx_quick_start/pages/list/index.dart';
import 'package:getx_quick_start/pages/login/index.dart';
import 'package:getx_quick_start/pages/notfound/index.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.Home;

  static final routes = [
    // 白名单
    GetPage(
      name: AppRoutes.Login,
      page: () => LoginView(),
    ),
    // 需要认证
    GetPage(
      name: AppRoutes.Home,
      page: () => HomeView(),
      // middlewares: [
      //   RouteAuthMiddleware(priority: 1),
      // ],
      // binding: HomeBinding(),
      children: [
        GetPage(
          name: AppRoutes.List,
          page: () => ListView(),
          children: [
            GetPage(
              name: AppRoutes.Detail,
              page: () => DetailView(),
            ),
            GetPage(
              name: AppRoutes.Detail_ID,
              page: () => DetailView(),
            ),
          ],
        ),
      ],
    ),
  ];

  static final unknownRoute = GetPage(
    name: AppRoutes.NotFound,
    page: () => NotfoundView(),
  );
}
