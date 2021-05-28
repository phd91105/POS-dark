import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderTableTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const <int, TableColumnWidth>{
        0: FixedColumnWidth(320),
        1: FixedColumnWidth(440),
        2: FixedColumnWidth(260),
        3: FixedColumnWidth(140),
      },
      children: [
        TableRow(
          children: [
            Text(
              'Customer',
              style: GoogleFonts.getFont(
                'Barlow',
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Text(
              'Menu',
              style: GoogleFonts.getFont(
                'Barlow',
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Text(
              'Total payment',
              style: GoogleFonts.getFont(
                'Barlow',
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Text(
              'Status',
              style: GoogleFonts.getFont(
                'Barlow',
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
