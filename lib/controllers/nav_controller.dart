import 'package:get/get.dart';

class NavController extends GetxController {
  RxString activeScreen = 'dashboard'.obs;

  void switchtoScreen(String screen) {
    activeScreen.value = screen;
  }
}
