import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//here is a splash screen with full image as background
class SplashImage extends StatefulWidget {
 // SplashImage(this._splashImage);
 // final String _splashImage;
  //String get splashImage=>_splashImage;
  @override
  _SplashImageState createState() => _SplashImageState();
}

class _SplashImageState extends State<SplashImage> {
  // ignore: must_call_super
  void initState() {
    Timer(Duration(seconds: 3), (){
      Navigator.pushNamed(context, '/IntroductionPages');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/LastSplashX.jpg'),
              fit: BoxFit.cover
          ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}

