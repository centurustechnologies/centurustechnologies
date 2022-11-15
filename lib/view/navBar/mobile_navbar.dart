import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  bool showHome = true;
  bool showAboutUs = false;
  bool showOurServices = false;
  bool showPrivacyPolicy = false;
  bool showTermsConditions = false;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Drawer(
      backgroundColor: hoverColor,
      child: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: MaterialButton(
                  padding: EdgeInsets.zero,
                  minWidth: 0,
                  height: 0,
                  onPressed: () => Navigator.pop(context),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(
                      Icons.close,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              width: width,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: showHome ? mainColor : hoverColor,
              ),
              child: MaterialButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  setState(() {
                    showHome = true;
                    showAboutUs = false;
                    showOurServices = false;
                    showPrivacyPolicy = false;
                    showTermsConditions = false;
                  });
                },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Home',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold,
                      color: showHome ? whiteColor : blackColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              width: width,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: showAboutUs ? mainColor : hoverColor,
              ),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    showHome = false;
                    showAboutUs = true;
                    showOurServices = false;
                    showPrivacyPolicy = false;
                    showTermsConditions = false;
                  });
                },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'About Us',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold,
                      color: showAboutUs ? whiteColor : blackColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              width: width,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: showOurServices ? mainColor : hoverColor,
              ),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    showHome = false;
                    showAboutUs = false;
                    showOurServices = true;
                    showPrivacyPolicy = false;
                    showTermsConditions = false;
                  });
                },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Our Services',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold,
                      color: showOurServices ? whiteColor : blackColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              width: width,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: showPrivacyPolicy ? mainColor : hoverColor,
              ),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    showHome = false;
                    showAboutUs = false;
                    showOurServices = false;
                    showPrivacyPolicy = true;
                    showTermsConditions = false;
                  });
                },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Privacy Policy',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold,
                      color: showPrivacyPolicy ? whiteColor : blackColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              width: width,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: showTermsConditions ? mainColor : hoverColor,
              ),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    showHome = false;
                    showAboutUs = false;
                    showOurServices = false;
                    showPrivacyPolicy = false;
                    showTermsConditions = true;
                  });
                },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Terms & Conditions',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold,
                      color: showTermsConditions ? whiteColor : blackColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
