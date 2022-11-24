import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

jobs(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    width: width,
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(30, 120, 0, 0),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Our Jobs',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 19,
                  ),
                ),
                SizedBox(
                  width: width / 3,
                  child: Text(
                    'Current Available Positions at Quiety',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      color: mainColor,
                      fontSize: 39,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
              child: SizedBox(
                width: width / 2,
                child: Text(
                  'Phosfluorescently disintermediate revolutionary paradigms before enabled interfaces. Dynamically transition skills vis-a-vis virtual customer service via impactful partnerships with technically sound paradigms with cutting-edge initiatives.',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 82, 80, 80),
                    fontSize: 16,
                  ),
                ),
              ),
            )
          ],
        ),
        SingleChildScrollView(
          child: ResponsiveGridList(
            listViewBuilderOptions: ListViewBuilderOptions(
                shrinkWrap: true, physics: NeverScrollableScrollPhysics()),
            horizontalGridSpacing: 30,
            horizontalGridMargin: 70,
            verticalGridMargin: 50,
            minItemWidth: 200,
            minItemsPerRow: 1,
            maxItemsPerRow: 2,
            children: List.generate(
              4,
              (index) => Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(21)),
                elevation: 2.0,
                child: _blog2(context),
              ),
            ),
          ),
        ),
      ]),
    ),
  );
}

_blog2(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    height: 260,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(14),
      color: mainColor,
    ),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 5, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 13,
                  ),
                  Row(
                    children: [
                      Container(height: 20,width: 20,  decoration: BoxDecoration( image: DecorationImage(
                                  image: AssetImage('assets/purse.png'),
                                   fit: BoxFit.cover))),SizedBox(width: 6,),
                      SizedBox(
                        width: width / 4.7,
                        child: Text(
                          'Remote-Full-Time',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 206, 201, 201),
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: width / 4.7,
                    child: Text(
                      'jr Fronteng Devloper',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [  Container(height: 20,width: 20,  decoration: BoxDecoration( image: DecorationImage(
                                  image: AssetImage('assets/apartment.png'),
                                   fit: BoxFit.cover))),SizedBox(width: 6,),
                          Text(
                            'Centurus',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 206, 201, 201),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Row(
                         children: [  Container(height: 20,width: 20,  decoration: BoxDecoration( image: DecorationImage(
                                 image: AssetImage('assets/location.png'),
                                 fit: BoxFit.cover))),SizedBox(width: 6,),
                                   //Icon(Icons.location_disabled_rounded,color: Colors.white,),
                          Text(
                            'Ludhiana',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 206, 201, 201),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Row(
                        children: [Container(height: 20,width: 20,  decoration: BoxDecoration( image: DecorationImage(
                                 image: AssetImage('assets/wallet.png'),
                                 fit: BoxFit.cover))),SizedBox(width: 6,),
                          Text(
                            '(35-55)k',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 206, 201, 201),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 44,
                  ),
                  MaterialButton(
                    color: mainColor,
                    // hoverColor: Colors.blue,
                    height: 50,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Apply Now',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 206, 201, 201),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 60, 0, 0),
            child: Material(
              borderRadius: BorderRadius.circular(11),
              color: Colors.blue.withOpacity(0.4),
              child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(14, 6, 14, 8),
                        child: Text(
                          'Developer',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 235, 230, 230),
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    ),
  );
}
