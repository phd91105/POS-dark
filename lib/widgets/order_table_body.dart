import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderTableBody extends StatelessWidget {
  const OrderTableBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final rows = <TableRow>[];
    for (var i = 0; i < 6; i++) {
      rows.add(
        buildTableRow(),
      );
    }
    return Table(
      columnWidths: const <int, TableColumnWidth>{
        0: FixedColumnWidth(320),
        1: FixedColumnWidth(440),
        2: FixedColumnWidth(260),
        3: FixedColumnWidth(140),
      },
      children: rows,
    );
  }

  TableRow buildTableRow() {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            children: [
              Image.asset(
                'assets/avatar1.png',
                height: 36,
                width: 36,
              ),
              SizedBox(
                width: 24,
              ),
              Text(
                'Eren Jaegar',
                style: GoogleFonts.getFont(
                  'Barlow',
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Text(
          'Spicy seasoned seafood noodles',
          style: GoogleFonts.getFont(
            'Barlow',
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
        Text(
          "\$125",
          style: GoogleFonts.getFont(
            'Barlow',
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
        Container(
          height: 32,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.greenAccent.withOpacity(0.2),
          ),
          child: Center(
            child: Text(
              'Completed',
              style: GoogleFonts.getFont(
                'Barlow',
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.greenAccent,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
