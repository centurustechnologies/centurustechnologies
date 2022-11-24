import 'dart:developer';

import 'package:centurus_web_app/view/blog/helper/headertitle.dart';
import 'package:centurus_web_app/view/header_widget.dart';
import 'package:centurus_web_app/view/helpers/clientsay.dart';
import 'package:centurus_web_app/view/helpers/contactus.dart';
import 'package:centurus_web_app/view/helpers/footer.dart';
import 'package:centurus_web_app/view/helpers/services.dart';
import 'package:centurus_web_app/view/navBar/desktop_navBar.dart';
import 'package:centurus_web_app/view/navBar/mobile_navbar.dart';
import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:centurus_web_app/view/helpers/banners.dart';
import 'package:centurus_web_app/view/viewus/helper/analytics.dart';
import 'package:centurus_web_app/view/viewus/helper/contactus2.dart';
import 'package:centurus_web_app/view/viewus/helper/everything.dart';
import 'package:centurus_web_app/view/viewus/helper/experience.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';







class viewUs extends StatefulWidget {
  const viewUs({Key? key}) : super(key: key);

  @override
  State<viewUs> createState() => _DashboardState();
}

class _DashboardState extends State<viewUs>
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderWidget(width: width, scaffoldKey: scaffoldKey),
              headerTitle(context),
              Experience(context),
              analytics(context),
              everything(context),
              contactUs2(context),
              //servicesDesktopMethod(context),
              //clientSayDesktopMethod(context),
              //ContactUsDesktopMethod(context),
              Footer(context,whiteColor,mainColor),
            ],
          ),
        ),
      ),
    );
  }
}
