import 'package:get/get.dart';
import 'package:getx_quick_start/common/entity/news.dart';

import 'provider.dart';

class NewsStateMixinController extends GetxController
    with StateMixin<NewsPageListResponseEntity> {
  final NewsStateMixinProvider provider;
  NewsStateMixinController({required this.provider});

  // 拉取新闻列表
  Future<void> getNewsPageList() async {
    // 获取数据
    final Response response = await provider.getNews();

    // 判断，如果有错误
    if (response.hasError) {
      // 改变数据，传入错误状态，在ui中会处理这些错误
      change(null, status: RxStatus.error(response.statusText));
    } else {
      // 否则，存储数据，改变状态为成功
      var data = NewsPageListResponseEntity.fromJson(response.body);
      change(data, status: RxStatus.success());
    }
  }
}
