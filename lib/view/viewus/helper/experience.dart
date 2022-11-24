// ignore_for_file: non_constant_identifier_names

import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Experience(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 100),
    width: width,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 450,
            width: 550,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: headingColor.withOpacity(0.2),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image.asset(
                'assets/exp1.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            width: 100,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: width / 3,
                child: Text(
                  'Experience your product grow business',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 40),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                width: width / 3,
                child: Text(
                  'Conveniently drive stand-alone total linkage for process-centric content. Enthusiastically administrate robust initiatives quickly unleash collaborative with client-focused.',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 116, 115, 115),
                      fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.asset('assets/my-business.png'),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Customer analysis',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 19),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      SizedBox(
                        width: width / 6,
                        child: Text(
                          'Objectively exceptional via customized intellectual.',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(255, 116, 115, 115),
                              fontSize: 15),
                        ),
                      )
                    ],
                  )
                ],
              )


          ],)
 

        ],)



      
       
         ,
       ),
       




   );

}
