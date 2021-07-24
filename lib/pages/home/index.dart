import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_quick_start/common/routes/app_pages.dart';
import 'package:getx_quick_start/pages/list_detail/index.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  _showSnackbar(Map? result) {
    if (result != null) {
      Get.snackbar("返回值", "success -> " + result["success"].toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: ListView(
        children: [
          // 导航
          ListTile(
            title: Text("导航-命名路由 home > list"),
            subtitle: Text('Get.toNamed("/home/list")'),
            onTap: () => Get.toNamed("/home/list"),
          ),
          ListTile(
            title: Text("导航-命名路由 home > list > detail"),
            subtitle: Text('Get.toNamed("/home/list/detail")'),
            onTap: () => Get.toNamed("/home/list/detail"),
          ),
          ListTile(
            title: Text("导航-类对象"),
            subtitle: Text("Get.to(DetailView())"),
            onTap: () => Get.to(DetailView()),
          ),
          ListTile(
            title: Text("导航-清除上一个"),
            subtitle: Text("Get.off(DetailView())"),
            onTap: () => Get.off(DetailView()),
          ),
          ListTile(
            title: Text("导航-清除所有"),
            subtitle: Text("Get.offAll(DetailView())"),
            onTap: () => Get.offAll(DetailView()),
          ),
          ListTile(
            title: Text("导航-arguments传值+返回值"),
            subtitle: Text(
                'Get.toNamed("/home/list/detail", arguments: {"id": 999})'),
            onTap: () async {
              var result = await Get.toNamed("/home/list/detail",
                  arguments: {"id": 999});
              _showSnackbar(result);
            },
          ),
          ListTile(
            title: Text("导航-parameters传值+返回值"),
            subtitle: Text('Get.toNamed("/home/list/detail?id=666")'),
            onTap: () async {
              var result = await Get.toNamed("/home/list/detail?id=666");
              _showSnackbar(result);
            },
          ),
          ListTile(
            title: Text("导航-参数传值+返回值"),
            subtitle: Text('Get.toNamed("/home/list/detail/777")'),
            onTap: () async {
              var result = await Get.toNamed("/home/list/detail/777");
              _showSnackbar(result);
            },
          ),
          ListTile(
            title: Text("导航-not found"),
            subtitle: Text('Get.toNamed("/aaa/bbb/ccc")'),
            onTap: () => Get.toNamed("/aaa/bbb/ccc"),
          ),
          ListTile(
            title: Text("导航-中间件-认证Auth"),
            subtitle: Text('Get.toNamed(AppRoutes.My)'),
            onTap: () => Get.toNamed(AppRoutes.My),
          ),
          Divider(),

          // 嵌套导航
          ListTile(
            title: Text("嵌套导航"),
            subtitle: Text('Get.toNamed(AppRoutes.NestedNavigator)'),
            onTap: () => Get.toNamed(AppRoutes.NestedNavigator),
          ),
          Divider(),

          // 组件
          ListTile(
            title: Text("组件-snackbar"),
            subtitle: Text('Get.snackbar("标题","消息",...)'),
            onTap: () => Get.snackbar(
              "标题",
              "消息",
            ),
          ),
          ListTile(
            title: Text("组件-dialog"),
            subtitle: Text('Get.defaultDialog(...)'),
            onTap: () => Get.defaultDialog(
              title: "标题",
              content: Column(
                children: [
                  Text("第1行"),
                  Text("第2行"),
                  Text("第3行"),
                ],
              ),
              textConfirm: "确认",
              textCancel: "取消",
              onConfirm: () => Get.back(),
            ),
          ),
          ListTile(
            title: Text("组件-bottomSheet"),
            subtitle: Text('Get.bottomSheet(...)'),
            onTap: () => Get.bottomSheet(
              Container(
                height: 200,
                color: Colors.white,
                child: Column(
                  children: [
                    Text("第1行"),
                    Text("第2行"),
                    Text("第3行"),
                  ],
                ),
              ),
            ),
          ),
          Divider(),

          // state 状态
          ListTile(
            title: Text("State-Obx"),
            subtitle: Text('Get.toNamed(AppRoutes.Obx)'),
            onTap: () => Get.toNamed(AppRoutes.State + AppRoutes.Obx),
          ),
          ListTile(
            title: Text("State-Getx"),
            subtitle: Text('Get.toNamed(AppRoutes.Getx)'),
            onTap: () => Get.toNamed(AppRoutes.State + AppRoutes.Getx),
          ),
          ListTile(
            title: Text("State-GetBuilder"),
            subtitle: Text('Get.toNamed(AppRoutes.GetBuilder)'),
            onTap: () => Get.toNamed(AppRoutes.State + AppRoutes.GetBuilder),
          ),
          ListTile(
            title: Text("State-ValueBuilder"),
            subtitle: Text('Get.toNamed(AppRoutes.ValueBuilder)'),
            onTap: () => Get.toNamed(AppRoutes.State + AppRoutes.ValueBuilder),
          ),
          ListTile(
            title: Text("State-Workers"),
            subtitle: Text('Get.toNamed(AppRoutes.Workers)'),
            onTap: () => Get.toNamed(AppRoutes.State + AppRoutes.Workers),
          ),
          Divider(),

          // 依赖注入
          ListTile(
            title: Text("Dependency-Put-Find"),
            subtitle: Text('Get.toNamed(AppRoutes.DependencyPutFind)'),
            onTap: () =>
                Get.toNamed(AppRoutes.Dependency + AppRoutes.DependencyPutFind),
          ),
          ListTile(
            title: Text("Dependency-LazyPut"),
            subtitle: Text('Get.toNamed(AppRoutes.DependencyLazyPut)'),
            onTap: () =>
                Get.toNamed(AppRoutes.Dependency + AppRoutes.DependencyLazyPut),
          ),
          Divider(),

          // Count
          ListTile(
            title: Text("Count"),
            subtitle: Text('Get.toNamed(AppRoutes.Count)'),
            onTap: () => Get.toNamed(AppRoutes.Count),
          ),
          Divider(),

          // GetxService
          ListTile(
            title: Text("Service"),
            subtitle: Text('Get.toNamed(AppRoutes.Service)'),
            onTap: () => Get.toNamed(AppRoutes.Service),
          ),
          Divider(),

          // GetConnect
          ListTile(
            title: Text("GetConnect"),
            subtitle: Text('Get.toNamed(AppRoutes.GetConnect)'),
            onTap: () => Get.toNamed(AppRoutes.GetConnect),
          ),
          ListTile(
            title: Text("GetConnectStateMixin"),
            subtitle: Text('Get.toNamed(AppRoutes.GetConnectStateMixin)'),
            onTap: () => Get.toNamed(AppRoutes.GetConnectStateMixin),
          ),
          Divider(),

          // 控制器 + dio
          ListTile(
            title: Text("GetControllerDio"),
            subtitle: Text('Get.toNamed(AppRoutes.GetControllerDio)'),
            onTap: () => Get.toNamed(AppRoutes.GetControllerDio),
          ),
          Divider(),

          // 多语言
          ListTile(
            title: Text("Lang"),
            subtitle: Text('Get.toNamed(AppRoutes.Lang)'),
            onTap: () => Get.toNamed(AppRoutes.Lang),
          ),
          Divider(),

          // 样式
          ListTile(
            title: Text("Theme"),
            subtitle: Text('Get.toNamed(AppRoutes.Theme)'),
            onTap: () => Get.toNamed(AppRoutes.Theme),
          ),
          Divider(),
        ],
      ),
    );
  }
}
