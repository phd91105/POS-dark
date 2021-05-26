import 'package:admin_cms/models/food_model.dart';
import 'package:admin_cms/services/remote_service.dart';

import 'package:get/get.dart';

class CategoryController extends GetxController {
  RxBool isLoading = true.obs;
  RxList<Category> catList = List<Category>.empty().obs;

  @override
  void onInit() {
    fetchCats();
    super.onInit();
  }

  void fetchCats() async {
    try {
      isLoading(true);
      final cats = await RemoteServices.fetchCats();
      if (cats != []) {
        catList.value = cats;
      }
    } finally {
      isLoading(false);
    }
  }
}
