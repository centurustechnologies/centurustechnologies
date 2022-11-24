import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:centurus_web_app/view/ourservices/helper/ourservices.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../dashboard.dart';

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
        Text(
          'About Us',
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 30),
        Text(
          'Our Services',
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 30),
        Text(
          'Privacy Policy',
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 30),
        Text(
          'Terms & Conditions',
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 30),
        Container(
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
        const SizedBox(width: 60),
      ],
    );
  }
}
