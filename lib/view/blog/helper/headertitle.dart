import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

headerTitle(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    width: width,
    decoration: BoxDecoration(
      color: mainColor,
    ),
    child: Stack(
      children: [
        Image.asset(
          'assets/page-header-bg.png',
          fit: BoxFit.contain,
        ),
        Center(
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
                  child: Text(
                    'Our Latest News and Blogs',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                        fontSize: 40),
                  )),
              SizedBox(
                height: 9,
              ),
              SizedBox(
                width: width / 2,
                child: Text(
                  'Completely integrate equity invested partnerships without revolutionary systems. Monotonectally network pandemic e-services via bricks-and-clicks information.',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 190, 187, 187),
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      color: Colors.blue.withOpacity(0.2),
                      hoverColor: Colors.blue,
                      height: 50,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Contact us',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                   MaterialButton(
                      color: Colors.blue.withOpacity(0.2),
                      hoverColor: Colors.blue,
                      height: 50,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.blue,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Terms & condition',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
