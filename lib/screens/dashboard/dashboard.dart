import 'package:admin_cms/utils/constants.dart';
import 'package:admin_cms/widgets/card_slider.dart';
import 'package:admin_cms/widgets/menu.dart';
import 'package:admin_cms/widgets/order_table_body.dart';
import 'package:admin_cms/widgets/order_table_title.dart';
import 'package:admin_cms/widgets/title_button.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
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
                  child: MainTitle(
                    title: 'Dashboard',
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: CardSlider(),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.symmetric(horizontal: 36),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: secondaryBgColor,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: TitleWithButton(
                          title: 'Order Report',
                          icon: UniconsLine.sliders_v_alt,
                          btnLabel: ' Filter Order',
                        ),
                      ),
                      OrderTableTitle(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
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
    );
  }
}
