import 'dart:async';

import 'package:flutter/material.dart';
class SplashLoadingScreen extends StatefulWidget {
  const SplashLoadingScreen({
    this.logosplash,
    Key key,
  }) : super(key: key);
final String logosplash;

  @override
  _SplashLoadingScreenState createState() => _SplashLoadingScreenState();
}

class _SplashLoadingScreenState extends State<SplashLoadingScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), (){
        Navigator.pushNamed(context, '/IntroductionPages');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(child: Image.asset('assets/images/1.png'),
            margin: EdgeInsets.only(left: 30),
          ),
          SizedBox(
            height: 50,
          ),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.blueAccent),
            // backgroundColor: Colors.white24,
          )
        ],
      ),
    );
  }
}
