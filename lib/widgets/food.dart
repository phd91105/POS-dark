import 'package:admin_cms/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Food1 extends StatelessWidget {
  const Food1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Row(
        children: [
          Image.asset(
            'assets/food1.png',
            height: 56,
            width: 56,
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Spicy seasoned seafood noodles',
                style: GoogleFonts.getFont(
                  'Barlow',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                '200 dishes ordered',
                style: GoogleFonts.getFont(
                  'Barlow',
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: primaryTextColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
