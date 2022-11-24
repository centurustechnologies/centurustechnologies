import 'package:centurus_web_app/view/blog/helper/headertitle.dart';
import 'package:centurus_web_app/view/header_widget.dart';
import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:centurus_web_app/view/helpers/footer.dart';
import 'package:centurus_web_app/view/navBar/mobile_navbar.dart';
import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:centurus_web_app/view/helpers/banners.dart';
import 'package:centurus_web_app/view/viewus/helper/experience.dart';
import 'package:flutter/material.dart';

import 'analytics.dart';
import 'contactus2.dart';
import 'everything.dart';

class ViewUs extends StatefulWidget {
  const ViewUs({Key? key}) : super(key: key);

  @override
  State<ViewUs> createState() => _DashboardState();
}

class _DashboardState extends State<ViewUs>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
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
              Footer(context, whiteColor, mainColor),
            ],
          ),
        ),
      ),
    );
  }
}
