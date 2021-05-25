import 'package:admin_cms/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    Key? key,
    this.icon,
    this.percent,
    this.title,
    this.total,
  }) : super(key: key);
  final icon, percent, title, total;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: Container(
        height: 200,
        width: 290,
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: secondaryBgColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: primaryBgColor,
                  ),
                  child: icon,
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  percent > 0 ? '+$percent%' : '-$percent%',
                  style: GoogleFonts.getFont(
                    'Barlow',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: percent > 0 ? Colors.greenAccent : Colors.redAccent,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    color: percent > 0
                        ? Colors.greenAccent.withOpacity(0.2)
                        : Colors.redAccent.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(45),
                  ),
                  child: percent > 0
                      ? Icon(
                          UniconsLine.arrow_up,
                          color: Colors.greenAccent,
                        )
                      : Icon(
                          UniconsLine.arrow_down,
                          color: Colors.redAccent,
                        ),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              total,
              style: GoogleFonts.getFont(
                'Barlow',
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              title,
              style: GoogleFonts.getFont(
                'Barlow',
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xffABBBC2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
