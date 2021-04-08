import 'package:flutter/material.dart';

class ListIndexView extends StatelessWidget {
  const ListIndexView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("列表页"),
      ),
      body: Center(
        child: Container(
          child: Text("列表页"),
        ),
      ),
    );
  }
}
