import 'package:get/get.dart';
import 'package:getx_quick_start/common/apis/news.dart';
import 'package:getx_quick_start/common/entity/news.dart';

class NewsDioController extends GetxController {
  var newsPageList =
      Rx<NewsPageListResponseEntity>(NewsPageListResponseEntity());

  @override
  void onInit() {
    super.onInit();
    print("onInit");
  }

  @override
  void onClose() {
    super.onClose();
    print("onClose");
  }

  getPageList() async {
    newsPageList.value = await NewsAPI.newsPageList();
  }
}
