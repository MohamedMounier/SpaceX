import 'package:flutter/material.dart';
import 'package:prefinal_aff/Widgets/SplashLoadingWidget.dart';
import 'file:///D:/Flutter%20Course/projectsss/PreFinalApp/prefinal_aff/lib/Screens/SplashImage.dart';
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white70, // with loodingSplash widget
        body: SplashLoadingScreen(logosplash: 'assets/images/1.png'),
    );


  }
}
/* (Note that what we will use if we want loading screen with logo without
    back ground immage)
    return Scaffold(
     // backgroundColor: Colors.white70, // with loodingSplash widget
      body:SplashLoadingScreen(logosplash: 'assets/images/1.png'),
    );

     */

