import 'package:flutter/material.dart';

class ListView extends StatelessWidget {
  const ListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("列表页"),
      ),
    );
  }
}
