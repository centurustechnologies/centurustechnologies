import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:centurus_web_app/view/helpers/onhover.dart';
import 'package:centurus_web_app/view/viewus/helper/viewus.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

servicesDesktopMethod(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    padding: const EdgeInsets.fromLTRB(60, 100, 30, 70),
    width: width,
    color: headingColor.withOpacity(0.1),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              //height: 616,
              //padding:EdgeInsets.fromLTRB(0, 30, 0, 0),
              width: 440,
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 40,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 10),
                        ],
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(255, 201, 221, 238)),
                    child: Image.asset(
                      'assets/house2.png',
                      fit: BoxFit.cover,
                      height: 35,
                      width: 35,
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Web Development',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  SizedBox(
                    width: width / 4,
                    child: Text(
                      'Holisticly morph distinctive methodologies and vertical e-tailers. Rapidiously grow customized data.',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  SizedBox(
                    width: width / 4,
                    child: Text(
                      'Professionally architect unique process improvements via optimal.',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    'Include with.....',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 21, 21, 21),
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  includeUs(),
                  const SizedBox(
                    height: 12,
                  ),
                  includeUs(),
                  const SizedBox(
                    height: 12,
                  ),
                  includeUs(),
                  const SizedBox(
                    height: 12,
                  ),
                  includeUs(),
                  const SizedBox(
                    height: 12,
                  ),
                  includeUs(),
                  const SizedBox(
                    height: 12,
                  ),
                  includeUs(),
                  const SizedBox(
                    height: 25,
                  ),
                  MaterialButton(
                    //color: Colors.blue.withOpacity(0.2),
                    //hoverColor: Colors.blue,
                    height: 50,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    onPressed: () {},

                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'View Details',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 35,
            ),
            SizedBox(
              width: width / 1.7,
              child: SingleChildScrollView(
                child: ResponsiveGridList(
                    listViewBuilderOptions: ListViewBuilderOptions(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics()),
                    horizontalGridSpacing: 40,
                    horizontalGridMargin: 5,
                    verticalGridMargin: 0,
                    verticalGridSpacing: 20,
                    minItemWidth: 250,
                    maxItemsPerRow: 2,
                    minItemsPerRow: 1,
                    children: [
                      child2(context),
                      child2(context),
                      child2(context),
                      child2(context),
                    ]),
              ),
            ),
          ]),
    ),
  );
}

includeUs() {
  return Row(
    children: [
      Container(
        height: 17,
        width: 17,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 134, 193, 242)),
        child: const Icon(
          Icons.check,
          color: Colors.black,
          size: 14.0,
        ),
      ),
      const SizedBox(
        width: 9,
      ),
      Text(
        'Digital Confrence',
        style: GoogleFonts.openSans(
          fontWeight: FontWeight.w400,
          color: Colors.black,
          fontSize: 15,
        ),
      ),
      const SizedBox(
        height: 11,
      )
    ],
  );
}

child2(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    padding: const EdgeInsets.symmetric(
      horizontal: 30,
      vertical: 40,
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12), color: Colors.white),
    // height: 250,
    //width: 250,

    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 10),
          ], shape: BoxShape.circle, color: Color.fromARGB(255, 201, 221, 238)),
          child: Image.asset(
            'assets/house2.png',
            fit: BoxFit.cover,
            height: 35,
            width: 35,
          ),
        ),
        SizedBox(
          height: 18,
        ),
        Text(
          'Web Development',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontSize: 20,
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
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        MaterialButton(
          //color: Colors.blue.withOpacity(0.2),
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
              'View Detail',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontSize: 15,
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
    padding: const EdgeInsets.all(10),
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
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          width: width / 1.1,
          child: Text(
            'Credibly grow premier ideas rather than bricks-and-clicks strategic theme areas distributed for stand-alone web-readiness.',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              color: const Color.fromARGB(255, 130, 127, 127),
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        SingleChildScrollView(
          child: ResponsiveGridList(
            listViewBuilderOptions: ListViewBuilderOptions(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics()),
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
                        const SizedBox(
                          height: 25,
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: AssetImage('assets/logo45.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Text(
                          'Web Development',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            color: const Color.fromARGB(255, 21, 21, 21),
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 11,
                        ),
                        SizedBox(
                          width: width / 1.1,
                          child: Text(
                            'Holisticly morph distinctive methodologies and vertical e-tailers. Rapidiously grow customized data.',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              color: const Color.fromARGB(255, 130, 127, 127),
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
