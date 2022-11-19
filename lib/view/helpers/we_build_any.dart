import 'package:centurus_web_app/view/helpers/banners.dart';
import 'package:flutter/cupertino.dart';

import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:google_fonts/google_fonts.dart';

WeBuildAnyDesktopMethod(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  var tabController;
  return Container(
    height: 250,
    width: width,
    color: const Color(0xff161D42),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 50,
        ),
        Text(
          'We Build any Kind Of ',
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 33,
            shadows: [
              Shadow(
                color: blackColor.withOpacity(0.2),
                blurRadius: 1,
              ),
            ],
          ),
        ),
        Text(
          'Technology',
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 33,
            shadows: [
              Shadow(
                color: blackColor.withOpacity(0.2),
                blurRadius: 1,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 18.0,
        ),
        Text(
          'Credibly grow premier ideas rather than bricks-and-clicks strategic theme areas',
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.w400,
            color: Colors.white,
            fontSize: 16,
            shadows: [
              Shadow(
                color: blackColor.withOpacity(0.2),
                blurRadius: 1,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'distributed for stand-alone web-readiness.',
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.w400,
            color: Colors.white,
            fontSize: 16,
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
  );
}

WeBuildAnyMobileMethod(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return  Container(
    padding: EdgeInsets.all(10),
    width: width,
    color: const Color(0xff161D42),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 50,
        ),
        Text(
          'We Build any Kind Of ',
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 24,
            shadows: [
              Shadow(
                color: blackColor.withOpacity(0.2),
                blurRadius: 1,
              ),
            ],
          ),
        ),
        Text(
          'Technology',
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 24,
            shadows: [
              Shadow(
                color: blackColor.withOpacity(0.2),
                blurRadius: 1,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 18.0,
        ),
        Text(
          'Credibly grow premier ideas rather than bricks-and-clicks strategic theme areasdistributed for stand-alone web-readiness. ',
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.w400,
            color: Colors.white,
            fontSize: 14,
            shadows: [
              Shadow(
                color: blackColor.withOpacity(0.2),
                blurRadius: 1,
              ),
            ],
          ),textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 8,
        ),
        
      ],
    ),
  );
  }

