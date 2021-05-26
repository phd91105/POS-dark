import 'package:admin_cms/controllers/food_controller.dart';
import 'package:admin_cms/models/food_model.dart';
import 'package:admin_cms/utils/constants.dart';
import 'package:admin_cms/widgets/menu.dart';
import 'package:admin_cms/widgets/title_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

class FoodList extends StatelessWidget {
  final FoodController foodController = Get.put(FoodController());

  @override
  Widget build(BuildContext context) {
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
                          ))
                        : GridView.builder(
                            itemCount: foodController.foodList.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              mainAxisSpacing: 56,
                              childAspectRatio: (1 / 1.3),
                              crossAxisSpacing: 68,
                            ),
                            itemBuilder: (context, index) =>
                                FoodItem(foodController.foodList[index]),
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

class FoodItem extends StatelessWidget {
  const FoodItem(this.food);
  final Food food;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
