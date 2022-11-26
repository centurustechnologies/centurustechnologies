import 'dart:developer';

import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:centurus_web_app/view/helpers/banners.dart';
import 'package:centurus_web_app/view/helpers/footer.dart';
import 'package:centurus_web_app/view/navBar/mobile_navbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
      log('email is : $facebookUrl');
    });
  }

  @override
  void initState() {
    footerInfo();
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
              Footer(
                context,
                whiteColor,
                mainColor,
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
        ),
      ),
    );
  }
}
