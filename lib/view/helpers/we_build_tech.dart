import 'package:centurus_web_app/view/helpers/appDesign.dart';
import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:centurus_web_app/view/helpers/webdesign2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WeBuildTechTabletScreen extends StatelessWidget {
  const WeBuildTechTabletScreen({
    Key? key,
    required this.width,
    required this.tabController,
  }) : super(key: key);

  final double width;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            width: width,
            color: mainColor,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: TabBar(
                controller: tabController,
                indicatorColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                indicatorWeight: 2.0,
                tabs: [
                  Tab(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 28,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: mainColor,
                                image: DecorationImage(
                                    image: AssetImage('assets/web.png'),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Web Design',
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 12,
                              shadows: [
                                Shadow(
                                  color: blackColor.withOpacity(0.2),
                                  blurRadius: 1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 30,
                            width: 22,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    image: AssetImage('assets/android1.png'),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'App Development',
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 12,
                              shadows: [
                                Shadow(
                                  color: blackColor.withOpacity(0.2),
                                  blurRadius: 1,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 30,
                            width: 22,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    image: AssetImage('assets/android2.png'),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'UX/UI Design',
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 12,
                              shadows: [
                                Shadow(
                                  color: blackColor.withOpacity(0.2),
                                  blurRadius: 1,
                                ),
                              ],
                            ),
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
            height: 430,
            width: width,
            color: mainColor,
            child: TabBarView(
              controller: tabController,
              children: [
                ScreenTypeLayout(
                  desktop: WEbDEsign2(context),
                  //tablet: whyChooseUsTabletMethod(context),
                  mobile: WEbDEsign2MobileMethod(context),
                ),
                 ScreenTypeLayout(
                  desktop: appDesignDesktopMethod(context),
                  //tablet: whyChooseUsTabletMethod(context),
                  mobile: appDesignMobileMethod(context),
                ),
                ScreenTypeLayout(
                  desktop: WEbDEsign2(context),
                  //tablet: whyChooseUsTabletMethod(context),
                  mobile: WEbDEsign2MobileMethod(context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WeBuildTechDesktopScreen extends StatelessWidget {
  const WeBuildTechDesktopScreen({
    Key? key,
    required this.width,
    required this.tabController,
  }) : super(key: key);

  final double width;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            width: width,
            color: mainColor,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(210, 0, 210, 0),
              child: TabBar(
                controller: tabController,
                indicatorColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                indicatorWeight: 2.0,
                tabs: [
                  Tab(
                    child: Container(
                      width: width / 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 36,
                            width: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: mainColor,
                                image: DecorationImage(
                                    image: AssetImage('assets/web.png'),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Web Design',
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 15,
                              shadows: [
                                Shadow(
                                  color: blackColor.withOpacity(0.2),
                                  blurRadius: 1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      width: width / 8.5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 32,
                            width: 22,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    image: AssetImage('assets/android1.png'),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'App Development',
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 15,
                              shadows: [
                                Shadow(
                                  color: blackColor.withOpacity(0.2),
                                  blurRadius: 1,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      width: width / 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 32,
                            width: 22,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    image: AssetImage('assets/android2.png'),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'UX/UI Design',
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 15,
                              shadows: [
                                Shadow(
                                  color: blackColor.withOpacity(0.2),
                                  blurRadius: 1,
                                ),
                              ],
                            ),
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
            height: 430,
            width: width,
            color: mainColor,
            child: TabBarView(
              controller: tabController,
              children: [
                ScreenTypeLayout(
                  desktop: WEbDEsign2(context),
                  //tablet: whyChooseUsTabletMethod(context),
                  mobile: WEbDEsign2MobileMethod(context),
                ),
                 ScreenTypeLayout(
                  desktop: appDesignDesktopMethod(context),
                  //tablet: whyChooseUsTabletMethod(context),
                  mobile: appDesignMobileMethod(context),
                ),
                ScreenTypeLayout(
                  desktop: WEbDEsign2(context),
                  //tablet: whyChooseUsTabletMethod(context),
                  mobile: WEbDEsign2MobileMethod(context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WeBuildTechMobileScreen extends StatelessWidget {
  const WeBuildTechMobileScreen({
    Key? key,
    required this.width,
    required this.tabController,
  }) : super(key: key);

  final double width;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(0),
            width: width,
            color: mainColor,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: TabBar(
                controller: tabController,
                indicatorColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                indicatorWeight: 2.0,
                tabs: [
                  Tab(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: mainColor,
                                image: DecorationImage(
                                    image: AssetImage('assets/web.png'),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Web',
                                    style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 10,
                                      shadows: [
                                        Shadow(
                                          color: blackColor.withOpacity(0.2),
                                          blurRadius: 1,
                                        ),
                                      ],
                                    )),
                                Text(
                                  'Design',
                                  style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 10,
                                    shadows: [
                                      Shadow(
                                        color: blackColor.withOpacity(0.2),
                                        blurRadius: 1,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 35,
                            width: 24,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    image: AssetImage('assets/android1.png'),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'App',
                                  style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontSize: 10,
                                    shadows: [
                                      Shadow(
                                        color: blackColor.withOpacity(0.2),
                                        blurRadius: 1,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  'Development',
                                  style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontSize: 10,
                                    shadows: [
                                      Shadow(
                                        color: blackColor.withOpacity(0.2),
                                        blurRadius: 1,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 35,
                            width: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    image: AssetImage('assets/android2.png'),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  'UX/UI',
                                  style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 10,
                                    shadows: [
                                      Shadow(
                                        color: blackColor.withOpacity(0.2),
                                        blurRadius: 1,
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  'Design',
                                  style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 10,
                                    shadows: [
                                      Shadow(
                                        color: blackColor.withOpacity(0.2),
                                        blurRadius: 1,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
            height: 430,
            width: width,
            color: mainColor,
            child: TabBarView(
              controller: tabController,
              children: [
                ScreenTypeLayout(
                  desktop: WEbDEsign2(context),
                  //tablet: whyChooseUsTabletMethod(context),
                  mobile: WEbDEsign2MobileMethod(context),
                ),
                ScreenTypeLayout(
                  desktop: appDesignDesktopMethod(context),
                  //tablet: whyChooseUsTabletMethod(context),
                  mobile: appDesignMobileMethod(context),
                ),
                ScreenTypeLayout(
                  desktop: WEbDEsign2(context),
                  //tablet: whyChooseUsTabletMethod(context),
                  mobile: WEbDEsign2MobileMethod(context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
