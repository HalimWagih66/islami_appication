import 'package:flutter/material.dart';

import '../home screen/home screen.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = "SplashScreen";
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2),() {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splash/splash.png"),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
