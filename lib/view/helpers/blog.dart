import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

import 'onhover.dart';

BlogDesktopMethod(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    padding: EdgeInsets.all(10),
    width: width,
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Blog",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 4, 105, 188),
              fontSize: 21,
            ),
          ),
          Text(
            "Our Latest News and Update",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 15, 3, 102),
              fontSize: 35,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Assertively maximize cost effective methods of iterate team driven manufactured",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              color: Color.fromARGB(255, 79, 77, 77),
              fontSize: 17,
            ),
          ),
          Text(
            "products through equity invested via customized benefits.",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              color: Color.fromARGB(255, 79, 77, 77),
              fontSize: 17,
            ),
          ),
          SingleChildScrollView(
            child: ResponsiveGridList(
              listViewBuilderOptions: ListViewBuilderOptions(
                  shrinkWrap: true, physics: NeverScrollableScrollPhysics()),
              horizontalGridSpacing: 10,
              horizontalGridMargin: 100,
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
                  child: OnHover(builder: (isHovered) {
                    return Container(
                      color: Colors.white,
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage('assets/blog-2.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [ 
                                
                                
                                Container(
                                  height: 20,
                                  width: 60,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),color: Color.fromARGB(255, 244, 185, 166)),
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
                            
                            ),  SizedBox(height: 0.5,),
                             Text(
                              'In one reality, you have infinite upside and....',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w300,
                                color: Color.fromARGB(255, 84, 82, 82),
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 20,),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [ Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                    image: AssetImage('assets/logo45.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(width: 15,),
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
                            SizedBox(height: 3,),
                             Text(
                              'April 24,2021',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w300,
                                color: Color.fromARGB(255, 130, 127, 127),
                                fontSize: 13,
                              ),
                            ),  


                          ],)
                          
                          
                          
                          ],

                            )
                            
                            
                            
                            
                            
                            ],),
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
    ),
  );
}



BlogMobileMethod(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    padding: EdgeInsets.all(10),
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
              color: Color.fromARGB(255, 4, 105, 188),
              fontSize: 16,
            ),
          ),
          SizedBox(height: 12,),
          Text(
            "Our Latest News and Update",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 15, 3, 102),
              fontSize: 22,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: width/1.1,
            child: Text(
              "Assertively maximize cost effective methods of iterate team driven manufactured products through equity invested via customized benefits.",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                color: Color.fromARGB(255, 79, 77, 77),
                fontSize: 14,
              ),textAlign: TextAlign.center,
            ),
          ),
          
          SingleChildScrollView(
            child: ResponsiveGridList(
              listViewBuilderOptions: ListViewBuilderOptions(
                  shrinkWrap: true, physics: NeverScrollableScrollPhysics()),
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
                  child:  Container(
                      color: Colors.white,
                     
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         OnHover(builder: (isHovered) {
                            return Container(                            height: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage('assets/blog-2.jpg'),
                                    fit: BoxFit.cover)),
                          );}),
                          SizedBox(
                            height: 3,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [ 
                                
                                
                                Container(
                                  height: 20,
                                  width: 60,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),color: Color.fromARGB(255, 244, 185, 166)),
                                  child: Center(
                                    child: Text(
                              'Design',
                              style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
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
                            SizedBox(
                              width: width/1.1,
                              child: Text(
                                'Society is fragmenting into two parallel realities.In one reality, you have infinite upside and....',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300,
                                  color: Color.fromARGB(255, 84, 82, 82),
                                  fontSize: 13,
                                ),
                              
                              ),
                            ), 
                             
                            SizedBox(height: 10,),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [ Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                    image: AssetImage('assets/logo45.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(width: 15,),
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
                            SizedBox(height: 3,),
                             Text(
                              'April 24,2021',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w300,
                                color: Color.fromARGB(255, 130, 127, 127),
                                fontSize: 13,
                              ),
                            ),  


                          ],)
                          
                          
                          
                          ],

                            )
                            
                            
                            
                            
                            
                            ],),
                          ),
                         
                        ],
                      ),
                    )
                  
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
