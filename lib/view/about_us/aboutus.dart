import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:centurus_web_app/view/helpers/banners.dart';
import 'package:centurus_web_app/view/helpers/footer.dart';
import 'package:centurus_web_app/view/navBar/mobile_navbar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../helpers/blog.dart';
import '../helpers/contactus.dart';
import 'helper/growbusiness.dart';
import 'helper/ourteam.dart';
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
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: const Drawer(
        child: DrawerWidget(),
      ),
      body: SafeArea(
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
              ),
              ScreenTypeLayout(
                mobile: mobileBanner(context),
                //tablet: tabletBanner(context),
                desktop: ourTeamDesktopMethod(context),
              ),
              ScreenTypeLayout(
                mobile: mobileBanner(context),
                //tablet: tabletBanner(context),
                desktop: BlogDesktopMethod(context),
              ),
              ScreenTypeLayout(
                mobile: mobileBanner(context),
                //tablet: tabletBanner(context),
                desktop: ContactUsDesktopMethod(context),
              ),
              Footer(context, whiteColor, mainColor),
            ],
          ),
        ),
      ),
    );
  }
}
