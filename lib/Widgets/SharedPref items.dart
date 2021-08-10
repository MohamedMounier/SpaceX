import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class LogingChecking extends StatefulWidget {
  @override
  _LogingCheckingState createState() => _LogingCheckingState();
}

class _LogingCheckingState extends State<LogingChecking> {

  TextEditingController emailController =TextEditingController();
  TextEditingController passController=TextEditingController();
  String email = 'mohamedflutter@gmail.com';
  String password= 123456.toString();
  var myEmail;

  Future CheckLogin()async{
    if(emailController.text==email&&passController.text==password){
      SharedPreferences pref = await SharedPreferences.getInstance();
      pref.setString(email, emailController.text);
    }
  }
  Future GetLoginData()async{
    SharedPreferences pref= await SharedPreferences.getInstance();
  setState(() {
    var myEmail=pref.getString('email');
  });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
