import 'package:admin_cms/utils/constants.dart';
import 'package:admin_cms/widgets/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

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
            icon: UniconsLine.home_alt,
            isSelected: true,
          ),
          MenuItem(
            icon: UniconsLine.home_alt,
            isSelected: false,
          ),
          MenuItem(
            icon: UniconsLine.chart_pie_alt,
            isSelected: false,
          ),
          MenuItem(
            icon: UniconsLine.envelope_alt,
            isSelected: false,
          ),
          MenuItem(
            icon: UniconsLine.bell_slash,
            isSelected: false,
          ),
          MenuItem(
            icon: UniconsLine.setting,
            isSelected: false,
          ),
          MenuItem(
            icon: UniconsLine.sign_out_alt,
            isSelected: false,
          ),
        ],
      ),
    );
  }
}

class MainTitle extends StatelessWidget {
  const MainTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Dashboard',
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
          'Tuesday 2 Feb, 2021',
          style: GoogleFonts.getFont(
            'Barlow',
            color: Color(0xffABBBC2),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
