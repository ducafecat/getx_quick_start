import 'package:get/get.dart';
import 'package:getx_quick_start/common/utils/base_provider.dart';

class NewsStateMixinProvider extends BaseProvider {
  // 新闻分页
  Future<Response> getNews() => get("/news");
}
