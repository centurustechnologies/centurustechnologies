import 'dart:developer';

import 'package:centurus_web_app/view/blog/helper/headertitle.dart';
import 'package:centurus_web_app/view/header_widget.dart';
import 'package:centurus_web_app/view/helpers/footer.dart';
import 'package:centurus_web_app/view/navBar/desktop_navBar.dart';
import 'package:centurus_web_app/view/navBar/mobile_navbar.dart';
import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:centurus_web_app/view/helpers/banners.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

import '../helpers/blog.dart';
import 'helper/blogpage.dart';

class OurBlog extends StatefulWidget {
  const OurBlog({Key? key}) : super(key: key);

  @override
  State<OurBlog> createState() => _DashboardState();
}

class _DashboardState extends State<OurBlog>
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
              blogMethod(context),
              Footer(context, mainColor, whiteColor),
            ],
          ),
        ),
      ),
    );
  }
}
