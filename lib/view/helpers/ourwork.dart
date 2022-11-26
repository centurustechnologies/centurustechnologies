import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ourWorkDesktopMethod(BuildContext context, companiesCount) {
  final CollectionReference companiesImage =
      FirebaseFirestore.instance.collection('companies');

  var width = MediaQuery.of(context).size.width;
  return Container(
    height: 500,
    width: width,
    color: const Color.fromARGB(255, 247, 246, 246),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 100,
        ),
        Text(
          'Over $companiesCount+ Companies Trusted Us',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontSize: 38,
          ),
        ),
        const SizedBox(height: 25),
        Text(
          'Over $companiesCount+ Companies Trusted Us',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w300,
            color: const Color.fromARGB(255, 98, 97, 97),
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 70,
        ),
        SizedBox(
          height: 100,
          width: width,
          child: StreamBuilder(
            stream: companiesImage.snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
              if (streamSnapshot.hasData) {
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: streamSnapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    final DocumentSnapshot documentSnapshot =
                        streamSnapshot.data!.docs[index];
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 85,
                            width: 145,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(22),
                                bottomRight: Radius.circular(22),
                              ),
                              image: DecorationImage(
                                image: NetworkImage(
                                  documentSnapshot['image'],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                        ],
                      ),
                    );
                  },
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ],
    ),
  );
}

ourWorkMobileMethod(BuildContext context, companiesCount) {
  final CollectionReference companiesImage =
      FirebaseFirestore.instance.collection('companies');

  var width = MediaQuery.of(context).size.width;
  return Container(
    height: 320,
    width: width,
    color: const Color.fromARGB(255, 247, 246, 246),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 50,
        ),
        Text(
          'Over $companiesCount+ Companies Trusted Us',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontSize: 19,
          ),
        ),
        const SizedBox(height: 15),
        Text(
          'Over $companiesCount+ Companies Trusted Us',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w300,
            color: const Color.fromARGB(255, 98, 97, 97),
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 100,
          width: width,
          child: StreamBuilder(
            stream: companiesImage.snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
              if (streamSnapshot.hasData) {
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: streamSnapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    final DocumentSnapshot documentSnapshot =
                        streamSnapshot.data!.docs[index];
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 85,
                            width: 145,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(22),
                                bottomRight: Radius.circular(22),
                              ),
                              image: DecorationImage(
                                image: NetworkImage(
                                  documentSnapshot['image'],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                        ],
                      ),
                    );
                  },
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ],
    ),
  );
}
