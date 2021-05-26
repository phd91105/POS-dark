import 'package:admin_cms/screens/home.dart';
import 'package:admin_cms/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: primaryBgColor,
      ),
    ),
  );
}
