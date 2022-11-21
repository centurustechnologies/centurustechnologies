import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

import 'onhover.dart';

serviceWeProDesktopMethod(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    width: width,
    padding: EdgeInsets.all(10),
    color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 80,
        ),
        Text(
          'With all the Features You Need',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 15, 15, 15),
            fontSize: 27,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Credibly grow premier ideas rather than bricks-and-clicks strategic theme areas',
          style: TextStyle(
            fontWeight: FontWeight.w200,
            color: Color.fromARGB(255, 138, 133, 133),
            fontSize: 19,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'distributed for stand-alone web-readiness.',
          style: TextStyle(
            fontWeight: FontWeight.w200,
            color: Color.fromARGB(255, 138, 133, 133),
            fontSize: 19,
          ),
        ),
        SizedBox(
          height: 100,
        ),
        SingleChildScrollView(
          child: ResponsiveGridList(
            listViewBuilderOptions: ListViewBuilderOptions(
                shrinkWrap: true, physics: NeverScrollableScrollPhysics()),
            horizontalGridSpacing: 10,
            horizontalGridMargin: 100,
            verticalGridMargin: 50,
            minItemWidth: 200,
            minItemsPerRow: 1,
            maxItemsPerRow: 3,
            children: List.generate(
              3,
              (index) => Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 2.0,
                child: OnHover(builder: (isHovered) {
                  return Container(
                    height: 300,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Color.fromARGB(255, 3, 73, 131),  image: DecorationImage(
                                    image: AssetImage('assets/shield.png'),
                                    fit: BoxFit.cover)
                              )),
                          SizedBox(
                            height: 35,
                          ),
                          Text(
                            'Good Performance',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 15, 15, 15),
                              fontSize: 19,
                            ),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          Text(
                            'Appropriately grow competitive leadership.',
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              color: Color.fromARGB(255, 138, 133, 133),
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            'rather than strategic technically sound',
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              color: Color.fromARGB(255, 138, 133, 133),
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'processes without state.',
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              color: Color.fromARGB(255, 138, 133, 133),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ),
        SingleChildScrollView(
          child: ResponsiveGridList(
              listViewBuilderOptions: ListViewBuilderOptions(
                  shrinkWrap: true, physics: NeverScrollableScrollPhysics()),
              horizontalGridSpacing: 30,
              horizontalGridMargin: 100,
              verticalGridMargin: 50,
              minItemWidth: 200,
              minItemsPerRow: 1,
              maxItemsPerRow: 2,
              children: [
                Container(
                  height: 250,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 245, 195, 213),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 5, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Utilize your software data',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                SizedBox(
                                  child: Text(
                                    'Progressively reinvent models and niche',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w300,
                                      color: Color.fromARGB(255, 92, 90, 90),
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'revolutionary benefits for integrated niches.',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w300,
                                    color: Color.fromARGB(255, 92, 90, 90),
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Material(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 182, 218, 247),
                                  child: GestureDetector(
                                      onTap: () {},
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                34, 5, 34, 7),
                                            child: Text(
                                              'Start',
                                              style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                              ]),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                            height: 230,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Color.fromARGB(255, 245, 195, 213),
                                image: DecorationImage(
                                    image: AssetImage('assets/man.png'),
                                    fit: BoxFit.cover))),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 250,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 182, 218, 247),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 5, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Utilize your software data',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                SizedBox(
                                  child: Text(
                                    'Progressively reinvent models and niche',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w300,
                                      color: Color.fromARGB(255, 92, 90, 90),
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'revolutionary benefits for integrated niches.',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w300,
                                    color: Color.fromARGB(255, 92, 90, 90),
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Material(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 245, 195, 213),
                                  child: GestureDetector(
                                      onTap: () {},
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                34, 5, 34, 7),
                                            child: Text(
                                              'Start',
                                              style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                              ]),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                            height: 230,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Color.fromARGB(255, 182, 218, 247),
                                image: DecorationImage(
                                    image: AssetImage('assets/man2.png'),
                                    fit: BoxFit.cover))),
                      ],
                    ),
                  ),
                ),
              ]),
        ),
      ],
    ),
  );
}

serviceWeProvideMobileMethod(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    width: width,
    padding: EdgeInsets.all(10),
    color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 40,
        ),
        Text(
          'With all the Features You Need',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 15, 15, 15),
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: SizedBox(
            width: width / 1.1,
            child: Text(
              'Credibly grow premier ideas rather than bricks-and-clicks strategic theme areasdistributed for stand-alone web-readiness.',
              style: TextStyle(
                fontWeight: FontWeight.w200,
                color: Color.fromARGB(255, 66, 60, 60),
                fontSize: 17,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        SingleChildScrollView(
          child: ResponsiveGridList(
            listViewBuilderOptions: ListViewBuilderOptions(
                shrinkWrap: true, physics: NeverScrollableScrollPhysics()),
            horizontalGridSpacing: 10,
            horizontalGridMargin: 10,
            verticalGridMargin: 50,
            minItemWidth: 200,
            minItemsPerRow: 1,
            maxItemsPerRow: 3,
            children: List.generate(
              3,
              (index) => Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: OnHover(builder: (isHovered) {
                  return Container(
                    height: 300,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                   color: Color.fromARGB(255, 3, 73, 131),  image: DecorationImage(
                                    image: AssetImage('assets/shield.png'),
                                    fit: BoxFit.cover))),
                          SizedBox(
                            height: 35,
                          ),
                          Text(
                            'Good Performance',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 15, 15, 15),
                              fontSize: 19,
                            ),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          SizedBox(
                            width: width / 1.2,
                            child: Text(
                              'Appropriately grow competitive leadership.rather than strategic technically sound processes without state.',
                              style: TextStyle(
                                fontWeight: FontWeight.w200,
                                color: Color.fromARGB(255, 54, 52, 52),
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ),
        SingleChildScrollView(
          child: ResponsiveGridList(
              listViewBuilderOptions: ListViewBuilderOptions(
                  shrinkWrap: true, physics: NeverScrollableScrollPhysics()),
              horizontalGridSpacing: 10,
              horizontalGridMargin: 10,
              verticalGridMargin: 50,
              minItemWidth: 200,
              minItemsPerRow: 1,
              maxItemsPerRow: 3,
              children: [
                Container(
                  height: 220,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 245, 195, 213),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 5, 0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Utilize your software data',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w800,
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Progressively reinvent models and niche revolutionary benefits for integrated niches.',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 92, 90, 90),
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Material(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 182, 218, 247),
                                child: GestureDetector(
                                    onTap: () {},
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              24, 3, 24, 5),
                                          child: Text(
                                            'Start',
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                  height: 120,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Color.fromARGB(255, 245, 195, 213),
                                      image: DecorationImage(
                                          image: AssetImage('assets/man.png'),
                                          fit: BoxFit.cover))),
                            ],
                          )
                        ]),
                  ),
                ),
                Container(
                  height: 220,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 182, 218, 247),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 5, 0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Utilize your software data',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w800,
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Progressively reinvent models and niche revolutionary benefits for integrated niches.',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 92, 90, 90),
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Material(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(255, 245, 195, 213),
                                child: GestureDetector(
                                    onTap: () {},
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              24, 3, 24, 5),
                                          child: Text(
                                            'Start',
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                  height: 120,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Color.fromARGB(255, 182, 218, 247),
                                      image: DecorationImage(
                                          image: AssetImage('assets/man2.png'),
                                          fit: BoxFit.cover))),
                            ],
                          )
                        ]),
                  ),
                )
              ]),
        ),
      ],
    ),
  );
}
serviceWeProvideTabletMethod(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    width: width,
    padding: EdgeInsets.all(10),
    color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 40,
        ),
        Text(
          'With all the Features You Need',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 15, 15, 15),
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: SizedBox(
            width: width / 1.1,
            child: Text(
              'Credibly grow premier ideas rather than bricks-and-clicks strategic theme areasdistributed for stand-alone web-readiness.',
              style: TextStyle(
                fontWeight: FontWeight.w200,
                color: Color.fromARGB(255, 66, 60, 60),
                fontSize: 17,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        SingleChildScrollView(
          child: ResponsiveGridList(
            listViewBuilderOptions: ListViewBuilderOptions(
                shrinkWrap: true, physics: NeverScrollableScrollPhysics()),
            horizontalGridSpacing: 10,
            horizontalGridMargin: 10,
            verticalGridMargin: 50,
            minItemWidth: 200,
            minItemsPerRow: 1,
            maxItemsPerRow: 3,
            children: List.generate(
              3,
              (index) => Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: OnHover(builder: (isHovered) {
                  return Container(
                    height: 300,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                   color: Color.fromARGB(255, 3, 73, 131),  image: DecorationImage(
                                    image: AssetImage('assets/shield.png'),
                                    fit: BoxFit.cover))),
                          SizedBox(
                            height: 35,
                          ),
                          Text(
                            'Good Performance',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 15, 15, 15),
                              fontSize: 19,
                            ),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          SizedBox(
                            width: width / 1.2,
                            child: Text(
                              'Appropriately grow competitive leadership.rather than strategic technically sound processes without state.',
                              style: TextStyle(
                                fontWeight: FontWeight.w200,
                                color: Color.fromARGB(255, 54, 52, 52),
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ),
       SingleChildScrollView(
          child: ResponsiveGridList(
              listViewBuilderOptions: ListViewBuilderOptions(
                  shrinkWrap: true, physics: NeverScrollableScrollPhysics()),
              horizontalGridSpacing: 10,
              horizontalGridMargin: 5,
              verticalGridMargin: 20,
              minItemWidth: 200,
              minItemsPerRow: 1,
              maxItemsPerRow: 2,
              children: [
                Container(
                  height: 210,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 245, 195, 213),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 5, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Utilize your software data',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                SizedBox(
                                  child: Text(
                                    'Progressively reinvent models and niche',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w300,
                                      color: Color.fromARGB(255, 92, 90, 90),
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'revolutionary benefits for integrated niches.',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w300,
                                    color: Color.fromARGB(255, 92, 90, 90),
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Material(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 182, 218, 247),
                                  child: GestureDetector(
                                      onTap: () {},
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                34, 5, 34, 7),
                                            child: Text(
                                              'Start',
                                              style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                              ]),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,70, 0,0),
                          child: Container(
                              height: 120,
                              width: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Color.fromARGB(255, 245, 195, 213),
                                  image: DecorationImage(
                                      image: AssetImage('assets/man.png'),
                                      fit: BoxFit.cover))),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 210,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 182, 218, 247),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 5, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Utilize your software data',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                SizedBox(
                                  child: Text(
                                    'Progressively reinvent models and niche',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w300,
                                      color: Color.fromARGB(255, 92, 90, 90),
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'revolutionary benefits for integrated niches.',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w300,
                                    color: Color.fromARGB(255, 92, 90, 90),
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Material(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 245, 195, 213),
                                  child: GestureDetector(
                                      onTap: () {},
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                34, 5, 34, 7),
                                            child: Text(
                                              'Start',
                                              style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                              ]),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 70, 0,0),
                          child: Container(
                              height: 120,
                              width: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Color.fromARGB(255, 182, 218, 247),
                                  image: DecorationImage(
                                      image: AssetImage('assets/man2.png'),
                                      fit: BoxFit.cover))),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
        ),
      ],
    ),
  );
}