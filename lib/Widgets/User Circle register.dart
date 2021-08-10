import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class UserCircleRegister extends StatelessWidget {
  const UserCircleRegister({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Center(
            child: CircleAvatar(
              radius: 55,
              backgroundColor: Colors.grey[400].withOpacity(.3),
              child: Icon(Icons.person_outline,color: Colors.white.withOpacity(.8),size: 55,),
            ),
          ),
          Positioned(
              top: 55,
              left: 230,
              child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white),
                    color: HexColor('#0d1c99'),
                  ),

                  child: Icon(Icons.arrow_upward_outlined,color: Colors.white.withOpacity(.8),size: 25,)
              )
          ),

        ]
    );
  }
}
