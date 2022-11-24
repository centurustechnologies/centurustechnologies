import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

import '../../helpers/onhover.dart';

ourTeamDesktopMethod(BuildContext context) {
  var width = MediaQuery.of(context).size.width;

  return Container(
    width: width,
    padding: const EdgeInsets.all(10),
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
      child: Column(
        children: [
          Text(
            'Our Team',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              color: Colors.blue,
              fontSize: 18,
            ),
          ),
          Text(
            'The People Behind Quiety',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w800,
              color: mainColor,
              fontSize: 38,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          SizedBox(
            width: width / 2.4,
            child: Text(
              'Intrinsicly strategize cutting-edge before interoperable applications incubate extensive expertise through integrated intellectual capital.',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                color: const Color.fromARGB(255, 89, 87, 87),
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SingleChildScrollView(
            child: ResponsiveGridList(
              listViewBuilderOptions: ListViewBuilderOptions(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics()),
              horizontalGridSpacing: 30,
              horizontalGridMargin: 100,
              verticalGridMargin: 50,
              verticalGridSpacing: 30,
              minItemWidth: 200,
              minItemsPerRow: 1,
              maxItemsPerRow: 4,
              children: List.generate(
                8,
                (index) => _ourWork(),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

_ourWork() {
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
    child: Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OnHover(builder: (isHovered) {
          return Container(
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: AssetImage('assets/blog-2.jpg'), fit: BoxFit.cover)),
          );
        }),
        const SizedBox(
          height: 14,
        ),
        Text(
          'John Sullivan',
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.w700,
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'Front End Developer',
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.w400,
            color: Colors.grey,
            fontSize: 14,
          ),
        )
      ],
    ),
  );
}
