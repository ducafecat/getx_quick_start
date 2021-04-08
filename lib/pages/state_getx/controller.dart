import 'package:get/get.dart';

class CountController extends GetxController {
  final _count = 0.obs;
  set count(value) => this._count.value = value;
  get count => this._count.value;

  final _count2 = 0.obs;
  set count2(value) => this._count2.value = value;
  get count2 => this._count2.value;

  add() => _count.value++;
  add2() => _count2.value++;
}
