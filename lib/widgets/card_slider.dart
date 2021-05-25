import 'package:admin_cms/widgets/dashboard_card.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class CardSlider extends StatelessWidget {
  const CardSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          DashboardCard(
            icon: Icon(
              UniconsLine.usd_circle,
              color: Colors.purpleAccent,
            ),
            percent: 32.40,
            total: '10,243.000',
            title: 'Total Revenue',
          ),
          DashboardCard(
            icon: Icon(
              UniconsLine.bookmark,
              color: Colors.orangeAccent,
            ),
            percent: -12.24,
            total: '23,456',
            title: 'Total Revenue',
          ),
          DashboardCard(
            icon: Icon(
              UniconsLine.users_alt,
              color: Colors.blueAccent,
            ),
            percent: 32.40,
            total: '10,243.000',
            title: 'Total Revenue',
          ),
          DashboardCard(
            icon: Icon(
              UniconsLine.usd_circle,
              color: Colors.purpleAccent,
            ),
            percent: 2.40,
            total: '1,243.000',
            title: 'Total Customer',
          ),
        ],
      ),
    );
  }
}
