// ignore_for_file: non_constant_identifier_names

import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

import 'onhover.dart';

BlogDesktopMethod(BuildContext context) {
  var width = MediaQuery.of(context).size.width;

  final CollectionReference blog =
      FirebaseFirestore.instance.collection('blog');

  return Container(
    padding: const EdgeInsets.all(30),
    width: width,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 40, 0, 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Blog",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              color: const Color.fromARGB(255, 4, 105, 188),
              fontSize: 21,
            ),
          ),
          Text(
            "Our Latest News and Update",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 15, 3, 102),
              fontSize: 35,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Assertively maximize cost effective methods of iterate team driven manufactured",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              color: const Color.fromARGB(255, 79, 77, 77),
              fontSize: 17,
            ),
          ),
          Text(
            "products through equity invested via customized benefits.",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              color: const Color.fromARGB(255, 79, 77, 77),
              fontSize: 17,
            ),
          ),
          SingleChildScrollView(
            child: StreamBuilder(
                stream: blog.snapshots(),
                builder:
                    (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                  if (streamSnapshot.hasData) {
                    return ResponsiveGridList(
                      listViewBuilderOptions: ListViewBuilderOptions(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                      ),
                      horizontalGridSpacing: 10,
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
                              return Container(
                                color: Colors.white,
                                height: 500,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 250,
                                      width: width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            streamSnapshot.data!.docs[0]
                                                ['blog_image'],
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 20,
                                            width: 60,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                                color: const Color.fromARGB(
                                                    255, 244, 185, 166)),
                                            child: Center(
                                              child: Text(
                                                '${streamSnapshot.data!.docs[0]['blog_type']}',
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromARGB(
                                                      255, 21, 21, 21),
                                                  fontSize: 11,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            '${streamSnapshot.data!.docs[0]['blog_title']}',
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w800,
                                              color: const Color.fromARGB(
                                                  255, 34, 33, 33),
                                              fontSize: 18,
                                            ),
                                          ),
                                          // Text(
                                          //   'Concept Of Product Value?',
                                          //   style: GoogleFonts.poppins(
                                          //     fontWeight: FontWeight.w800,
                                          //     color: const Color.fromARGB(
                                          //         255, 34, 33, 33),
                                          //     fontSize: 18,
                                          //   ),
                                          // ),
                                          const SizedBox(
                                            height: 6,
                                          ),
                                          Text(
                                            '${streamSnapshot.data!.docs[0]['blog_description']}',
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w300,
                                              color: const Color.fromARGB(
                                                  255, 84, 82, 82),
                                              fontSize: 15,
                                            ),
                                          ),
                                          // const SizedBox(
                                          //   height: 0.5,
                                          // ),
                                          // Text(
                                          //   'In one reality, you have infinite upside and....',
                                          //   style: GoogleFonts.poppins(
                                          //     fontWeight: FontWeight.w300,
                                          //     color: const Color.fromARGB(
                                          //         255, 84, 82, 82),
                                          //     fontSize: 15,
                                          //   ),
                                          // ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 50,
                                                width: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                      streamSnapshot.data!
                                                          .docs[0]['image'],
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 15,
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
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color:
                                                          const Color.fromARGB(
                                                              255, 40, 39, 39),
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 3,
                                                  ),
                                                  Text(
                                                    '${streamSnapshot.data!.docs[0]['date']}',
                                                    style: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color:
                                                          const Color.fromARGB(
                                                              255,
                                                              130,
                                                              127,
                                                              127),
                                                      fontSize: 13,
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
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
                }),
          ),
          const SizedBox(
            height: 5,
          ),
          MaterialButton(
            color: Colors.blue,
            hoverColor: mainColor,
            height: 55,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: Colors.blue,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Text(
                'Read More',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

BlogMobileMethod(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    padding: const EdgeInsets.all(10),
    width: width,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Blog",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              color: const Color.fromARGB(255, 4, 105, 188),
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            "Our Latest News and Update",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 15, 3, 102),
              fontSize: 22,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: width / 1.1,
            child: Text(
              "Assertively maximize cost effective methods of iterate team driven manufactured products through equity invested via customized benefits.",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                color: const Color.fromARGB(255, 79, 77, 77),
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SingleChildScrollView(
            child: ResponsiveGridList(
              listViewBuilderOptions: ListViewBuilderOptions(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics()),
              horizontalGridSpacing: 10,
              horizontalGridMargin: 10,
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
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        OnHover(builder: (isHovered) {
                          return Container(
                              height: 250,
                              child: index == 0
                                  ? Image.asset(
                                      'assets/blog-2.jpg',
                                      fit: BoxFit.cover,
                                    )
                                  : index == 1
                                      ? Image.asset('assets/ee-1.jpg',
                                          fit: BoxFit.cover)
                                      : Image.asset('assets/ee-3.jpg',
                                          fit: BoxFit.cover),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                //image: DecorationImage(
                                //image: AssetImage('assets/blog-2.jpg'),
                                // fit: BoxFit.cover)),
                              ));
                        }),
                        const SizedBox(
                          height: 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 20,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: const Color.fromARGB(
                                        255, 244, 185, 166)),
                                child: Center(
                                  child: Text(
                                    'Design',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      color:
                                          const Color.fromARGB(255, 21, 21, 21),
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Do You Realy Understand The',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w800,
                                  color: const Color.fromARGB(255, 34, 33, 33),
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                'Concept Of Product Value?',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w800,
                                  color: const Color.fromARGB(255, 34, 33, 33),
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              SizedBox(
                                width: width / 1.1,
                                child: Text(
                                  'Society is fragmenting into two parallel realities.In one reality, you have infinite upside and....',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w300,
                                    color:
                                        const Color.fromARGB(255, 84, 82, 82),
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
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
                                            image:
                                                AssetImage('assets/logo45.jpg'),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Anil Sharma',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          color: const Color.fromARGB(
                                              255, 40, 39, 39),
                                          fontSize: 14,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        'April 24,2021',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w300,
                                          color: const Color.fromARGB(
                                              255, 130, 127, 127),
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
