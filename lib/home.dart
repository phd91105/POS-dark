import 'package:admin_cms/utils/constants.dart';
import 'package:admin_cms/widgets/card_slider.dart';
import 'package:admin_cms/widgets/menu.dart';
import 'package:admin_cms/widgets/order_table_body.dart';
import 'package:admin_cms/widgets/order_table_title.dart';
import 'package:admin_cms/widgets/title_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

class HomeScreen extends StatelessWidget {
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
              child: Container(
                color: primaryBgColor,
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24),
                          child: MainTitle(),
                        ),
                        Divider(
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        CardSlider(),
                        SizedBox(
                          height: 24,
                        ),
                        Container(
                          height: 700,
                          padding: EdgeInsets.symmetric(horizontal: 36),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: secondaryBgColor,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                child: TitleWithButton(
                                  title: 'Order Report',
                                  icon: UniconsLine.sliders_v_alt,
                                  btnLabel: 'Filter Order',
                                ),
                              ),
                              OrderTableTitle(),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                child: Divider(color: Colors.grey),
                              ),
                              OrderTableBody(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                padding: EdgeInsets.only(top: 24, right: 24, bottom: 24),
                child: Column(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 8),
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
                            Food1(),
                            Food1(),
                            Food1(),
                            Container(
                              height: 62,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: Color(0xffEA7C69),
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
                                    color: Color(0xffEA7C69),
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 8),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
            'assets/img1.png',
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
                  color: Color(0xffABBBC2),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
