import'package:flutter/material.dart';
import 'package:prefinal_aff/Widgets/DrawerOfProfilePage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Rocket_Screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prefinal_aff/Widgets/ButtonWidgets.dart';
    class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
      String myEmail;
  Future GetLoginData()async{
    SharedPreferences pref= await SharedPreferences.getInstance();
    setState(() {
       myEmail=pref.getString('email');
       if (myEmail==null){print('null') ;}
    });
  }
      Future LogOut()async{
        SharedPreferences pref= await SharedPreferences.getInstance();
        setState(() {
          pref.remove('email');
        });
      }
  @override
  void initState() {
    GetLoginData();
    super.initState();
  }
      @override
      Widget build(BuildContext context) {

        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),
                image: AssetImage('assets/images/ProfileSpaceX.jpg'),
                fit: BoxFit.cover),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(title: Text('Profile '),backgroundColor: Colors.transparent,centerTitle: true,),
            drawer: ProfileDrawer(myEmail),

            body: ListView(

              children: [
                ListTile(
                  title: Text('Mohamed Mounier',style: TextStyle(fontSize: 20,color: Colors.white),),
                  subtitle: Text(myEmail,style: TextStyle(fontSize: 15,color: Colors.white)),
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/profileavatar.jpg'),)
                ),
               Container(
                 margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                 height: 200,
                 width: double.infinity,
                 child: Text('A graduate of Purdue University, Armstrong studied aeronautical engineering; '
                     'his college tuition was paid for by the U.S. Navy under the '
                     'Holloway Plan. He became a midshipman in 1949 and a naval aviator the '
                     'following year. He saw action in the Korean War, flying the Grumman F9F Panther from'
                     ' the aircraft carrier USS Essex. In September 1951, while making a low bombing run.',
                   style: TextStyle(fontSize: 15,color: Colors.white),),
               ),
               SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Row(

                   children: [
                     Column(
                       children: [
                         Container(
                           height: 200,
                           width: 250,
                           child: Image(image: AssetImage('assets/images/ast.jpg')),
                         ),
                          Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             IconButton(icon: SvgPicture.asset('assets/images/fb.svg',color: Colors.indigo,width: 15,),onPressed: (){},),
                             IconButton(icon: SvgPicture.asset('assets/images/insta.svg',color: Colors.indigo,width: 24,),onPressed: (){}),
                             IconButton(icon: SvgPicture.asset('assets/images/twit.svg',color: Colors.indigo,width: 24,),onPressed: (){}),


                           ],

                         )
                       ],
                     ),
                     TextButton(
                         onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>Rocket()));
                         },
                         child: Container(
                           color: Colors.white70,
                             child: Text('  Favourite Rocket ! ', style: TextStyle(fontSize: 16,color: Colors.indigo,fontWeight: FontWeight.bold),))),
                   ],
                 ),
               ),
               // Container(
                 // width: 200,
                //  height: 120,
                 // child: Text(myEmail,style: TextStyle(color: Colors.white,fontSize: 28),),
                //),

               Container(
                 
                 margin: EdgeInsets.only(left: 60,right: 60,top: 50),
                 height: 40,
                 width: 60,
                 child: RaisedButton(
                   color: Colors.indigoAccent.withOpacity(.5),

                     onPressed: (){
                   LogOut();
                   Navigator.pushNamed(context, '/LoginScreen');
                 }, child: Text('LogOut', style: TextStyle(fontSize: 15,color: Colors.white),)),
               ),


              ],
            ),
          ),
        );
      }
}
