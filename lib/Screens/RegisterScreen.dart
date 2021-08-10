import 'package:flutter/material.dart';
import 'package:prefinal_aff/Widgets/BackgroundImage.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:prefinal_aff/Widgets/User Circle register.dart';
import 'package:prefinal_aff/Widgets/TextFormFieldsLogin.dart';
import 'package:prefinal_aff/Widgets/ButtonWidgets.dart';
import 'package:prefinal_aff/Widgets/SharedPref items.dart';

class RegisterScreen extends StatelessWidget {
  //String textColor = ColorToHex(Colors.teal).toString();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.centerStart,
      children: [
        BackgroundImage(backgroundImage: 'assets/images/RegisterSpaceX.jpg',
        child1: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
              //  SizedBox(height: 90,),

                UserCircleRegister(),
                SizedBox(height: 20,),
                TextRegisterID(
                  icon1: Icons.person_outline,
                  hint: 'User ID',
                  inputType: TextInputType.name,
                  inputAction: TextInputAction.next,
                ),
                TextRegisterEmail(
                  inputType: TextInputType.emailAddress,
                inputAction: TextInputAction.next,),
                TextRegisterPassword(
                  hint: 'Password',
                  icon1: Icons.lock_outline,
                  inputType: TextInputType.visiblePassword,
                  inputAction: TextInputAction.next,
                ),
                TextRegisterPassword(
                  hint: 'Confirm Password',
                  icon1: Icons.lock_outline,
                  inputType: TextInputType.visiblePassword,
                  inputAction: TextInputAction.done,
                ),
                LoginButtonWidget(textButton: 'Sign Up',onPressed: (){

                  Navigator.pushNamed(context, '/ProfileScreen');
                },),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                  Text('Aleady have an account?',style: TextStyle(fontSize: 18,color: Colors.white)),
                        GestureDetector(
                          onTap: ()=>Navigator.pushNamed(context, '/LoginScreen'),
                          child: Text('Login',
                            style: TextStyle(fontSize: 18,color: Colors.indigo,fontWeight: FontWeight.bold),),
                        )
                  ]),
                )

              ],
            ),
          ),
        ),
        ),

      ],
    );
  }
}
/*
Container(
child : Positioned(
height: 10,
top: 500,
left: 20,

child: IconButton(icon: Icon(Icons.arrow_back),
onPressed: (){Navigator.pop(context);},alignment: Alignment.topLeft,
color: Colors.red.withOpacity(.6),),
),),

 */
// error of putting befor stack ends
/*
* No Material widget found.
IconButton widgets require a Material widget ancestor.
In material design, most widgets are conceptually "printed" on a sheet of material. In Flutter's material library, that material is represented by the Material widget. It is the Material widget that renders ink splashes, for instance. Because of this, many material library widgets require that there be a Material widget in the tree above them.

To introduce a Material widget, you can either directly include one, or use a widget that contains Material itself, such as a Card, Dialog, Drawer, or Scaffold.
* */