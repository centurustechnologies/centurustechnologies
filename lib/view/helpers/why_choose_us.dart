import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

whyChooseUsDesktopMethod(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Padding(
    padding: const EdgeInsets.all(30),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Container(
            width: width / 2.5,
            height: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/why_choose_us.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(width: 40),
        Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Why Choose Us',
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.bold,
                  color: headingColor,
                  fontSize: 20,
                  shadows: [
                    Shadow(
                      color: blackColor.withOpacity(0.2),
                      blurRadius: 1,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: width / 2.5,
                child: Text(
                  'We are working with 5+ years exprience',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    height: 1.2,
                    color: mainColor,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: width / 2.2,
                child: Text(
                  'We Centurus Technologies working from last 5+ years in IT Sector and providing high level of app & web development and design over the world. Developed more than 200+ projects in web and android, ios apps.',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'Our Projects',
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    color: whiteColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

whyChooseUsTabletMethod(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            width: width / 2,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/why_choose_us.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Why Choose Us',
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.bold,
                  color: headingColor,
                  fontSize: 20,
                  shadows: [
                    Shadow(
                      color: blackColor.withOpacity(0.2),
                      blurRadius: 1,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: width / 2.5,
                child: Text(
                  'We are working with 5+ years exprience',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    height: 1.2,
                    color: mainColor,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: width / 2.5,
                child: Text(
                  'We Centurus Technologies working from last 5+ years in IT Sector and providing high level of app & web development and design over the world. Developed more than 200+ projects in web and android, ios apps.',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'Our Projects',
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    color: whiteColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

whyChooseUsMobileMethod(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: width,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/why_choose_us.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Why Choose Us',
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.bold,
                  color: headingColor,
                  fontSize: 20,
                  shadows: [
                    Shadow(
                      color: blackColor.withOpacity(0.2),
                      blurRadius: 1,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'We are working with 5+ years exprience',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  height: 1.2,
                  color: mainColor,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'We Centurus Technologies working from last 5+ years in IT Sector and providing high level of app & web development and design over the world. Developed more than 200+ projects in web and android, ios apps.',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'Our Projects',
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    color: whiteColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
