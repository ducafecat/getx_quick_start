import 'package:get/get.dart';
import 'package:getx_quick_start/common/utils/base_provider.dart';

abstract class INewsProvider {
  Future<Response> getNews();
}

class NewsStateMixinProvider extends BaseProvider implements INewsProvider {
  // 新闻分页
  @override
  Future<Response> getNews() => get("/news");
}
