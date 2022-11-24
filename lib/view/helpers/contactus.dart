// ignore_for_file: non_constant_identifier_names

import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ContactUsDesktopMethod(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
    child: Container(
      height: 450,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            mainColor,
            mainColor.withOpacity(0.9),
            mainColor.withOpacity(0.9),
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: -250,
            right: 100,
            child: Container(
              height: 350,
              width: 350,
              decoration: const BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            bottom: -240,
            left: 100,
            child: Container(
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 3, 67, 119),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Let's Try! Get Free Support",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.amber,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Start Your 14-Day Free Trial',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 39,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    'We can help you to create your dream website for better business revenue.',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300,
                      color: const Color.fromARGB(255, 202, 193, 193),
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  SizedBox(
                      height: 48,
                      child: Material(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 7, 104, 182),
                        child: GestureDetector(
                            onTap: () {},
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(24, 3, 24, 5),
                                  child: Text(
                                    'Contact With Us',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 300),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              // <-- Icon
                              Icons.check_circle_outline_outlined,
                              color: Color.fromARGB(255, 199, 197, 197),
                              size: 20.0,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Free 14-Day Trial',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w300,
                                color: const Color.fromARGB(255, 199, 197, 197),
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              // <-- Icon
                              Icons.check_circle_outline_outlined,
                              color: Color.fromARGB(255, 199, 197, 197),
                              size: 20.0,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'No credit card required',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w300,
                                color: const Color.fromARGB(255, 199, 197, 197),
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              // <-- Icon
                              Icons.check_circle_outline_outlined,
                              color: Color.fromARGB(255, 199, 197, 197),
                              size: 20.0,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Support 24/7',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w300,
                                color: const Color.fromARGB(255, 199, 197, 197),
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              // <-- Icon
                              Icons.check_circle_outline_outlined,
                              color: Color.fromARGB(255, 199, 197, 197),
                              size: 20.0,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Cancel anytime',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w300,
                                color: const Color.fromARGB(255, 199, 197, 197),
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

ContactUsMobileMethod(BuildContext context) {
  return Container(
    height: 350,
    padding: const EdgeInsets.symmetric(vertical: 0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(
        colors: [
          mainColor,
          mainColor.withOpacity(0.9),
          mainColor.withOpacity(0.9),
        ],
      ),
    ),
    child: Stack(
      children: [
        Positioned(
          top: -65,
          right: 50,
          child: Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              color: Colors.amber,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          bottom: -70,
          left: 40,
          child: Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 3, 67, 119),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Let's Try! Get Free Support",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Colors.amber,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Start Your 14-Day Free Trial',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    'We can help you to create your dream website for better business revenue.',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300,
                      color: const Color.fromARGB(255, 202, 193, 193),
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      height: 44,
                      child: Material(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 7, 104, 182),
                        child: GestureDetector(
                            onTap: () {},
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(24, 3, 24, 5),
                                  child: Text(
                                    'Contact With Us',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              // <-- Icon
                              Icons.check_circle_outline_outlined,
                              color: Color.fromARGB(255, 199, 197, 197),
                              size: 18.0,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Support 24/7',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w300,
                                color: const Color.fromARGB(255, 199, 197, 197),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              // <-- Icon
                              Icons.check_circle_outline_outlined,
                              color: Color.fromARGB(255, 199, 197, 197),
                              size: 18.0,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Cancel anytime',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w300,
                                color: const Color.fromARGB(255, 199, 197, 197),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ],
    ),
  );
}
