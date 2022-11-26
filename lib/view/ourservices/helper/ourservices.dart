import 'package:centurus_web_app/view/blog/helper/headertitle.dart';
import 'package:centurus_web_app/view/header_widget.dart';
import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:centurus_web_app/view/helpers/clientsay.dart';
import 'package:centurus_web_app/view/helpers/contactus.dart';
import 'package:centurus_web_app/view/helpers/footer.dart';
import 'package:centurus_web_app/view/helpers/services.dart';
import 'package:centurus_web_app/view/navBar/mobile_navbar.dart';
import 'package:flutter/material.dart';

class OurServices extends StatefulWidget {
  final String? phoneNumber;
  final String? email;
  final String? address;
  final String? aboutUs;
  final String? facebookUrl;
  final String? instagramUrl;
  final String? linkedinUrl;
  final String? twitterUrl;
  final String? tumblerUrl;
  final String? copyright;
  const OurServices(
      {Key? key,
      this.phoneNumber,
      this.email,
      this.address,
      this.aboutUs,
      this.facebookUrl,
      this.instagramUrl,
      this.linkedinUrl,
      this.twitterUrl,
      this.tumblerUrl,
      this.copyright
      })
      : super(key: key);

  @override
  State<OurServices> createState() => _DashboardState();
}

class _DashboardState extends State<OurServices>
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
              servicesDesktopMethod(context),
              clientSayDesktopMethod(context),
              ContactUsDesktopMethod(context),
              Footer(
                context,
                whiteColor,
                mainColor,
                widget.phoneNumber,
                widget.email,
                widget.address,
                widget.facebookUrl,
                widget.instagramUrl,
                widget.linkedinUrl,
                widget.aboutUs,
                widget.twitterUrl,
                widget.tumblerUrl,
                widget.copyright,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
