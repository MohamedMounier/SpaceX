import 'package:flutter/material.dart';
import 'package:prefinal_aff/Widgets/SharedPref items.dart';
class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({
   @required this.textButton,this.onPressed,
    Key key,
  }) : super(key: key);
final String textButton;
final Function onPressed;
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Container(
      height: 70,
      width: 350,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16)  ,
          color: Colors.indigo
        //  shape: BoxShape.circle
      ),
      child: TextButton(
        child: Text(textButton,style: TextStyle(fontSize:16,color: Colors.white),),
        onPressed: onPressed,
      ),
    );
  }
}

