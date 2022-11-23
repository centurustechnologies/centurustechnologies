// ignore_for_file: unused_local_variable

import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:centurus_web_app/view/helpers/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class contactUsScreen extends StatelessWidget {
  const contactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    //var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: width,
        padding: EdgeInsets.all(20),
       
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              mainColor,
              // mainColor.withOpacity(0.8),
              mainColor.withOpacity(0.8),
            ],
          ),
        ),
        child: Column(
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 110, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Start Your Project',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 46,
                        ),
                      ),
                      Text(
                        'with Us',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 46,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          width: width / 3,
                          child: Text(
                            'Whatever your goal or project size we will handel it utilize standards compliant. We hope you will be 100% satisfied.',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 15,
                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: width / 3,
                        child: Text(
                          '"Globally actualize economically sound alignments before tactical systems. Rapidiously actualize processes technically sound infomediaries. Holisticly pursue team building catalysts for change before team driven products. "',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: Colors.white.withOpacity(0.8),
                            fontStyle: FontStyle.italic,
                            fontSize: 19,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Veronica P. Byrd',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        'Veterinary technician',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300,
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.amber),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.amber),
                          ),
                          SizedBox(
                            width: 13,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.amber),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Container(
                    height: 590
,                    width:width/3.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(40, 50, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: width / 4,
                              child: Text(
                                  "Fill out the form and we'll be in touch as soon as possible,",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    fontSize: 24,
                                  ))),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              Container(
                                width: width / 7.5,
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                     border: new OutlineInputBorder(
      borderSide: new BorderSide(color: Color.fromARGB(255, 212, 212, 212)),
       
                                   ),
                                    labelText: 'Name',),),),
                                     SizedBox(
                                width: 14,
                              ),
                              Container(
                                width: width / 7.5,
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Email',
                                  ),
                                ),
                              ),
                                    
                                    
                                    
                                    ]),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Container(
                                width: width / 7.5,
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Company Website',
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Container(
                                width: width / 7.5,
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Work Email',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),  Row(
                            children: [
                              Container(
                                width: width / 7.5,
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Budget',
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 14,
                              ),
                              Container(
                                width: width / 7.5,
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Country',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 0,
                          ),
                         _buildTextField(context),



                          SizedBox(
                            width: width / 3.59,
                            child: Text(
                                "Yes, I'd like to receive occasional marketing emails from us. I have the right to opt out at any time. View privacy policy.,",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey,
                                  fontSize: 12,
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                              height: 50,
                              width: width / 3.59,
                              child: Material(
                                borderRadius: BorderRadius.circular(8),
                                color: Color.fromARGB(255, 7, 104, 182),
                                child: GestureDetector(
                                    onTap: () {},
                                    child: Center(
                                      child: Text(
                                        'Get Started',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    )),
                              )),

                             
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,40, 0, 0),
              child: Container(
                width: width/1.1,
                height: 1,
                color: Colors.white.withOpacity(0.3),
              ),
            ),SizedBox(height: 13,),
             builtFooter(context,Colors.white,mainColor),
          ],
        ),
      ),
    );
  }
}
 Widget _buildTextField(BuildContext context) {
  final maxLines = 4;
 
  
  return Container(
    
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.white, border: Border.all(color: Colors.grey) ),
    margin: EdgeInsets.fromLTRB(0,12, 35, 0),
    height: maxLines * 24.0,
    child:Padding(
      padding: const EdgeInsets.all(4.0),
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Tell Us more about your project,need and budget ",
          fillColor: Colors.white,
          //filled: true,
        ),
      ),
    ),
  );
}

