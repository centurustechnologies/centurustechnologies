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

class _DashboardState extends State<Dashboard> {
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
            ],
          ),
        ),
      ),
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
