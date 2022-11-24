import 'package:centurus_web_app/view/about_us/aboutus.dart';
import 'package:centurus_web_app/view/career/career.dart';
import 'package:centurus_web_app/view/contact_us_screen.dart';
import 'package:centurus_web_app/view/dashboard.dart';
import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:centurus_web_app/view/ourservices/helper/ourservices.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Dashboard()),
            );
          },
          child: Text(
            'Home',
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(width: 30),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AboutUs()),
            );
          },
          child: Text(
            'About Us',
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(width: 30),
        InkWell(
          onTap: (() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ourServices()),
            );
          }),
          child: Text(
            'Our Services',
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(width: 30),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const career()),
            );
          },
          child: Text(
            'Career',
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(width: 30),
        
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const contactUsScreen()),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: mainColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              'Contact Us',
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.bold,
                color: whiteColor,
              ),
            ),
          ),
        ),
        SizedBox(width: 60),
      ],
    );
  }
}
