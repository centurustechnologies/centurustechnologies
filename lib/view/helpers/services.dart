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
            horizontalGridSpacing: 3,
            horizontalGridMargin: 50,
            verticalGridMargin: 50,
            minItemWidth: 250,
            maxItemsPerRow: 3,
            children: List.generate(
              6,
              (index) => Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 3.0,
                child: OnHover(builder: (isHovered) {
                  return Container(
                    color: Color.fromARGB(255, 249, 228, 228),
                    height: 250,
                    width: 250,
                   
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
                            fontSize: 23,
                          ),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        Text(
                          'Holisticly morph distinctive methodologies',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300,
                            color: Color.fromARGB(255, 130, 127, 127),
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        Text(
                          'and vertical e-tailers. Rapidiously grow',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300,
                            color: Color.fromARGB(255, 130, 127, 127),
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        Text(
                          'customized data.',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300,
                            color: Color.fromARGB(255, 130, 127, 127),
                            fontSize: 16,
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
          width: width/1.1,
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
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromARGB(255, 249, 228, 228),),
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
                          width: width/1.1,
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
