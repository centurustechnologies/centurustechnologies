import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

desktopBanner(BuildContext context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: Colors.blue[50],
    ),
    child: Stack(
      children: [
        const Center(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Image(
              image: AssetImage(
                'assets/india_design.png',
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: width / 2.5,
                    child: Text(
                      'We Care Your Any IT Problems',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: width / 2.2,
                    child: Text(
                      'We provide App & Website design and development services over the world, quality services and better solutions to every customer.',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        shadows: [
                          Shadow(
                            color: whiteColor,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () {},
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
                ],
              ),
              Container(
                padding: const EdgeInsets.only(left: 60, top: 60, bottom: 60),
                child: const Image(
                  image: AssetImage('assets/banner_image.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

mobileBanner(BuildContext context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: Colors.blue[50],
    ),
    child: Stack(
      children: [
        const Center(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Image(
              image: AssetImage(
                'assets/india_design.png',
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  left: 60, right: 60, top: 30, bottom: 10),
              child: const Image(
                image: AssetImage('assets/banner_image.png'),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'We Care Your Any IT Problems',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'We provide App & Website design and development services over the world, quality services and better solutions to every customer.',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      shadows: [
                        Shadow(
                          color: whiteColor,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
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
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

tabletBanner(BuildContext context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: Colors.blue[50],
    ),
    child: Stack(
      children: [
        const Center(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Image(
              image: AssetImage(
                'assets/india_design.png',
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  left: 60, right: 60, top: 30, bottom: 10),
              child: const Image(
                image: AssetImage('assets/banner_image.png'),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'We Care Your Any IT Problems',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'We provide App & Website design and development services over the world, quality services and better solutions to every customer.',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      shadows: [
                        Shadow(
                          color: whiteColor,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
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
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
