// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';
import 'package:getx_quick_start/pages/home/index.dart';
import 'package:getx_quick_start/pages/list_detail/index_view.dart';
import 'package:getx_quick_start/pages/list/index_view.dart';
import 'package:getx_quick_start/pages/notfound/index.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      // binding: HomeBinding(),
      children: [
        GetPage(
          name: Routes.LIST,
          page: () => ListView(),
          children: [
            GetPage(
              name: Routes.DETAIL,
              page: () => DetailView(),
            ),
            GetPage(
              name: Routes.DETAIL_ID,
              page: () => DetailView(),
            ),
          ],
        ),
      ],
    ),
  ];

  static final unknownRoute = GetPage(
    name: Routes.NOTFOUND,
    page: () => NotfoundView(),
  );
}
