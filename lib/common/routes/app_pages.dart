// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';
import 'package:getx_quick_start/common/middleware/router_auth.dart';
import 'package:getx_quick_start/pages/dependency_lazyPut/bindings.dart';
import 'package:getx_quick_start/pages/dependency_lazyPut/index.dart';
import 'package:getx_quick_start/pages/dependency_put_find/index.dart';
import 'package:getx_quick_start/pages/home/index.dart';
import 'package:getx_quick_start/pages/list_detail/index.dart';
import 'package:getx_quick_start/pages/list/index.dart';
import 'package:getx_quick_start/pages/login/index.dart';
import 'package:getx_quick_start/pages/my/index.dart';
import 'package:getx_quick_start/pages/notfound/index.dart';
import 'package:getx_quick_start/pages/state_getBuilder/index.dart';
import 'package:getx_quick_start/pages/state_getx/index.dart';
import 'package:getx_quick_start/pages/state_obx/index.dart';
import 'package:getx_quick_start/pages/state_valueBuilder/index.dart';
import 'package:getx_quick_start/pages/state_workers/index.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.Home;

  static final routes = [
    // 白名单
    GetPage(
      name: AppRoutes.Login,
      page: () => LoginView(),
    ),

    // 我的，需要认证
    GetPage(
      name: AppRoutes.My,
      page: () => MyView(),
      middlewares: [
        RouteAuthMiddleware(priority: 1),
      ],
    ),

    // 状态
    // ValueBuilder
    GetPage(name: AppRoutes.State, page: () => StateObxView(), children: [
      GetPage(name: AppRoutes.Obx, page: () => StateObxView()),
      GetPage(
          name: AppRoutes.ValueBuilder, page: () => StateValueBuilderView()),
      GetPage(name: AppRoutes.Getx, page: () => StateGetxView()),
      GetPage(name: AppRoutes.GetBuilder, page: () => StateGetBuilderView()),
      GetPage(name: AppRoutes.Workers, page: () => StateWorkersView()),
    ]),

    // 控制器依赖注入
    GetPage(
        name: AppRoutes.Dependency,
        page: () => StateDependencyPutFindView(),
        children: [
          GetPage(
              name: AppRoutes.DependencyPutFind,
              page: () => StateDependencyPutFindView()),
          GetPage(
              name: AppRoutes.DependencyLazyPut,
              binding: DependencyLazyPutBinding(),
              page: () => StateDependencyLazyPutView()),
        ]),

    // 其它
    GetPage(
      name: AppRoutes.Home,
      page: () => HomeView(),
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
