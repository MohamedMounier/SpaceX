import 'package:flutter/material.dart';

class NewAccButton extends StatelessWidget {
  const NewAccButton({
    this.createAcc,
    Key key,
  }) : super(key: key);

 final String createAcc;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.transparent,
        //  color: Colors.grey[500].withOpacity(.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextButton(onPressed: (){
        Navigator.pushNamed(context, '/RegisterScreen');
      },
        child: Text(createAcc,style: TextStyle(
            fontSize: 20,color:Colors.white),),
      ),
    );
  }
}

