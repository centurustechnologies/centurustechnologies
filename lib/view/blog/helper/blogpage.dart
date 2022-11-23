import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

import '../../helpers/onhover.dart';

blogMethod(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    width: width,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 100, 0, 60),
      child: Column(
        children: [
          SingleChildScrollView(
            child: ResponsiveGridList(
              listViewBuilderOptions: ListViewBuilderOptions(
                  shrinkWrap: true, physics: NeverScrollableScrollPhysics()),
              horizontalGridSpacing: 30,
              horizontalGridMargin: 100,
              verticalGridMargin: 50,
              minItemWidth: 200,
              minItemsPerRow: 1,
              maxItemsPerRow: 2,
              children: List.generate(
                2,
                (index) => Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(21)),
                  elevation: 2.0,
                  child: _blog1(context),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: ResponsiveGridList(
              listViewBuilderOptions: ListViewBuilderOptions(
                  shrinkWrap: true, physics: NeverScrollableScrollPhysics()),
              horizontalGridSpacing: 30,
              horizontalGridMargin: 130,
              verticalGridMargin: 5,
              minItemWidth: 200,
              minItemsPerRow: 1,
              maxItemsPerRow: 3,
              children: List.generate(
                9,
                (index) => Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 2.0,
                  child: Container(
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        OnHover(builder: (isHovered) {
                          return Container(
                              height: 250,
                              width: width,
                              //child: index==0? Image.asset('assets/blog-2.jpg',fit: BoxFit.cover,):index==1?Image.asset('assets/ee-1.jpg',fit: BoxFit.cover):Image.asset('assets/ee-3.jpg',fit: BoxFit.cover),

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                                color: Colors.amber,
                                image: DecorationImage(
                                    image: AssetImage('assets/blog-2.jpg'),
                                    fit: BoxFit.cover),
                              ));
                        }),
                        SizedBox(
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
                                    color: Color.fromARGB(255, 244, 185, 166)),
                                child: Center(
                                  child: Text(
                                    'Design',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 21, 21, 21),
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Do You Realy Understand The',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(255, 34, 33, 33),
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                'Concept Of Product Value?',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(255, 34, 33, 33),
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Society is fragmenting into two parallel realities.',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300,
                                  color: Color.fromARGB(255, 84, 82, 82),
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 0.5,
                              ),
                              Text(
                                'In one reality, you have infinite upside and....',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300,
                                  color: Color.fromARGB(255, 84, 82, 82),
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
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
                                        image: DecorationImage(
                                            image:
                                                AssetImage('assets/logo45.jpg'),
                                            fit: BoxFit.cover)),
                                  ),
                                  SizedBox(
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
                                          color:
                                              Color.fromARGB(255, 40, 39, 39),
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        'April 24,2021',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w300,
                                          color: Color.fromARGB(
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
          ),SizedBox(height: 30,),

 MaterialButton(
                      color: Colors.blue,
                      hoverColor: mainColor,
                      height: 55,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
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

_blog1(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Container(
  
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
    ),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 300,
              width: 230,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  color: Color.fromARGB(255, 182, 218, 247),
                  image: DecorationImage(
                      image: AssetImage('assets/tttt1.jpg'),
                      fit: BoxFit.cover))),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.blue,
                    child: GestureDetector(
                        onTap: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(4, 2, 4, 3),
                              child: Text(
                                'marketing',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  SizedBox(
                    width: width / 4.7,
                    child: Text(
                      'Why Product managers must be strategic about chasing',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    width: width / 4.7,
                    child: Text(
                      'Society is fragmenting into two parallel realities. In one reality, you have infinite',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(255, 61, 59, 59),
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                                image: AssetImage('assets/logo45.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Anil Sharma',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 40, 39, 39),
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'April 24,2021',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              color: Color.fromARGB(255, 130, 127, 127),
                              fontSize: 13,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ]),
          ),
          SizedBox(
            width: 50,
          ),
        ],
      ),
    ),
  );
}
