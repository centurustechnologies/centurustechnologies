import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

everything(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    padding: const EdgeInsets.all(50),
    width: width,
    child: Column(
      children: [
        Text(
          'Everything We Do it With Love',
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w700, color: Colors.black, fontSize: 40),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          width: width / 2.2,
          child: Text(
            'Progressively deploy market positioning catalysts for change and technically sound authoritatively e-enable resource-leveling infrastructures.',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                color: const Color.fromARGB(255, 94, 93, 93),
                fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        SingleChildScrollView(
          child: ResponsiveGridList(
              listViewBuilderOptions: ListViewBuilderOptions(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics()),
              horizontalGridSpacing: 40,
              horizontalGridMargin: 5,
              verticalGridMargin: 0,
              verticalGridSpacing: 20,
              minItemWidth: 250,
              maxItemsPerRow: 3,
              minItemsPerRow: 1,
              children: [contain(context), contain(context), contain(context)]),
        ),
      ],
    ),
  );
}

contain(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    //height: 300,
    width: 300,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(color: Colors.blue, spreadRadius: 0.5, blurRadius: 2),
        ]),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '150+',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700, color: Colors.black, fontSize: 40),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Completed Projects',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, color: Colors.black, fontSize: 19),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: width / 3.3,
            child: Text(
              'Rapidiously embrace distinctive best practices after B2B syndicate.',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  color: const Color.fromARGB(255, 124, 123, 123),
                  fontSize: 16),
            ),
          )
        ],
      ),
    ),
  );
}
