import 'package:admin_cms/utils/constants.dart';
import 'package:admin_cms/widgets/menu.dart';
import 'package:admin_cms/widgets/title_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

class FoodList extends StatelessWidget {
  const FoodList({
    Key? key,
  }) : super(key: key);

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
                  child: GridView.count(
                    crossAxisCount: 4,
                    mainAxisSpacing: 56,
                    childAspectRatio: (1 / 1.3),
                    crossAxisSpacing: 68,
                    children: [
                      FoodItem(),
                      FoodItem(),
                      FoodItem(),
                      FoodItem(),
                      FoodItem(),
                      FoodItem(),
                      FoodItem(),
                      FoodItem(),
                      FoodItem(),
                      FoodItem(),
                    ],
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
  const FoodItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
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
                'Spicy seasoned seafood noodles',
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
                '\$ 2.29',
                style: GoogleFonts.getFont(
                  'Barlow',
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
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
          borderRadius: BorderRadius.circular(40.0),
          child: Image.asset(
            'assets/food1.png',
            height: 132,
            width: 132,
          ),
        ),
      ],
    );
  }
}
