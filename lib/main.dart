// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travel_app/body.dart';
import 'package:travel_app/constans.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Travel App",
      theme: ThemeData(scaffoldBackgroundColor: kBackgroundColor),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            "Travel App",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          )
        ],
      ),
      nextScreen: LoadingScreen(),
      backgroundColor: Colors.white,
      splashTransition: SplashTransition.fadeTransition,
      duration: 4000,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('images/lottie.json'),
      nextScreen: Body(),
      backgroundColor: Colors.white,
      animationDuration: Duration(seconds: 1),
      splashTransition: SplashTransition.fadeTransition,
      duration: 2000,
      pageTransitionType: PageTransitionType.rightToLeftWithFade,
    );
  }
}
