import 'package:get/get.dart';
import 'package:getx_quick_start/common/middleware/router_auth.dart';
import 'package:getx_quick_start/pages/counter/bindings.dart';
import 'package:getx_quick_start/pages/counter/index.dart';
import 'package:getx_quick_start/pages/dependency_lazyPut/bindings.dart';
import 'package:getx_quick_start/pages/dependency_lazyPut/index.dart';
import 'package:getx_quick_start/pages/dependency_put_find/index.dart';
import 'package:getx_quick_start/pages/getConnect/bindings.dart';
import 'package:getx_quick_start/pages/getConnect/view.dart';
import 'package:getx_quick_start/pages/getConnect_stateMixin/bindings.dart';
import 'package:getx_quick_start/pages/getConnect_stateMixin/view.dart';
import 'package:getx_quick_start/pages/getController_dio/bindings.dart';
import 'package:getx_quick_start/pages/getController_dio/view.dart';
import 'package:getx_quick_start/pages/home/index.dart';
import 'package:getx_quick_start/pages/lang/index.dart';
import 'package:getx_quick_start/pages/list_detail/index.dart';
import 'package:getx_quick_start/pages/list/index.dart';
import 'package:getx_quick_start/pages/login/index.dart';
import 'package:getx_quick_start/pages/my/index.dart';
import 'package:getx_quick_start/pages/nested_navigation/binding.dart';
import 'package:getx_quick_start/pages/nested_navigation/index.dart';
import 'package:getx_quick_start/pages/notfound/index.dart';
import 'package:getx_quick_start/pages/service_view/index.dart';
import 'package:getx_quick_start/pages/state_getBuilder/index.dart';
import 'package:getx_quick_start/pages/state_getx/index.dart';
import 'package:getx_quick_start/pages/state_obx/index.dart';
import 'package:getx_quick_start/pages/state_valueBuilder/index.dart';
import 'package:getx_quick_start/pages/state_workers/index.dart';
import 'package:getx_quick_start/pages/theme/index.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.Home;

  static final List<GetPage> routes = [
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

    // Service
    GetPage(name: AppRoutes.Service, page: () => ServiceView()),

    // GetConnect
    GetPage(
      name: AppRoutes.GetConnect,
      binding: NewsBinding(),
      page: () => NewsView(),
    ),
    GetPage(
      name: AppRoutes.GetConnectStateMixin,
      binding: NewsStateMixinBinding(),
      page: () => NewsStateMixinView(),
    ),
    GetPage(
      name: AppRoutes.GetControllerDio,
      binding: NewsDioBinding(),
      page: () => NewsDioView(),
    ),

    // 嵌套导航
    GetPage(
      name: AppRoutes.NestedNavigator,
      page: () => NestedNavView(),
      binding: NestedBinding(),
    ),

    // 多语言
    GetPage(name: AppRoutes.Lang, page: () => LangView()),

    // 主题
    GetPage(name: AppRoutes.Theme, page: () => ThemeView()),

    // Count
    GetPage(
      name: AppRoutes.Count,
      page: () => CountPage(),
      binding: CountBinding(),
    ),

    // 其它
    GetPage(
      name: AppRoutes.Home,
      page: () => HomeView(),
      // binding: HomeBinding(),
      children: [
        GetPage(
          name: AppRoutes.List,
          page: () => ListIndexView(),
          children: [
            GetPage(
              name: AppRoutes.Detail,
              page: () => DetailView(),
            ),
            GetPage(
              name: AppRoutes.Detail_ID,
              page: () => DetailView(),
              transition: Transition.downToUp,
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

  // 查询动态路由
  // static GetPageRoute? getPageRouteByName(
  //     List<GetPage> pageRoutes, RouteSettings settings) {
  //   for (var item in pageRoutes) {
  //     if (item.name.compareTo(settings.name!) == 0) {
  //       return GetPageRoute(
  //         settings: settings,
  //         page: item.page,
  //         transition: item.transition,
  //       );
  //     }
  //     if (item.children.length > 0) {
  //       return getPageRouteByName(item.children, settings);
  //     }
  //   }
  // }
}
