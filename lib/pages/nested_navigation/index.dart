import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controller.dart';

class NestedNavView extends GetView<NestedController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("嵌套路由"),
      ),
      body: Container(
        color: Colors.amber,
        child: Column(
          children: [
            Container(
              child: Text("占位条"),
              height: 100,
            ),
            SizedBox(
              height: 300,
              child: Navigator(
                key: Get.nestedKey(1),
                initialRoute: '/list',
                onGenerateRoute: controller.onGenerateRoute,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: '列表',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.details),
              label: '详情',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.login),
              label: '登录',
            ),
          ],
          currentIndex: controller.currentIndex.value,
          selectedItemColor: Colors.pink,
          onTap: controller.changePage,
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text("嵌套路由"),
  //     ),
  //     body: Column(
  //       children: [
  //         Container(
  //           color: Colors.amber,
  //           width: 500,
  //           height: 300,
  //           child: Navigator(
  //             key: Get.nestedKey(1),
  //             // initialRoute: AppRoutes.My,
  //             onGenerateRoute: (RouteSettings settings) {
  //               if (settings.name == "/") {
  //                 return GetPageRoute(
  //                   settings: settings,
  //                   page: () => MyView(),
  //                 );
  //               } else if (settings.name == "/login") {
  //                 return GetPageRoute(
  //                   settings: settings,
  //                   page: () => LoginView(),
  //                   transition: Transition.downToUp,
  //                 );
  //               }

  //               return null;
  //             },
  //           ),
  //         ),
  //         Divider(),
  //         ListTile(
  //           title: Text("登录页"),
  //           subtitle: Text('Get.offAllNamed(AppRoutes.Login)'),
  //           onTap: () => Get.toNamed(
  //             AppRoutes.Login,
  //             id: 1,
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }
}
