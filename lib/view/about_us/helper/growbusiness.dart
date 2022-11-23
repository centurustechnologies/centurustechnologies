import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

growBussinessDesktopMethod(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  var height = MediaQuery.of(context).size.height;
  var orientation;
  return Column(children: [
    Stack(children: [
      Column(children: [
        Container(
          width: width,
          height: 800,
          color: mainColor,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(100, 80, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: width / 3,
                      child: Text(
                        'Grow your Business & Customer Satisfaction with Quiety',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          fontSize: 40,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: width / 2.6,
                      child: Text(
                        'Dynamically disintermediate technically sound technologies with compelling quality vectors error-free communities.',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 19,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                          ),
                          child: MaterialButton(
                            onPressed: () {},
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18),
                              child: Text(
                                'Open Position',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 2, 50, 90),
                          ),
                          child: MaterialButton(
                            onPressed: () {},
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: Text(
                                'Meet Our Team',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 100,
                ),
                Container(
                  width: width / 2.5,
                  height: 400,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/ttt2.jpg'),
                          fit: BoxFit.cover)),
                )
              ],
            ),
          ),
        ),
        Container(
          // height: 1000,
          padding: EdgeInsets.symmetric(vertical: 30),
          width: width,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(100, 300, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height / 1.25,
                  width: width / 2.5,
                  // color: Colors.black,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey.withOpacity(0.1),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueGrey.withOpacity(0.1),
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: ResponsiveGridList(
                    horizontalGridSpacing:
                        0.5, // Horizontal space between grid items
                    verticalGridSpacing:
                        0.5, // Vertical space between grid items
                    horizontalGridMargin:
                        0.5, // Horizontal space around the grid
                    verticalGridMargin: 0.5, // Vertical space around the grid
                    minItemWidth:
                        300, // The minimum item width (can be smaller, if the layout constraints are smaller)
                    minItemsPerRow:
                        2, // The minimum items to show in a single row. Takes precedence over minItemWidth
                    maxItemsPerRow:
                        5, // The maximum items to show in a single row. Can be // Options that are getting passed to the SliverChildBuilderDelegate() function
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                        color: Colors.white,
                        child: Center(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '550K+',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.green,
                                    fontSize: 45,
                                  ),
                                ),
                                Text(
                                  'Active User',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 150,
                        color: Colors.white,
                        child: Center(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '250+',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.blue,
                                    fontSize: 45,
                                  ),
                                ),
                                Text(
                                  'Team Members',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 150,
                        color: Colors.white,
                        child: Center(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '855+',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.amber,
                                    fontSize: 45,
                                  ),
                                ),
                                Text(
                                  'Projects Completed',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 150,
                        color: Colors.white,
                        child: Center(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "₹20M+",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.red,
                                    fontSize: 45,
                                  ),
                                ),
                                Text(
                                  'Revenue Per/Year',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 150,
                        color: Colors.white,
                        child: Center(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '8 Years',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.purple,
                                    fontSize: 45,
                                  ),
                                ),
                                Text(
                                  'In Business',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 150,
                        color: Colors.white,
                        child: Center(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '425+',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.orange,
                                    fontSize: 45,
                                  ),
                                ),
                                Text(
                                  'Clients Worldwide',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ], // The list of widgets in the list
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: width / 3,
                      child: Text(
                        'Our Story',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: Colors.blue,
                          fontSize: 21,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width / 3,
                      child: Text(
                        'A Great Story Starts with a Friendly Team',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w800,
                          color: mainColor,
                          fontSize: 40,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: width / 2.7,
                      child: Text(
                        'Globally e-enable principle-centered e-business before dynamic quality vectors cross-media materials before proactive outsourcing leverage others vertical technology leadership.',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 93, 91, 91),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'We Are Awarded By-',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: mainColor,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage('assets/bmw.png'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          height: 100,
                          width: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                              image: DecorationImage(
                                  image: AssetImage('assets/mahindra.png'),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
      Positioned(
        bottom: 750,
        right: 100,
        child: Container(
          height: 400,
          width: width / 2,
          decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage('assets/ttt2.jpg'), fit: BoxFit.cover)),
        ),
      ),
      Positioned(
        bottom: 800,
        left: 96,
        child: Container(
          height: 450,
          width: 450,
          decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage('assets/tttt1.jpg'), fit: BoxFit.cover)),
        ),
      ),
    ])
  ]);
}
