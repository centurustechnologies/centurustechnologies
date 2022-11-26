import 'dart:developer';

import 'package:centurus_web_app/view/blog/helper/headertitle.dart';
import 'package:centurus_web_app/view/header_widget.dart';
import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:centurus_web_app/view/helpers/footer.dart';
import 'package:centurus_web_app/view/navBar/mobile_navbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'helper/blogpage.dart';

class OurBlog extends StatefulWidget {
  const OurBlog({Key? key}) : super(key: key);

  @override
  State<OurBlog> createState() => _DashboardState();
}

class _DashboardState extends State<OurBlog>
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
    // footerInfo();
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
              blogMethod(context),
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
        ),
      ),
    );
  }
}
