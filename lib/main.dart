
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:sls/register_screen.dart';
import 'package:sls/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class ColorConstants {
  static const richWhite = Color(0xFFFDFEFF);
  static const kSecondaryColor = Color(0xFF444FAB);
  static const kThirdSecondaryColor = Color(0xFF5E6BD8);
  static const kGravishBlueColor = Color(0xFF9BA1D2);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: AnimatedSplashScreen(splash:
      'assets/hello.png',
      //Icons.home,
      duration: 3000,
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: ColorConstants.richWhite
          ,nextScreen: Registration()),
    );
  }
}

