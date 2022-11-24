import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

analytics(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 100),
    width: width,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: width / 2.7,
                child: Text(
                  'Advanced analytics easy to understand for sales',
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
                  ),
                  const SizedBox(
                    width: 30,
                  ),
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
                        'Real time metrics',
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
            ],
          ),
          const SizedBox(
            width: 100,
          ),
          Container(
              height: 450,
              width: 550,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: headingColor.withOpacity(0.2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage('assets/exp2.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              )),
        ],
      ),
    ),
  );
}
