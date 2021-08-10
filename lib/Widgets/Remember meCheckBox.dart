import 'package:flutter/material.dart';
class RememberMeCheckBox extends StatefulWidget {
  const RememberMeCheckBox({
    Key key,
  }) : super(key: key);

  @override
  _RememberMeCheckBoxState createState() => _RememberMeCheckBoxState();
}
bool mark=false;
class _RememberMeCheckBoxState extends State<RememberMeCheckBox> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(value: mark,
      onChanged: (newValue) {
        setState(() {
          mark = newValue;
        });
      },
      title: Text('Remember Me',style: TextStyle(),) ,

    );

}
}
class CheckBoxtrial extends StatefulWidget {
  @override
  _CheckBoxtrialState createState() => _CheckBoxtrialState();
}
bool mark1=false;
class _CheckBoxtrialState extends State<CheckBoxtrial> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      child: Row(
       children:[
         Container(
           width: 50,
           height: 40,
           child: Checkbox(
             activeColor: Colors.blue,
             value: mark1 ,onChanged: (newvalue2){
               setState(() {
                 mark1=newvalue2;
               });
           },
           ),
         ),
         Text('Remember me',style: TextStyle(
           fontSize: 18,color: Colors.white
         ),)
       ]
      ),
    );
  }
}

