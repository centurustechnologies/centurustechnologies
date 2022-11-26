// ignore_for_file: non_constant_identifier_names, avoid_print

import 'dart:developer';

import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:easy_web_view2/easy_web_view2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:url_launcher/url_launcher.dart';

String src =
    'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3423.742150073073!2d75.86811477516136!3d30.89387347450696!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x391a830fff75fc87%3A0x74b3bff073fbadf2!2sCenturus%20Technologies%20Private%20Limited%20%7C%20App%20%26%20Web%20Development%20Company%20In%20Ludhiana!5e0!3m2!1sen!2sin!4v1668866272359!5m2!1sen!2sin';
ValueKey key = const ValueKey('key_0');
const bool _isMarkdown = false;
const bool _useWidgets = false;

const LatLng currentLocation = LatLng(25.1193, 55.3773);

Footer(
  BuildContext context,
  color,
  secondaryColor,
  phoneNumber,
  email,
  address,
  facebookUrl,
  instagramUrl,
  linkedinUrl,
  aboutUs,
  twitterUrl,
  tumblerUrl,
  copyright,
) {
  var width = MediaQuery.of(context).size.width;

  return Container(
    padding: const EdgeInsets.all(10),
    width: width,
    decoration: BoxDecoration(
      color: color,
      image: const DecorationImage(
          image: AssetImage('assets/page-header-bg.png'), fit: BoxFit.cover),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Center(
            child: SingleChildScrollView(
              child: ResponsiveGridList(
                listViewBuilderOptions: ListViewBuilderOptions(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics()),
                horizontalGridSpacing: 2,
                horizontalGridMargin: 10,
                verticalGridMargin: 2,
                minItemWidth: 300,
                minItemsPerRow: 1,
                maxItemsPerRow: 4,
                children: [
                  SizedBox(
                    height: 365,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "About Us",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              color: secondaryColor,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 28,
                          ),
                          SizedBox(
                            width: 200,
                            child: Text(
                              aboutUs,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w200,
                                color: secondaryColor,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 50,
                                width: 100,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/logo.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                "Centurus Technologies Pvt. Ltd.",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  color: secondaryColor,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 360,
                    //color: color,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Contact Info",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              color: secondaryColor,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 28,
                          ),
                          SizedBox(
                            width: 200,
                            child: Text(
                              address,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w200,
                                color: secondaryColor,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Phone No +91-$phoneNumber',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w200,
                              color: secondaryColor,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            email,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w200,
                              color: secondaryColor,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 360,
                    //color: color,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Important Links",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              color: secondaryColor,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Home",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: secondaryColor,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "About Us",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: secondaryColor,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Our Services",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: secondaryColor,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Privacy Policy",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: secondaryColor,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Terms & Condition",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: secondaryColor,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 360,
                    width: width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Text(
                            "Location",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              color: secondaryColor,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 40, 70, 50),
                          child: SizedBox(
                            height: 220,
                            width: width,
                            child: EasyWebView(
                              src: src,
                              onLoaded: () {
                                print('$key: Loaded: $src');
                              },
                              isMarkdown: _isMarkdown,
                              convertToWidgets: _useWidgets,
                              key: key,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 1,
            width: width,
            color: secondaryColor,
          ),
        ),
        builtFooter(
          context,
          Colors.white,
          mainColor,
          facebookUrl,
          instagramUrl,
          linkedinUrl,
          twitterUrl,
          tumblerUrl,
          copyright,
        ),
      ],
    ),
  );
}

builtFooter(
  context,
  color,
  secondaryColor,
  facebookUrl,
  instagramUrl,
  linkedinUrl,
  twitterUrl,
  tumblerUrl,
  copyright,
) {
  var width = MediaQuery.of(context).size.width;
  return SingleChildScrollView(
    child: ResponsiveGridList(
      listViewBuilderOptions: ListViewBuilderOptions(
          shrinkWrap: true, physics: const NeverScrollableScrollPhysics()),
      // horizontalGridSpacing: 200,
      // horizontalGridMargin: 20,
      verticalGridMargin: 10,
      minItemWidth: 300,
      minItemsPerRow: 1,
      maxItemsPerRow: 2,
      rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Center(
          child: Text(
            copyright,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              color: secondaryColor,
              fontSize: 14,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                launchUrl(
                  Uri.parse(facebookUrl),
                );
                log('facebook url : $facebookUrl');
              },
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: const DecorationImage(
                    image: AssetImage("assets/facebook.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: width / 150,
            ),
            InkWell(
              onTap: () {
                launchUrl(
                  Uri.parse(linkedinUrl),
                );
                log('linkedin url : $linkedinUrl');
              },
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: const DecorationImage(
                    image: AssetImage("assets/linked.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: width / 150,
            ),
            InkWell(
              onTap: () {
                launchUrl(
                  Uri.parse(twitterUrl),
                );
                log('teitter url : $twitterUrl');
                
              },
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: const DecorationImage(
                    image: AssetImage("assets/twitter.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: width / 150,
            ),
            InkWell(
              onTap: () {
                launchUrl(
                  Uri.parse(instagramUrl),
                );
                log('instagram url : $instagramUrl');
             
              },
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: const DecorationImage(
                    image: AssetImage("assets/insta.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: width / 150,
            ),
            InkWell(
              onTap: () {
                launchUrl(
                  Uri.parse(tumblerUrl),
                );
                log('tumbler url : $tumblerUrl');
  
              },
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: const DecorationImage(
                    image: AssetImage("assets/tumblr.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: width / 150,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: const DecorationImage(
                    image: AssetImage("assets/my-business.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
