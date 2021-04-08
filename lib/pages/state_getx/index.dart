import 'package:flutter/material.dart';

import 'package:get/get.dart';
import './controller.dart';

/*
 * GetX 局部自动控制
 * controller -> update
*/

// ignore: must_be_immutable
class StateGetxView extends StatelessWidget {
  StateGetxView({Key? key}) : super(key: key);

  var controller = CountController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx"),
      ),
      body: Center(
        child: Column(
          children: [
            GetX<CountController>(
              init: controller,
              initState: (_) {},
              builder: (_) {
                print("GetX - 1");
                return Text('value -> ${_.count}');
              },
            ),
            GetX<CountController>(
              init: controller,
              initState: (_) {},
              builder: (_) {
                print("GetX - 2");
                return Text('value -> ${_.count}');
              },
            ),
            Divider(),

            //
            GetX<CountController>(
              init: controller,
              initState: (_) {},
              builder: (_) {
                print("GetX - 3");
                return Column(
                  children: [
                    Text('value -> ${_.count}'),
                    ElevatedButton(
                      onPressed: () {
                        _.add();
                      },
                      child: Text('GetX -> add'),
                    )
                  ],
                );
              },
            ),
            Divider(),

            // count2
            GetX<CountController>(
              init: controller,
              initState: (_) {},
              builder: (_) {
                print("GetX - 4");
                return Text('value -> ${_.count2}');
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
              child: Text('add2 + update'),
            ),
          ],
        ),
      ),
    );
  }
}
