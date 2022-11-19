import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

import 'onhover.dart';

const LatLng currentLocation = LatLng(25.1193, 55.3773);

Footer(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  var floatingActionButton;
  return Container(
    padding: EdgeInsets.all(10),
    width: width,
    color: mainColor,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Center(
            child: SingleChildScrollView(
              child: ResponsiveGridList(
                  listViewBuilderOptions: ListViewBuilderOptions(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics()),
                  horizontalGridSpacing: 2,
                  horizontalGridMargin: 10,
                  verticalGridMargin: 2,
                  minItemWidth: 300,
                  minItemsPerRow: 1,
                  maxItemsPerRow: 4,
                  children: [
                    Container(
                      height: 365,
                      color: mainColor,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "About Us",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 28,
                            ),
                            SizedBox(
                              width: 200,
                              child: Text(
                                "We are leading IT company dealing with app development & design, web development & design services. We had 3+ years of experience in development field and done more than 20+ projects. We work on iOS, android device's app development.",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w200,
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 50,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/logo.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Centurus Technologies Pvt. Ltd.",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 360,
                      color: mainColor,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Contact Info",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 28,
                            ),
                            SizedBox(
                              width: 200,
                              child: Text(
                                'Adress:Pwd Market, Division No. 6, SCO 18-19, Dholewal Chowk, Ludhiana, Punjab 141003',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w200,
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Phone No +91-7719767557',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w200,
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'anil337228@gmail.com',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w200,
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 360,
                      color: mainColor,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Important Links",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "Home",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 182, 172, 172),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "About Us",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 182, 172, 172),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "Our Services",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 182, 172, 172),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "Privacy Policy",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 182, 172, 172),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                "Terms & Condition",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 182, 172, 172),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 360,
                      color: mainColor,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Location",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 28,
                            ),
                            Container(
                              height: 150,
                              width: 220,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.amber),
                              child: GoogleMap(
                                initialCameraPosition:
                                    CameraPosition(target: currentLocation),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ]),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 1,
            width: width,
            color: Colors.white.withOpacity(0.1),
          ),
        ),
        SingleChildScrollView(
          child: ResponsiveGridList(
            listViewBuilderOptions: ListViewBuilderOptions(
                shrinkWrap: true, physics: NeverScrollableScrollPhysics()),
            // horizontalGridSpacing: 200,
            // horizontalGridMargin: 20,
            verticalGridMargin: 10,
            minItemWidth: 300,
            minItemsPerRow: 1,
            maxItemsPerRow: 2,
            rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Text(
                  "Copyright @2022 all rights reserved | Anil",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    color: Colors.white.withOpacity(0.3),
                    fontSize: 14,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 25,
                      width: 25,
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: new DecorationImage(
                            image: new AssetImage("assets/facebook.png"),
                            fit: BoxFit.fill,
                          ))),
                  SizedBox(
                    width: width / 150,
                  ),
                  Container(
                      height: 25,
                      width: 25,
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: new DecorationImage(
                            image: new AssetImage("assets/linked.png"),
                            fit: BoxFit.fill,
                          ))),
                  SizedBox(
                    width: width / 150,
                  ),
                  Container(
                      height: 25,
                      width: 25,
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: new DecorationImage(
                            image: new AssetImage("assets/twitter.png"),
                            fit: BoxFit.fill,
                          ))),
                  SizedBox(
                    width: width / 150,
                  ),
                  Container(
                      height: 25,
                      width: 25,
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: new DecorationImage(
                            image: new AssetImage("assets/insta.png"),
                            fit: BoxFit.fill,
                          ))),
                  SizedBox(
                    width: width / 150,
                  ),
                  Container(
                      height: 25,
                      width: 25,
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: new DecorationImage(
                            image: new AssetImage("assets/tumblr.png"),
                            fit: BoxFit.fill,
                          ))),
                  SizedBox(
                    width: width / 150,
                  ),
                  Container(
                      height: 25,
                      width: 25,
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: new DecorationImage(
                            image: new AssetImage("assets/my-business.png"),
                            fit: BoxFit.fill,
                          ))),
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}
