import 'dart:developer';


import 'package:centurus_web_app/view/navBar/desktop_navBar.dart';
import 'package:centurus_web_app/view/navBar/mobile_navbar.dart';
import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:centurus_web_app/view/helpers/banners.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

import 'helper/growbusiness.dart';
import 'helper/ourvalues.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _DashboardState();
}

class _DashboardState extends State<AboutUs>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: scaffoldKey,
      endDrawer: const Drawer(
        child: DrawerWidget(),
      ),
      body:SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
             
              ScreenTypeLayout(
                  mobile: mobileBanner(context),
                  //tablet: tabletBanner(context),
                  desktop: growBussinessDesktopMethod(context),
                ),
 ScreenTypeLayout(
                  mobile: mobileBanner(context),
                  //tablet: tabletBanner(context),
                  desktop: ourValuesDesktopMethod(context),
                )


          ],








        
        )
        )
        ) 
        );}}