import 'package:admin_cms/models/food_model.dart';
import 'package:admin_cms/services/remote_service.dart';
import 'package:get/get.dart';

class FoodController extends GetxController {
  RxBool isLoading = true.obs;
  RxList<Food> foodList = List<Food>.empty().obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      final foods = await RemoteServices.fetchProducts();
      if (foods != []) {
        foodList.value = foods;
      }
    } finally {
      isLoading(false);
    }
  }
}
