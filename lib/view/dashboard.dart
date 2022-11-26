import 'dart:developer';

import 'package:centurus_web_app/view/header_widget.dart';
import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:centurus_web_app/view/helpers/banners.dart';
import 'package:centurus_web_app/view/helpers/blog.dart';
import 'package:centurus_web_app/view/helpers/clientsay.dart';
import 'package:centurus_web_app/view/helpers/contactus.dart';
import 'package:centurus_web_app/view/helpers/footer.dart';
import 'package:centurus_web_app/view/helpers/ourwork.dart';
import 'package:centurus_web_app/view/helpers/portfolio.dart';
import 'package:centurus_web_app/view/helpers/services.dart';
import 'package:centurus_web_app/view/helpers/servicewepro.dart';
import 'package:centurus_web_app/view/helpers/we_build_any.dart';
import 'package:centurus_web_app/view/helpers/we_build_tech.dart';
import 'package:centurus_web_app/view/helpers/why_choose_us.dart';
import 'package:centurus_web_app/view/navBar/mobile_navbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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

  String year = '';
  String companiesCount = '';
  String phoneNumber = '';
  String email = '';
  String address = '';
  String aboutUs = '';
  String facebookUrl = '';
  String instagramUrl = '';
  String linkedinUrl = '';
  String twitterUrl = '';
  String tumblerUrl = '';
  String copyright = '';
  // List companiesImage = [];
  String projectImage = '';
  String projectLink = '';

  Future<void> changeYears() async {
    FirebaseFirestore.instance
        .collection('exprience')
        .doc('n3qGsJ2uJnclS9eCJkPP')
        .get()
        .then((value) {
      setState(() {
        year = value.get('exprience');
      });
      log('Year is : $year');
    });
  }

  final CollectionReference companiesImage =
      FirebaseFirestore.instance.collection('companies');

  Future<void> changeCompanies() async {
    FirebaseFirestore.instance
        .collection('companies')
        .count()
        .get()
        .then((value) {
      companiesCount = value.count.toString();
      log('Companies Count : $companiesCount');
    });
  }

  Future<void> projectData() async {
    FirebaseFirestore.instance
        .collection('projects')
        .get()
        .then((QuerySnapshot querySnapshot) {
      for (var doc in querySnapshot.docs) {
        setState(() {
          projectImage = doc['image'];
          projectLink = doc['link'];
        });
        log('massege : $projectImage');
      }
    });
  }

  Future<void> footerInfo() async {
    FirebaseFirestore.instance
        .collection('contact_info')
        .doc('ktAHRJ91DTPsHz5fNiLA')
        .get()
        .then((value) {
      setState(() {
        phoneNumber = value.get('phone_number');
        email = value.get('email');
        aboutUs = value.get('about_us');
        address = value.get('address');
        facebookUrl = value.get('facebook_url');
        instagramUrl = value.get('instagram_url');
        linkedinUrl = value.get('linkedin_url');
        twitterUrl = value.get('twitter_url');
        tumblerUrl = value.get('tumblr_url');
        copyright = value.get('copyright');
      });
      log('email is : $copyright');
    });
  }

  @override
  void initState() {
    changeYears();
    changeCompanies();
    projectData();
    footerInfo();
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
            Stack(
              children: [
                ScreenTypeLayout(
                  mobile: mobileBanner(context),
                  tablet: tabletBanner(context),
                  desktop: desktopBanner(context),
                ),
                HeaderWidget(width: width, scaffoldKey: scaffoldKey),
              ],
            ),
            ScreenTypeLayout(
              mobile: whyChooseUsMobileMethod(context, year),
              //tablet: whyChooseUsTabletMethod(context),
              desktop: whyChooseUsDesktopMethod(context, year),
            ),
            ScreenTypeLayout(
              desktop: WeBuildAnyDesktopMethod(context),
              mobile: WeBuildAnyMobileMethod(context),
            ),
            ScreenTypeLayout(
              mobile: WeBuildTechMobileScreen(
                width: width,
                tabController: tabController,
                year: year,
              ),
              tablet: WeBuildTechTabletScreen(
                  width: width, tabController: tabController, year: year),
              desktop: WeBuildTechDesktopScreen(
                width: width,
                tabController: tabController,
                year: year,
              ),
            ),
            ScreenTypeLayout(
              mobile: serviceWeProvideMobileMethod(context),
              tablet: serviceWeProvideTabletMethod(context),
              desktop: serviceWeProDesktopMethod(context),
            ),
            ScreenTypeLayout(
              mobile: portFolioMobileMethod(context, projectLink, projectImage),
              tablet: portFolioTabletMethod(context, projectLink, projectImage),
              desktop:
                  portFolioDesktopMethod(context, projectLink, projectImage),
            ),
            ScreenTypeLayout(
              mobile: ourWorkMobileMethod(context, companiesCount),
              // tablet: whyChooseUsTabletMethod(context),
              desktop: ourWorkDesktopMethod(context, companiesCount),
            ),
            ScreenTypeLayout(
              mobile: clientSayMobileMethod(context),
              tablet: clientSayTabletMethod(context),
              desktop: clientSayDesktopMethod(context),
            ),
            Column(
              children: [
                ScreenTypeLayout(
                  mobile: servicesMobileMethod(context),
                  // tablet: whyChooseUsTabletMethod(context),
                  desktop: servicesDesktopMethod(context),
                ),
              ],
            ),
            ScreenTypeLayout(
              mobile: ContactUsMobileMethod(context),
              //tablet: whyChooseUsTabletMethod(context),
              desktop: ContactUsDesktopMethod(context),
            ),
            ScreenTypeLayout(
              mobile: BlogMobileMethod(context),
              //tablet: whyChooseUsTabletMethod(context),
              desktop: BlogDesktopMethod(context),
            ),
            Footer(
              context,
              mainColor,
              whiteColor,
              phoneNumber,
              email,
              address,
              facebookUrl,
              instagramUrl,
              linkedinUrl,
              aboutUs,
              twitterUrl,
              tumblerUrl,
              copyright,
            ),
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
