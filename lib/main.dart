import 'package:flutter/material.dart';
import 'package:islami_application/splash%20screen/splash%20screen.dart';

import 'home screen/home screen.dart';
import 'home screen/quran_tap/soura_details.dart';

void main() {
  runApp(MyApplication());
}
class MyApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SouraDetails.routeName : (context)=> SouraDetails(),
        SplashScreen.routeName : (context)=>SplashScreen(),
        HomeScreen.routeName : (context)=>HomeScreen(),
      },
      initialRoute: SplashScreen.routeName,
      theme: ThemeData(
        primaryColor: Color(0xffB7935F),
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(fontSize: 30,color: Color(0xff242424)),
          iconTheme: IconThemeData(color: Color(0xff242424)),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Color(0xff242424),
          unselectedItemColor: Colors.white,
        )
      ),
    );
  }

}