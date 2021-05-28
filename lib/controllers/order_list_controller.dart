import 'package:get/get.dart';

class OrderController extends GetxController {
  RxList orderList = List.empty().obs;
  int count = 1;
  void addOrder(item) {
    orderList.add({
      'id': item.id,
      'name': item.name,
      'price': item.price,
      'count': count,
    });
  }
}
