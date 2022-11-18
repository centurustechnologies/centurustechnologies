import 'dart:developer';

import 'package:centurus_web_app/view/helpers/blog.dart';
import 'package:centurus_web_app/view/helpers/clientsay.dart';
import 'package:centurus_web_app/view/helpers/contactus.dart';
import 'package:centurus_web_app/view/helpers/footer.dart';
import 'package:centurus_web_app/view/helpers/ourwork.dart';
import 'package:centurus_web_app/view/helpers/portfolio.dart';
import 'package:centurus_web_app/view/helpers/services.dart';
import 'package:centurus_web_app/view/helpers/servicewepro.dart';
import 'package:centurus_web_app/view/helpers/we_build_any.dart';
import 'package:centurus_web_app/view/helpers/webdesign.dart';
import 'package:centurus_web_app/view/helpers/why_choose_us.dart';
import 'package:centurus_web_app/view/navBar/desktop_navBar.dart';
import 'package:centurus_web_app/view/navBar/mobile_navbar.dart';
import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:centurus_web_app/view/helpers/banners.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
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
            Stack(
              children: [
                ScreenTypeLayout(
                  mobile: mobileBanner(context),
                  tablet: tabletBanner(context),
                  desktop: desktopBanner(context),
                ),
                Container(
                  height: 60,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 60,
                            decoration: BoxDecoration(
                              color: mainColor,
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: const Image(
                              image: AssetImage('assets/logo.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Centurus Technologies Pvt. ltd.',
                                style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Grow with Centurus',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      ScreenTypeLayout(
                        mobile: Builder(
                          builder: (context) {
                            return MaterialButton(
                              padding: EdgeInsets.zero,
                              minWidth: 0,
                              height: 0,
                              onPressed: () =>
                                  scaffoldKey.currentState!.openEndDrawer(),
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: mainColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Icon(
                                  Icons.menu,
                                  color: whiteColor,
                                ),
                              ),
                            );
                          },
                        ),
                        tablet: Builder(
                          builder: (context) {
                            return MaterialButton(
                              padding: EdgeInsets.zero,
                              minWidth: 0,
                              height: 0,
                              onPressed: () =>
                                  scaffoldKey.currentState!.openEndDrawer(),
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: mainColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Icon(
                                  Icons.menu,
                                  color: whiteColor,
                                ),
                              ),
                            );
                          },
                        ),
                        desktop: const DesktopNavbar(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ScreenTypeLayout(
              mobile: whyChooseUsMobileMethod(context),
              tablet: whyChooseUsTabletMethod(context),
              desktop: whyChooseUsDesktopMethod(context),
            ),
            ScreenTypeLayout(
              mobile: WeBuildAnyDesktopMethod(context),
            ),
            Column(
              children: [
                Container(
                  height: 80.0,
                  width: width,
                  color: mainColor,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(150, 0, 150, 0),
                    child: TabBar(
                      controller: tabController,
                      indicatorColor: Colors.blue,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.grey,
                      indicatorWeight: 5.0,
                      tabs: [
                        Tab(
                          child: Text(
                            'Web Design',
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 21,
                              shadows: [
                                Shadow(
                                  color: blackColor.withOpacity(0.2),
                                  blurRadius: 1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'App Development',
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 21,
                              shadows: [
                                Shadow(
                                  color: blackColor.withOpacity(0.2),
                                  blurRadius: 1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'UX/UI DEsign',
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 21,
                              shadows: [
                                Shadow(
                                  color: blackColor.withOpacity(0.2),
                                  blurRadius: 1,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 470,
                  width: width,
                  color: mainColor,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      WebDesign(),
                      WebDesign(),
                      WebDesign(),
                    ],
                  ),
                ),
              ],
            ),
            ScreenTypeLayout(
              mobile: serviceWeProvideMobileMethod(context),
              //tablet: whyChooseUsTabletMethod(context),
              desktop:serviceWeProDesktopMethod(context),
            ),
            ScreenTypeLayout(
              mobile: portFolioMobileMethod(context),
              //tablet: whyChooseUsTabletMethod(context),
              desktop:portFolioDesktopMethod(context),
            ),
           ScreenTypeLayout(
              mobile: ourWorkMobileMethod(context),
              //tablet: whyChooseUsTabletMethod(context),
              desktop:ourWorkDesktopMethod(context),
            ),
           ScreenTypeLayout(
              mobile: clientSayMobileMethod(context),
              //tablet: whyChooseUsTabletMethod(context),
              desktop:clientSayDesktopMethod(context),
            ),
           ScreenTypeLayout(
              mobile: servicesMobileMethod(context),
              //tablet: whyChooseUsTabletMethod(context),
              desktop:servicesDesktopMethod(context),
            ),
            ScreenTypeLayout(
              mobile: ContactUsMobileMethod(context),
              //tablet: whyChooseUsTabletMethod(context),
              desktop:ContactUsDesktopMethod(context),
            ),
           ScreenTypeLayout(
              mobile: BlogMobileMethod(context),
              //tablet: whyChooseUsTabletMethod(context),
              desktop:BlogDesktopMethod(context),
            ),
            Footer(context),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          launchUrl(
            Uri.parse(whatsappLink),
          );
        },
        backgroundColor: Colors.green,
        child: const FaIcon(
          FontAwesomeIcons.whatsapp,
          size: 40,
        ),
      ),
    );
  }
}
