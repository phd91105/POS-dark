import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key? key,
    this.isSelected,
    this.icon,
  }) : super(key: key);
  final isSelected;
  final icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Container(
        height: 56,
        width: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          decoration: isSelected
              ? BoxDecoration(
                  color: Color(0xffEA7C69),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 3),
                      blurRadius: 10,
                      color: Color(0xffEA7C69),
                    )
                  ],
                )
              : BoxDecoration(),
          child: Icon(
            icon,
            size: 28,
            color: isSelected ? Colors.white : Color(0xffEA7C69),
          ),
        ),
      ),
    );
  }
}
