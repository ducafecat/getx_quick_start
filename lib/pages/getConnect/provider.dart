import 'package:get/get.dart';
import 'package:getx_quick_start/common/entity/news.dart';
import 'package:getx_quick_start/common/utils/base_provider.dart';

abstract class INewsProvider {
  Future<Response<NewsPageListResponseEntity>> getNews();
}

class NewsProvider extends BaseProvider implements INewsProvider {
  // 新闻分页
  // @override
  // Future<Response<NewsPageListResponseEntity>> getNews() => get("/news");
  @override
  Future<Response<NewsPageListResponseEntity>> getNews() async {
    var response = await get("/news");
    var data = NewsPageListResponseEntity.fromJson(response.body);
    return Response(
      statusCode: response.statusCode,
      statusText: response.statusText,
      body: data,
    );
  }
}
