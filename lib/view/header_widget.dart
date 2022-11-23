import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:centurus_web_app/view/navBar/desktop_navBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
    required this.width,
    required this.scaffoldKey,
  }) : super(key: key);

  final double width;
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 60,
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: const Image(
                  image: AssetImage('assets/logo.png'),
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Centurus Technologies Pvt. ltd.',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Grow with Centurus',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          ScreenTypeLayout(
            mobile: Builder(
              builder: (context) {
                return MaterialButton(
                  padding: EdgeInsets.zero,
                  minWidth: 0,
                  height: 0,
                  onPressed: () => scaffoldKey.currentState!.openEndDrawer(),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(
                      Icons.menu,
                      color: whiteColor,
                    ),
                  ),
                );
              },
            ),
            tablet: Builder(
              builder: (context) {
                return MaterialButton(
                  padding: EdgeInsets.zero,
                  minWidth: 0,
                  height: 0,
                  onPressed: () => scaffoldKey.currentState!.openEndDrawer(),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(
                      Icons.menu,
                      color: whiteColor,
                    ),
                  ),
                );
              },
            ),
            desktop: const DesktopNavbar(),
          ),
        ],
      ),
    );
  }
}
