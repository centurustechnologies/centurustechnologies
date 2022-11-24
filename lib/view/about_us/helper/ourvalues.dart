import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ourValuesDesktopMethod(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  var height = MediaQuery.of(context).size.height;
  return Container(
    width: width,
    height: height,
    color: const Color.fromARGB(255, 249, 245, 245),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            width: width / 2,
            color: const Color.fromARGB(255, 249, 245, 245),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(90, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Our Values',
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 4, 71, 126),
                      fontSize: 19,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    width: 650,
                    child: Text(
                      'The Core Values that Drive Everything',
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                        fontSize: 38,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 650,
                    child: Text(
                      'Quickly incubate functional channels with multidisciplinary architectures. Authoritatively fabricate formulate exceptional innovation.',
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w400,
                        color: const Color.fromARGB(255, 89, 87, 87),
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pixel Perfect Design',
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 19,
                            ),
                          ),
                          const SizedBox(
                            height: 11,
                          ),
                          SizedBox(
                            width: 550,
                            child: Text(
                              'Progressively foster enterprise-wide systems whereas equity invested web-readiness harness installed.',
                              style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 89, 87, 87),
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Unique & Minimal Design',
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 19,
                            ),
                          ),
                          const SizedBox(
                            height: 11,
                          ),
                          SizedBox(
                            width: 550,
                            child: Text(
                              'Dramatically administrate progressive metrics without error-free globally simplify standardized engineer efficient strategic.',
                              style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 89, 87, 87),
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Efficiency & Accountability',
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 19,
                            ),
                          ),
                          const SizedBox(
                            height: 11,
                          ),
                          SizedBox(
                            width: 550,
                            child: Text(
                              'Objectively transition prospective collaboration and idea-sharing without focused maintain focused niche markets niches.',
                              style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 89, 87, 87),
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
            child: SizedBox(
              width: width / 2,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(150, 0, 0, 0),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      width: width / 3,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage('assets/tttt1.jpg'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Positioned(
                    bottom: 270,
                    right: 400,
                    child: Container(
                      height: 55,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.check_box,
                            color: Color.fromARGB(255, 13, 112, 194),
                            size: 28.0,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Create a Free Account',
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 200,
                    right: 400,
                    child: Container(
                      height: 55,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.check_box,
                            color: Color.fromARGB(255, 13, 112, 194),
                            size: 28.0,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Install Our Tracking Pixel',
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 130,
                    right: 400,
                    child: Container(
                      height: 55,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.check_box,
                            color: Color.fromARGB(255, 13, 112, 194),
                            size: 28.0,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Start Tracking your Website',
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
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
