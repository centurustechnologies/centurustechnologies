import 'package:carousel_slider/carousel_slider.dart';
import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

portFolioDesktopMethod(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    width: width,
    height: 700,
    color: hoverColor,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 80,
        ),
        Text(
          'Our Projects',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            color: Colors.blue,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'The Project With Quiety',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w800,
            color: mainColor,
            fontSize: 37,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Intrinsicly strategize cutting-edge before interoperable applications incubate',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w300,
            color: const Color.fromARGB(255, 98, 96, 96),
            fontSize: 17,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'extensive expertise through integrated intellectual capital.',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w300,
            color: const Color.fromARGB(255, 15, 15, 15),
            fontSize: 17,
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        CarouselSlider(
          options: CarouselOptions(
              height: 300,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              viewportFraction: 0.3,
              aspectRatio: 1.0,
              initialPage: 0,
              pauseAutoPlayInFiniteScroll: true,
              autoPlayInterval: const Duration(seconds: 2),
              autoPlay: true),
          items: source.map(
            (i) {
              return Builder(
                builder: (BuildContext context) {
                  return Image.asset(i);
                },
              );
            },
          ).toList(),
        )
      ],
    ),
  );
}

portFolioMobileMethod(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    width: width,
    padding: const EdgeInsets.all(10),
    color: hoverColor,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 30,
        ),
        Text(
          'Our Projects',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            color: Colors.blue,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'The Project With Quiety',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w800,
            color: mainColor,
            fontSize: 23,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: width / 1.2,
          child: Text(
            'Intrinsicly strategize cutting-edge before interoperable applications incubate extensive expertise through integrated intellectual capital.',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              color: const Color.fromARGB(255, 98, 96, 96),
              fontSize: 17,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        CarouselSlider(
          options: CarouselOptions(
              height: 200,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              viewportFraction: 0.6,
              aspectRatio: 1.0,
              initialPage: 0,
              pauseAutoPlayInFiniteScroll: true,
              autoPlayInterval: const Duration(seconds: 2),
              autoPlay: true),
          items: source.map(
            (i) {
              return Builder(
                builder: (BuildContext context) {
                  return Image.asset(i);
                },
              );
            },
          ).toList(),
        )
      ],
    ),
  );
}

portFolioTabletMethod(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    width: width,
    padding: const EdgeInsets.all(10),
    color: hoverColor,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 30,
        ),
        Text(
          'Our Projects',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            color: Colors.blue,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'The Project With Quiety',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w800,
            color: mainColor,
            fontSize: 23,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: width / 1.2,
          child: Text(
            'Intrinsicly strategize cutting-edge before interoperable applications incubate extensive expertise through integrated intellectual capital.',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              color: const Color.fromARGB(255, 98, 96, 96),
              fontSize: 17,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        CarouselSlider(
          options: CarouselOptions(
            height: 200,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            viewportFraction: 0.3,
            aspectRatio: 1.0,
            initialPage: 0,
            pauseAutoPlayInFiniteScroll: true,
            autoPlayInterval: const Duration(seconds: 2),
            autoPlay: true,
          ),
          items: source.map(
            (i) {
              return Builder(
                builder: (BuildContext context) {
                  return Image.asset(i);
                },
              );
            },
          ).toList(),
        )
      ],
    ),
  );
}

final List source = [
  'assets/webde.jpg',
  'assets/webde.jpg',
  'assets/webde.jpg',
  'assets/webde.jpg',
  'assets/webde.jpg',
];
