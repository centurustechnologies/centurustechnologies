import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

whyJoinUs(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    width: width,
    //height: 600,
    color: const Color.fromARGB(255, 238, 236, 236),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
      child: Column(
        children: [
          Text(
            'Why Join Us',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              color: Colors.blue,
              fontSize: 19,
            ),
          ),
          Text(
            'Great Working Environment',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w800,
              color: Colors.black,
              fontSize: 38,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            width: width / 2.5,
            child: Text(
              'Revolutionary paradigms before enabled interfaces dynamically transition technically sound paradigms with cutting-edge initiatives.',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                color: Colors.grey,
                fontSize: 16,
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
                  child: _blog3(context),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

_blog3(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Container(
      //height: 260,
      padding: const EdgeInsets.all(40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/house2.png'), fit: BoxFit.cover)),
          ),
          const SizedBox(
            width: 25,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Remote Working Facilities',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 21,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: width / 3,
                child: Text(
                  'Credibly syndicate enterprise total linkage whereas cost effective innovate state of the art data without multifunctional.',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ));
}
