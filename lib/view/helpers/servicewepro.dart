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
                  elevation: 5.0,
                  child: OnHover(builder: (isHovered) {
                    return Container(
                      height: 300,

                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 40, 0,0),
                        child: Column(
                          
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.amber,
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
            width: width/1.1,
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
              horizontalGridMargin:10 ,
              verticalGridMargin: 50,
              minItemWidth: 200,
              minItemsPerRow: 1,
              maxItemsPerRow: 3,
              children: List.generate(
                3,
                (index) => Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 5.0,
                  child: OnHover(builder: (isHovered) {
                    return Container(
                      height: 300,

                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 40, 0,0),
                        child: Column(
                          
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.amber,
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
                SizedBox(
                  width: width/1.2,
                  child: Text(
                    'Appropriately grow competitive leadership.rather than strategic technically sound processes without state.',
                    style: TextStyle(
                          fontWeight: FontWeight.w200,
                          color: Color.fromARGB(255, 54, 52, 52),
                          fontSize: 16,
                    ),textAlign: TextAlign.center,
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
      ],
    ),
  );
}