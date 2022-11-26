import 'package:carousel_slider/carousel_slider.dart';
import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

import 'onhover.dart';

clientSayDesktopMethod(BuildContext context) {
  final CollectionReference feedback =
      FirebaseFirestore.instance.collection('feedback');

  var width = MediaQuery.of(context).size.width;

  return Container(
    padding: const EdgeInsets.all(10),
    width: width,
    color: mainColor,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 90,
        ),
        Text(
          'Testimonial',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 11,
        ),
        Text(
          'What’s Clients Say',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 36,
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          'Credibly grow premier ideas rather than bricks-and-clicks strategic theme areas',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w300,
            color: Colors.grey,
            fontSize: 17,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'distributed for stand-alone web-readiness.',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w300,
            color: Colors.grey,
            fontSize: 17,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        SingleChildScrollView(
          child: StreamBuilder(
            stream: feedback.snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
              if (streamSnapshot.hasData) {
                return ResponsiveGridList(
                  listViewBuilderOptions: ListViewBuilderOptions(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                  ),
                  horizontalGridSpacing: 50,
                  horizontalGridMargin: 100,
                  verticalGridMargin: 50,
                  minItemWidth: 200,
                  minItemsPerRow: 1,
                  maxItemsPerRow: 3,
                  children: List.generate(
                    streamSnapshot.data!.docs.length,
                    (index) => Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 5.0,
                      child: OnHover(
                        builder: (isHovered) {
                          return SizedBox(
                            height: 300,
                            width: 280,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 32, 0, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${streamSnapshot.data!.docs[0]['feedback_msssage']}',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w300,
                                      color:
                                          const Color.fromARGB(255, 53, 52, 52),
                                      fontSize: 17,
                                    ),
                                  ),
                                  // Text(
                                  //   'Utricies lacus sed turpis tincidunt id',
                                  //   style: GoogleFonts.poppins(
                                  //     fontWeight: FontWeight.w300,
                                  //     color: const Color.fromARGB(
                                  //         255, 53, 52, 52),
                                  //     fontSize: 17,
                                  //   ),
                                  // ),
                                  // Text(
                                  //   'aliquet risesconsiquent vel america',
                                  //   style: GoogleFonts.poppins(
                                  //     fontWeight: FontWeight.w300,
                                  //     color: const Color.fromARGB(
                                  //         255, 53, 52, 52),
                                  //     fontSize: 17,
                                  //   ),
                                  // ),
                                  // Text(
                                  //   'lectus quam id',
                                  //   style: GoogleFonts.poppins(
                                  //     fontWeight: FontWeight.w300,
                                  //     color: const Color.fromARGB(
                                  //         255, 53, 52, 52),
                                  //     fontSize: 17,
                                  //   ),
                                  // ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                streamSnapshot.data!.docs[0]
                                                    ['image'],
                                              ),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${streamSnapshot.data!.docs[0]['name']}',
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                              fontSize: 17,
                                            ),
                                          ),
                                          Text(
                                            '${streamSnapshot.data!.docs[0]['designation']}',
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              color: const Color.fromARGB(
                                                  255, 66, 64, 64),
                                              fontSize: 15,
                                            ),
                                          ),
                                          RatingBar.builder(
                                            ignoreGestures: true,
                                            itemSize: 14,
                                            initialRating: 5,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            unratedColor:
                                                Colors.black.withOpacity(0.1),
                                            itemBuilder: (context, _) =>
                                                const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {},
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        )
      ],
    ),
  );
}

clientSayMobileMethod(BuildContext context) {
  var width = MediaQuery.of(context).size.width;

  return Container(
    padding: const EdgeInsets.fromLTRB(20, 20, 20, 50),
    width: width,
    color: mainColor,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 40,
        ),
        Text(
          'Testimonial',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 11,
        ),
        Text(
          'What’s Clients Say',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: width,
          child: Text(
            'Credibly grow premier ideas rather than bricks-and-clicks strategic theme areas distributed for stand-alone web-readiness.',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              color: Colors.grey,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        CarouselSlider(
          options: CarouselOptions(
            height: 230,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            viewportFraction: 1,
            aspectRatio: 1,
            initialPage: 0,
            pauseAutoPlayInFiniteScroll: true,
            autoPlayInterval: const Duration(seconds: 20),
            autoPlay: true,
          ),
          items: source.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  padding: const EdgeInsets.all(11),
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(0.8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: width / 1.2,
                          child: Text(
                            'Pellentseque nec nam aliquam sam Utricies lacus sed turpis tincidunt id aliquet risesconsiquent america lectus quam id',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              color: const Color.fromARGB(255, 53, 52, 52),
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: const DecorationImage(
                                    image: AssetImage('assets/logo45.jpg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Alex Liverty',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text(
                                  'Product Designer',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromARGB(255, 66, 64, 64),
                                    fontSize: 15,
                                  ),
                                ),
                                RatingBar.builder(
                                  ignoreGestures: true,
                                  itemSize: 14,
                                  initialRating: 5,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  unratedColor: Colors.black.withOpacity(0.1),
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {},
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          }).toList(),
        )
      ],
    ),
  );
}

clientSayTabletMethod(BuildContext context) {
  var width = MediaQuery.of(context).size.width;

  return Container(
    padding: const EdgeInsets.fromLTRB(20, 20, 20, 50),
    width: width,
    color: mainColor,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 40,
        ),
        Text(
          'Testimonial',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 11,
        ),
        Text(
          'What’s Clients Say',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: width,
          child: Text(
            'Credibly grow premier ideas rather than bricks-and-clicks strategic theme areas distributed for stand-alone web-readiness.',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              color: Colors.grey,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        CarouselSlider(
          options: CarouselOptions(
            height: 220,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            viewportFraction: 0.5,
            aspectRatio: 1,
            initialPage: 0,
            pauseAutoPlayInFiniteScroll: true,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlay: true,
          ),
          items: source.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  padding: const EdgeInsets.all(11),
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(0.8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: width / 1.2,
                          child: Text(
                            'Pellentseque nec nam aliquam sam Utricies lacus sed turpis tincidunt id aliquet risesconsiquent america lectus quam id',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              color: const Color.fromARGB(255, 53, 52, 52),
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: const DecorationImage(
                                    image: AssetImage('assets/logo45.jpg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Alex Liverty',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text(
                                  'Product Designer',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromARGB(255, 66, 64, 64),
                                    fontSize: 15,
                                  ),
                                ),
                                RatingBar.builder(
                                  ignoreGestures: true,
                                  itemSize: 14,
                                  initialRating: 5,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  unratedColor: Colors.black.withOpacity(0.1),
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {},
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          }).toList(),
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
