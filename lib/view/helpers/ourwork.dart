import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

ourWorkDesktopMethod(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    height: 500,
    width: width,
    color: Color.fromARGB(255, 247, 246, 246),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 100,
        ),
        Text(
          'Over 500+ Companies Trusted Us',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontSize: 38,
          ),
        ),
        SizedBox(height: 25),
        Text(
          'Over 500+ Companies Trusted Us',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w300,
            color: Color.fromARGB(255, 98, 97, 97),
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: 70,
        ),
        SizedBox(
          height: 100,
          width: width,
          child: ListView(scrollDirection: Axis.horizontal, children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomRight: Radius.circular(22)),
                          image: DecorationImage(
                              image: AssetImage('assets/logo45.jpg'),
                              fit: BoxFit.cover))),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomRight: Radius.circular(22)),
                          image: DecorationImage(
                              image: AssetImage('assets/logo45.jpg'),
                              fit: BoxFit.cover))),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomRight: Radius.circular(22)),
                          image: DecorationImage(
                              image: AssetImage('assets/logo45.jpg'),
                              fit: BoxFit.cover))),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomRight: Radius.circular(22)),
                          image: DecorationImage(
                              image: AssetImage('assets/logo45.jpg'),
                              fit: BoxFit.cover))),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomRight: Radius.circular(22)),
                          image: DecorationImage(
                              image: AssetImage('assets/logo45.jpg'),
                              fit: BoxFit.cover))),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 120,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomRight: Radius.circular(22)),
                          image: DecorationImage(
                              image: AssetImage('assets/logo45.jpg'),
                              fit: BoxFit.cover))),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomRight: Radius.circular(22)),
                          image: DecorationImage(
                              image: AssetImage('assets/logo45.jpg'),
                              fit: BoxFit.cover))),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomRight: Radius.circular(22)),
                          image: DecorationImage(
                              image: AssetImage('assets/logo45.jpg'),
                              fit: BoxFit.cover))),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomRight: Radius.circular(22)),
                          image: DecorationImage(
                              image: AssetImage('assets/logo45.jpg'),
                              fit: BoxFit.cover))),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomRight: Radius.circular(22)),
                          image: DecorationImage(
                              image: AssetImage('assets/logo45.jpg'),
                              fit: BoxFit.cover))),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomRight: Radius.circular(22)),
                          image: DecorationImage(
                              image: AssetImage('assets/logo45.jpg'),
                              fit: BoxFit.cover))),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 120,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomRight: Radius.circular(22)),
                          image: DecorationImage(
                              image: AssetImage('assets/logo45.jpg'),
                              fit: BoxFit.cover))),
                ],
              ),
            ),
          ]),
        )
      ],
    ),
  );
}
ourWorkMobileMethod(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    height: 400,
    width: width,
    color: Color.fromARGB(255, 247, 246, 246),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 50,
        ),
        Text(
          'Over 500+ Companies Trusted Us',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontSize: 19,
          ),
        ),
        SizedBox(height: 15),
        Text(
          'Over 500+ Companies Trusted Us',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w300,
            color: Color.fromARGB(255, 98, 97, 97),
            fontSize: 14,
          ),
        ),
        SizedBox(
          height: 70,
        ),
        SizedBox(
          height: 100,
          width: width,
          child: ListView(scrollDirection: Axis.horizontal, children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomRight: Radius.circular(22)),
                          image: DecorationImage(
                              image: AssetImage('assets/logo45.jpg'),
                              fit: BoxFit.cover))),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomRight: Radius.circular(22)),
                          image: DecorationImage(
                              image: AssetImage('assets/logo45.jpg'),
                              fit: BoxFit.cover))),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomRight: Radius.circular(22)),
                          image: DecorationImage(
                              image: AssetImage('assets/logo45.jpg'),
                              fit: BoxFit.cover))),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomRight: Radius.circular(22)),
                          image: DecorationImage(
                              image: AssetImage('assets/logo45.jpg'),
                              fit: BoxFit.cover))),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomRight: Radius.circular(22)),
                          image: DecorationImage(
                              image: AssetImage('assets/logo45.jpg'),
                              fit: BoxFit.cover))),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 120,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomRight: Radius.circular(22)),
                          image: DecorationImage(
                              image: AssetImage('assets/logo45.jpg'),
                              fit: BoxFit.cover))),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomRight: Radius.circular(22)),
                          image: DecorationImage(
                              image: AssetImage('assets/logo45.jpg'),
                              fit: BoxFit.cover))),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomRight: Radius.circular(22)),
                          image: DecorationImage(
                              image: AssetImage('assets/logo45.jpg'),
                              fit: BoxFit.cover))),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomRight: Radius.circular(22)),
                          image: DecorationImage(
                              image: AssetImage('assets/logo45.jpg'),
                              fit: BoxFit.cover))),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomRight: Radius.circular(22)),
                          image: DecorationImage(
                              image: AssetImage('assets/logo45.jpg'),
                              fit: BoxFit.cover))),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomRight: Radius.circular(22)),
                          image: DecorationImage(
                              image: AssetImage('assets/logo45.jpg'),
                              fit: BoxFit.cover))),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 120,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomRight: Radius.circular(22)),
                          image: DecorationImage(
                              image: AssetImage('assets/logo45.jpg'),
                              fit: BoxFit.cover))),
                ],
              ),
            ),
          ]),
        )
      ],
    ),
  );
}