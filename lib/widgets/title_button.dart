import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleWithButton extends StatelessWidget {
  const TitleWithButton({
    Key? key,
    this.title,
    this.icon,
    this.btnLabel,
  }) : super(key: key);
  final title, icon, btnLabel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 97,
      child: Row(
        children: [
          Text(
            title,
            style: GoogleFonts.getFont(
              'Barlow',
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          Spacer(),
          Container(
            width: 150,
            height: 60,
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Color(0xff393C49),
              ),
            ),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  btnLabel,
                  style: GoogleFonts.getFont(
                    'Barlow',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
