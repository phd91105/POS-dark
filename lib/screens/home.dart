import 'package:admin_cms/controllers/food_controller.dart';
import 'package:admin_cms/controllers/nav_controller.dart';
import 'package:admin_cms/controllers/order_list_controller.dart';
import 'package:admin_cms/screens/dashboard/dashboard_right.dart';
import 'package:admin_cms/screens/food/food_list.dart';
import 'package:admin_cms/utils/constants.dart';
import 'package:admin_cms/widgets/menu.dart';
import 'package:admin_cms/widgets/title_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

import 'dashboard/dashboard.dart';

class HomeScreen extends StatelessWidget {
  final OrderController orderController = Get.put(OrderController());
  final navController = Get.put(NavController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Menu(),
            ),
            Expanded(
              flex: 14,
              child: GetX<FoodController>(
                init: FoodController(),
                builder: (foodController) {
                  switch (navController.activeScreen.value) {
                    case 'home':
                      return BodyBuilder(
                        bodyLeft: FoodList(),
                        bodyRight: Container(
                          height: Get.height,
                          color: secondaryBgColor,
                          padding: EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 24,
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: List.generate(
                                orderController.orderList.length,
                                (index) => Text(
                                  orderController.orderList[index]['name'],
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    case 'dashboard':
                      return BodyBuilder(
                        bodyLeft: Dashboard(),
                        bodyRight: DashboardRight(),
                      );
                    case 'setting':
                      return Container();
                    default:
                      return Dashboard();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BodyBuilder extends StatelessWidget {
  const BodyBuilder({
    Key? key,
    this.bodyLeft,
    this.bodyRight,
  }) : super(key: key);
  final bodyLeft, bodyRight;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 10,
          child: bodyLeft,
        ),
        Expanded(
          flex: 4,
          child: bodyRight,
        ),
      ],
    );
  }
}
