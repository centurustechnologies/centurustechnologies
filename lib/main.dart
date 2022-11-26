import 'package:centurus_web_app/view/dashboard.dart';
import 'package:centurus_web_app/view/helpers/app_constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyAWL3atwDE68vRwRtVc9vwCfGb-Vejmrdw",
      authDomain: "centurus-technologies.firebaseapp.com",
      projectId: "centurus-technologies",
      storageBucket: "centurus-technologies.appspot.com",
      messagingSenderId: "808718112672",
      appId: "1:808718112672:web:536ca4901f17d53c2836c5",
      measurementId: "G-9WQNXN0DM3",
    ),
  );

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: hoverColor, // navigation bar color
      statusBarColor: mainColor, // status bar color
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Centurus Technologies Pvt. Ltd.',
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}
