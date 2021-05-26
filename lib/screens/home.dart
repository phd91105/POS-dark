import 'package:admin_cms/screens/dashboard/dashboard_right.dart';
import 'package:admin_cms/widgets/menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

import 'dashboard/dashboard.dart';
import 'food/food_list.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              flex: 10,
              child: Obx(
                () {
                  switch (activeScreen.value) {
                    case 'home':
                      return FoodList();
                    case 'dashboard':
                      return Dashboard();
                    case 'user':
                      return FoodList();
                    default:
                      return Dashboard();
                  }
                },
              ),
            ),
            Expanded(
              flex: 4,
              child: DashboardRight(),
            ),
          ],
        ),
      ),
    );
  }
}
