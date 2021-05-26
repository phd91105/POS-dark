import 'package:admin_cms/utils/constants.dart';
import 'package:admin_cms/widgets/food.dart';
import 'package:admin_cms/widgets/title_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

class DashboardRight extends StatelessWidget {
  const DashboardRight({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, right: 24, bottom: 24),
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: secondaryBgColor,
              ),
              child: Column(
                children: [
                  TitleWithButton(
                    title: 'Most Ordered',
                    icon: UniconsLine.angle_down,
                    btnLabel: '   Today',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Divider(color: Colors.grey),
                  ),
                  Expanded(
                    flex: 12,
                    // height: 235,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Food1(),
                          Food1(),
                          Food1(),
                          Food1(),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(bottom: 16),
                    height: 62,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: primaryColor,
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'View all',
                        style: GoogleFonts.getFont(
                          'Barlow',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: secondaryBgColor,
              ),
              child: Column(
                children: [
                  TitleWithButton(
                    title: 'Most Type of Order',
                    icon: UniconsLine.angle_down,
                    btnLabel: '   Today',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Divider(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
