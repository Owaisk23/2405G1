import 'package:crud/Screens/addproduct.dart';
import 'package:crud/Screens/products.dart';
import 'package:crud/Screens/signup.dart';
import 'package:crud/Screens/signupgoogle.dart';
import 'package:crud/Screens/splashScreen.dart';
import 'package:crud/firebase_options.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        // "/signup": (context) => Signup(),
        "/signup": (context) => Signupgoogle(),
        // "/add": (context) => AddProduct(),
        "/products": (context) => Products(),
      },
    );
  }
}