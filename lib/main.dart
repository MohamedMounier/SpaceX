
import 'package:flutter/material.dart';
import 'package:prefinal_aff/Screens/IntroductionPage1.dart';
import 'package:prefinal_aff/Screens/TabbarInfoScreen.dart';
import 'package:prefinal_aff/Widgets/SharedPref%20items.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'file:///D:/Flutter%20Course/projectsss/PreFinalApp/prefinal_aff/lib/Screens/SplashImage.dart';
import 'Screens/SplashScreen.dart';
import 'Screens/LoginScreen.dart';
import 'Screens/RegisterScreen.dart';
import 'Screens/ProfileScreen.dart';
void main()async {

  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferencesGet= await SharedPreferences.getInstance();
  var myEmail =preferencesGet.getString('email');
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
      //"/":(context)=>SplashScreen(), //(without image as background)
      "/":(context)=>SplashImage() ,
      '/IntroductionPages':myEmail==null?(context)=>IntroductionPages():(context)=>ProfileScreen(),//( Image as background)
      '/LoginScreen':(context)=>LoginScreen(),
      '/RegisterScreen':(context)=>RegisterScreen(),
      '/ProfileScreen':(context)=>ProfileScreen(),
        'TabBarPages':(context)=>TabBarPages()


      }
      )
  );
  }



