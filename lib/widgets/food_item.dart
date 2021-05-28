import 'package:admin_cms/controllers/order_list_controller.dart';
import 'package:admin_cms/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodItem extends StatelessWidget {
  const FoodItem(this.food, this.list);
  final food, list;

  @override
  Widget build(BuildContext context) {
    final OrderController orderController = Get.put(OrderController());
    return InkWell(
      onTap: () => orderController.addOrder(food),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: 240,
            margin: EdgeInsets.only(top: 50),
            padding: EdgeInsets.symmetric(horizontal: 32),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: secondaryBgColor,
            ),
            child: Column(
              children: [
                Spacer(),
                Text(
                  food.name,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'Barlow',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  '${food.price} VND',
                  style: GoogleFonts.getFont(
                    'Barlow',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '20 Bowls available',
                  style: GoogleFonts.getFont(
                    'Barlow',
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: primaryTextColor,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(66),
            child: Image.network(
              food.image,
              height: 132,
              width: 132,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
