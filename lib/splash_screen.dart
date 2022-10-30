import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sls/main.dart';
import 'package:sls/register_screen.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override


  void initState() {
    // TODO: implement initState
    super.initState();
    //_gotohome();
  }

  void _gotohome() async {
    await Future.delayed(const Duration(microseconds: 5000),() {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Registration())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 100,
          color: Colors.white60
        ),
      ],
      )
      // child: Image(
      //     image: AssetImage('assets/flutter.png'))
    ),
    );
  }
}

