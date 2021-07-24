part of 'app_pages.dart';

abstract class AppRoutes {
  static const Home = '/home';
  static const Login = '/login';
  static const List = '/list';
  static const Detail = '/detail';
  static const Detail_ID = '/detail/:id';
  static const NotFound = '/notfound';
  static const My = '/my';
  static const Count = '/count';

  static const State = '/obx';
  static const Obx = '/obx';
  static const ValueBuilder = '/value_builder';
  static const Getx = '/getx';
  static const GetBuilder = '/get_builder';
  static const Workers = '/workers';

  static const Dependency = '/dependency';
  static const DependencyPutFind = '/dependency_put_find';
  static const DependencyLazyPut = '/dependency_lazy_put';

  static const Service = '/service';

  static const GetConnect = '/get_connect';
  static const GetConnectStateMixin = '/get_connect_state_mixin';
  static const GetControllerDio = '/get_controller_dio';

  static const NestedNavigator = '/nested_navigator';

  static const Lang = '/lang';

  static const Theme = '/theme';
}
