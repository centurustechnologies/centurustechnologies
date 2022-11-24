import 'package:centurus_web_app/view/about_us/aboutus.dart';
import 'package:centurus_web_app/view/blog/ourblog.dart';
import 'package:centurus_web_app/view/career/career.dart';
import 'package:centurus_web_app/view/contact_us_screen.dart';
import 'package:centurus_web_app/view/dashboard.dart';
import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:centurus_web_app/view/ourservices/helper/ourservices.dart';
import 'package:centurus_web_app/view/viewus/helper/viewus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: hoverColor, // navigation bar color
      statusBarColor: mainColor, // status bar color
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Centurus Technologies Pvt. Ltd.',
      debugShowCheckedModeBanner: false,
      home:Dashboard()
    );
  }
}
