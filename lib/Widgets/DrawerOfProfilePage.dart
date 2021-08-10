import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:prefinal_aff/Screens/ProfileScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ProfileDrawer extends StatelessWidget {
  ProfileDrawer(this.emailDrawer){}

  String emailDrawer;
  @override
  Widget build(BuildContext context) {
    return Container(

      width: 180,
      child: Drawer(

        child: Container(
          color: Colors.black87,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: ListTile(
                      title: Text('@UserName',style: TextStyle(fontSize: 15,color: Colors.white),),
                      subtitle:Text('${ emailDrawer!=null?emailDrawer:'Email is Bugged'}',style: TextStyle(fontSize: 10,color: Colors.white)),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/profileavatar.jpg'),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: Text('Home',style: TextStyle(fontSize: 10,color: Colors.white)),
                  leading: Icon(Icons.home,color: Colors.indigo,),
                ),
                ListTile(
                  title: Text('Explore',style: TextStyle(fontSize: 10,color: Colors.white)),
                  leading: Icon(Icons.explore,color: Colors.indigo,),
                  onTap: (){
                    Navigator.pushNamed(context, 'TabBarPages');
                  },
                ),
                Center(
                  child: Container(
                   // margin: EdgeInsets.symmetric(horizontal: 15),
                    margin: EdgeInsets.only(right: 20,top: 380),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(icon: SvgPicture.asset('assets/images/fb.svg',color: Colors.indigo,width: 15,),onPressed: (){},),
                       IconButton(icon: SvgPicture.asset('assets/images/insta.svg',color: Colors.indigo,width: 24,),onPressed: (){}),
                        IconButton(icon: SvgPicture.asset('assets/images/twit.svg',color: Colors.indigo,width: 24,),onPressed: (){}),


                      ],
                      
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
