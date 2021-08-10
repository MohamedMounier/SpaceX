import 'package:flutter/material.dart';
import 'package:prefinal_aff/Widgets/TextFormFieldsLogin.dart';
import 'package:prefinal_aff/Widgets/ButtonWidgets.dart';
import 'package:prefinal_aff/Widgets/Remember meCheckBox.dart';
import 'package:prefinal_aff/Widgets/CreateNewAccountButton.dart';
import 'package:prefinal_aff/Widgets/SharedPref items.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController =TextEditingController();
  TextEditingController passController=TextEditingController();
  String email = 'mohamedflutter@gmail.com';
  String password= 123456.toString();
  var myEmail;
  var formKey = GlobalKey<FormState>();
  Future CheckLogin()async{
    if(emailController.text==email){
      SharedPreferences pref = await SharedPreferences.getInstance();
      pref.setString('email', emailController.text);
      Navigator.pushNamed(context, '/ProfileScreen');
    }else{
      showDialog(context: context, builder: (context)=>NotRegistered());

    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),
                image: AssetImage('assets/images/spaceLogin.jpg'),
                fit: BoxFit.cover),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Form(
                key:formKey ,
                child: Column(
                  children: [
                    SizedBox(height: 150,),
                    TextFormFieldEmail(
                      emailControl: emailController,
                      hint: 'Email',
                      icon1: Icons.email_outlined,
                      inputAction: TextInputAction.next,
                      inputType: TextInputType.emailAddress,
                    ),
                    TextFormPassword(
                      passControl: passController,
                        hint: 'Password',
                        icon1: Icons.lock,
                        inputAction: TextInputAction.done,
                        inputType: TextInputType.name),
                    CheckBoxtrial(),
                    SizedBox(height: 25),
                    LoginButtonWidget(
                      onPressed: (){
                        if(formKey.currentState.validate()){
                          CheckLogin();
                        }
                      },
                      textButton: 'Login',),
                    SizedBox(height: 25),

                    NewAccButton(createAcc: 'Create New Account !',),

                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
  AlertDialog NotRegistered() =>AlertDialog(
    title: Text('Email and password are not registered Please try again or sign up !')
    ,elevation: 40 ,
    backgroundColor:Colors.grey,);
}
