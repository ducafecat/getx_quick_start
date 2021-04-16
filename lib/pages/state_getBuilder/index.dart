import 'package:flutter/material.dart';

import 'package:get/get.dart';
import './controller.dart';

/*
 * GetBuilder 手动控制
 * controller -> update
*/

class StateGetBuilderView extends StatelessWidget {
  StateGetBuilderView({Key? key}) : super(key: key);

  final controller = CountController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetBuilder"),
      ),
      body: Center(
        child: Column(
          children: [
            GetBuilder<CountController>(
              init: controller,
              initState: (_) {},
              builder: (_) {
                print("GetBuilder - 1");
                return Text('value -> ${_.count}');
              },
            ),
            GetBuilder<CountController>(
              init: controller,
              initState: (_) {},
              builder: (_) {
                print("GetBuilder - 2");
                return Text('value -> ${_.count}');
              },
            ),
            Divider(),

            //
            GetBuilder<CountController>(
              init: controller,
              initState: (_) {},
              builder: (_) {
                print("GetBuilder - 3");
                return Column(
                  children: [
                    Text('value -> ${_.count}'),
                    ElevatedButton(
                      onPressed: () {
                        _.add();
                      },
                      child: Text('GetBuilder -> add'),
                    )
                  ],
                );
              },
            ),
            Divider(),

            // count2
            GetBuilder<CountController>(
              init: controller,
              initState: (_) {},
              builder: (_) {
                print("GetBuilder - 4");
                return Text('value count2 -> ${_.count2}');
              },
            ),
            Divider(),

            // id2
            GetBuilder<CountController>(
              id: "id2",
              init: controller,
              initState: (_) {},
              builder: (_) {
                print("GetBuilder - 4");
                return Text('id2 -> value count2 -> ${_.count2}');
              },
            ),
            Divider(),

            // 按钮
            ElevatedButton(
              onPressed: () {
                controller.add();
              },
              child: Text('add'),
            ),

            ElevatedButton(
              onPressed: () {
                controller.add2();
              },
              child: Text('add2'),
            ),

            ElevatedButton(
              onPressed: () {
                controller.update();
              },
              child: Text('controller.update()'),
            ),

            ElevatedButton(
              onPressed: () {
                controller.update(["id2"]);
              },
              child: Text('controller.update(id2)'),
            ),
          ],
        ),
      ),
    );
  }
}
