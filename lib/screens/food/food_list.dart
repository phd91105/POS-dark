import 'package:admin_cms/controllers/food_controller.dart';
import 'package:admin_cms/controllers/order_list_controller.dart';
import 'package:admin_cms/utils/constants.dart';
import 'package:admin_cms/widgets/food_item.dart';
import 'package:admin_cms/widgets/menu.dart';
import 'package:admin_cms/widgets/title_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

class FoodList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final foodController = Get.put(FoodController());
    final orderController = Get.put(OrderController());
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        color: primaryBgColor,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: MainTitle(
                    title: 'Foods Manager',
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                TitleWithButton(
                  title: 'Choose Food',
                  icon: UniconsLine.angle_down,
                  btnLabel: '   Dine in',
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.all(24),
                  child: Obx(
                    () => foodController.isLoading.value
                        ? Center(
                            child: CircularProgressIndicator(
                              color: primaryColor,
                            ),
                          )
                        : GridView.builder(
                            itemCount: foodController.foodList.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              mainAxisSpacing: 56,
                              childAspectRatio: (1 / 1.3),
                              crossAxisSpacing: 68,
                            ),
                            itemBuilder: (context, index) => FoodItem(
                              foodController.foodList[index],
                              orderController.orderList,
                            ),
                          ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
