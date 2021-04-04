// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';
import 'package:getx_quick_start/common/utils/base_provider.dart';

class NewsProvider extends BaseProvider {
  // 新闻分页
  Future<Response> getNews() => get("/news");
}
