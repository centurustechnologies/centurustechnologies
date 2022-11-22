import 'package:centurus_web_app/view/helpers/onhover.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

servicesDesktopMethod(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    padding: EdgeInsets.all(10),
    width: width,
    color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
          child: Text(
            'Services We Provide',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w700,
              color: Colors.black,
              fontSize: 36,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'Credibly grow premier ideas rather than bricks-and-clicks strategic theme areas',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w300,
            color: Color.fromARGB(255, 130, 127, 127),
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          'distributed for stand-alone web-readiness.',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w300,
            color: Color.fromARGB(255, 130, 127, 127),
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          child: ResponsiveGridList(
            listViewBuilderOptions: ListViewBuilderOptions(
                shrinkWrap: true, physics: NeverScrollableScrollPhysics()),
            horizontalGridSpacing: 10,
            horizontalGridMargin: 50,
            verticalGridMargin: 50,
            minItemWidth: 250,
            maxItemsPerRow: 3,
            children: List.generate(
              6,
              (index) => OnHover(builder: (isHovered) {
                return Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 40,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: index == 0
                        ? Colors.amberAccent
                        : index == 1
                            ? Colors.blueAccent
                            : index == 2
                                ? Colors.green
                                : index == 3
                                    ? Colors.red
                                    : index == 4
                                        ? Colors.orange
                                        : Colors.purple,
                  ),
                  // height: 250,
                  //width: 250,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage('assets/logo45.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Text(
                        'Web Development',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 21, 21, 21),
                          fontSize: 23,
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      SizedBox(
                        width: width / 4,
                        child: Text(
                          'Holisticly morph distinctive methodologies and vertical e-tailers. Rapidiously grow customized data.',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: Colors.white.withOpacity(.6),
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    ),
  );
}

servicesMobileMethod(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    padding: EdgeInsets.all(10),
    width: width,
    color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
          child: Text(
            'Services We Provide',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontSize: 22,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          width: width / 1.1,
          child: Text(
            'Credibly grow premier ideas rather than bricks-and-clicks strategic theme areas distributed for stand-alone web-readiness.',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              color: Color.fromARGB(255, 130, 127, 127),
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        SingleChildScrollView(
          child: ResponsiveGridList(
            listViewBuilderOptions: ListViewBuilderOptions(
                shrinkWrap: true, physics: NeverScrollableScrollPhysics()),
            horizontalGridSpacing: 1,
            horizontalGridMargin: 10,
            verticalGridMargin: 50,
            minItemWidth: 250,
            maxItemsPerRow: 3,
            children: List.generate(
              6,
              (index) => Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 1.0,
                child: OnHover(builder: (isHovered) {
                  return Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: index == 0
                            ? Colors.amber
                            : index == 1
                                ? Colors.blue
                                : index == 2
                                    ? Colors.yellow
                                    : index == 3
                                        ? Colors.red
                                        : index == 4
                                            ? Colors.pink
                                            : Colors.yellow),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage('assets/logo45.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Text(
                          'Web Development',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 21, 21, 21),
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        SizedBox(
                          width: width / 1.1,
                          child: Text(
                            'Holisticly morph distinctive methodologies and vertical e-tailers. Rapidiously grow customized data.',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              color: Color.fromARGB(255, 130, 127, 127),
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
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
