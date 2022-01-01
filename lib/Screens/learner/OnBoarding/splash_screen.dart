import 'dart:async';

import 'package:edutech/Screens/learner/OnBoarding/onBoard.dart';
import 'package:edutech/constants.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String routeName = '/Splash';

  static Route route() {
    return MaterialPageRoute(builder: (_) => SplashScreen());
  }

  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => OnBoarding()),
          (route) => false);
    });
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      color: darkGrey,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            alignment: Alignment.center,
            child: Card(
              color: darkGrey,
              elevation: 0.0,
              child: Container(
                margin: EdgeInsets.all(width * 0.02),
                height: width * 0.38,
                width: width * 0.38,
                color: Colors.transparent,
                child: const Image(image: AssetImage('assets/logo.png')),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
