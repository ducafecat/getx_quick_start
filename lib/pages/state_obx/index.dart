import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';

// ignore: must_be_immutable
class StateObxView extends StatelessWidget {
  StateObxView({Key? key}) : super(key: key);

  var count = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Obx(...)"),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() => Text("count1 -> " + count.toString())),
            Obx(() => Text("count2 -> " + count.toString())),

            //
            Divider(),
            ElevatedButton(
              onPressed: () {
                count.value++;
              },
              child: Text('add'),
            ),
          ],
        ),
      ),
    );
  }
}