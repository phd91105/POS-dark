import 'package:admin_cms/controllers/nav_controller.dart';
import 'package:admin_cms/utils/constants.dart';
import 'package:admin_cms/widgets/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:unicons/unicons.dart';
import 'package:get/get.dart';

class Menu extends StatelessWidget {
  final navController = Get.put(NavController());
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: secondaryBgColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                color: Colors.orangeAccent.withOpacity(0.15),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset('assets/homeicon.png'),
            ),
          ),
          MenuItem(
            ontap: () => navController.switchtoScreen('dashboard'),
            deco: Obx(
              () => navController.activeScreen.value == 'dashboard'
                  ? ItemSelected(
                      icon: UniconsLine.chart_pie_alt,
                    )
                  : ItemUnselected(
                      icon: UniconsLine.chart_pie_alt,
                    ),
            ),
          ),
          MenuItem(
            ontap: () => navController.switchtoScreen('home'),
            deco: Obx(
              () => navController.activeScreen.value == 'home'
                  ? ItemSelected(
                      icon: UniconsLine.home_alt,
                    )
                  : ItemUnselected(
                      icon: UniconsLine.home_alt,
                    ),
            ),
          ),
          MenuItem(
            ontap: () => navController.switchtoScreen('setting'),
            deco: Obx(
              () => navController.activeScreen.value == 'setting'
                  ? ItemSelected(
                      icon: UniconsLine.setting,
                    )
                  : ItemUnselected(
                      icon: UniconsLine.setting,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemUnselected extends StatelessWidget {
  const ItemUnselected({
    Key? key,
    this.icon,
  }) : super(key: key);
  final icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        size: 28,
        color: primaryColor,
      ),
    );
  }
}

class ItemSelected extends StatelessWidget {
  const ItemSelected({
    Key? key,
    this.icon,
  }) : super(key: key);
  final icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            blurRadius: 12,
            color: primaryColor,
          ),
        ],
      ),
      child: Icon(
        icon,
        size: 28,
        color: Colors.white,
      ),
    );
  }
}

class MainTitle extends StatelessWidget {
  const MainTitle({
    Key? key,
    this.title,
  }) : super(key: key);
  final title;
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat.yMMMMEEEEd().format(now);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.getFont(
            'Barlow',
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          formattedDate,
          style: GoogleFonts.getFont(
            'Barlow',
            color: primaryTextColor,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
