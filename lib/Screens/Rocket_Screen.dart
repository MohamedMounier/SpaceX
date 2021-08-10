import 'package:flutter/material.dart';
import 'package:prefinal_aff/ModelsApi/RocketModel.dart';
import 'package:dio/dio.dart';
class Rocket extends StatefulWidget {
  @override
  _RocketState createState() => _RocketState();
}

class _RocketState extends State<Rocket> {
  @override
  void initState() {
    GetRocketData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,
      actions: [Icon(Icons.share)],
      ),
      backgroundColor: Colors.black87,
      body: Container(
        child: FutureBuilder<List<RocketModel>>(
          future: GetRocketData(),
          builder: (context,snapshot){
            if(snapshot.connectionState!=ConnectionState.done){
              return Center(child: CircularProgressIndicator());
            }else if(snapshot.hasError){
              print('the error is ${snapshot.error}');
              return NotConnected();
            }else if(snapshot.hasData){
              List<RocketModel> finalList=snapshot.data;
              return ListView(
                children: [
                  Container(
                    color: Colors.transparent,
                    height: 70,
                    width: double.infinity,
                    child: Center(
                      child: CircleAvatar(child: Image(image:AssetImage('assets/images/falcon1.png')),
                      radius: 40,
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    title: Text('Rocket Name:-',style: TextStyle(
                      color: Colors.red[500],
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),),
                    subtitle: Text('${finalList[0].name}',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    title: Text('Active?:-',style: TextStyle(
                        color: Colors.red[500],
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),),
                    subtitle: Text('${finalList[0].active}',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),),
                  ),
                  ListTile(
                    minVerticalPadding: 10,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    title: Text('Stages :-',style: TextStyle(
                        color: Colors.red[500],
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),),
                    subtitle: Text('${finalList[0].stages}',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),),
                  ),
                  ListTile(
                    minVerticalPadding: 10,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    title: Text('Description :-',style: TextStyle(
                        color: Colors.red[500],
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),),
                    subtitle: Text('${finalList[0].description.substring(80)}',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30,left: 20,right: 20),

                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text('Wikipedia',style: TextStyle(fontSize: 14,color: Colors.white),),
                            Image(image: AssetImage('assets/images/wiki.jpg'),height: 40,width: 40,),
                          ],
                        ),
                        Column(
                          children: [
                            Text('WebCast',style: TextStyle(fontSize: 14,color: Colors.white),),
                            Image(image: AssetImage('assets/images/webcast.png'),height: 40,width: 40,),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      margin: EdgeInsets.only(top: 30,left: 20,right: 20),

                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Image(image: NetworkImage('${finalList[0].flickr_images[0]}'),height: 200  ,width: 200,),
                          SizedBox(width: 20,),
                          Image(image: NetworkImage('${finalList[0].flickr_images[1]}'),height: 200  ,width: 200,)

                        ],
                      ),
                    ),
                  ),
                ],
              );
            }else{
              print('the error is ${snapshot.error}');
              return NotConnected();
            }
          },
        ),
      ),
    );
  }
}
Future<List<RocketModel>>GetRocketData()async{
var response=await Dio().get('https://api.spacexdata.com/v4/rockets');
print('Rocket response is $response');
List<RocketModel> rocketsList=[];
response.data.forEach((elemnt){
  rocketsList.add(RocketModel.fromJson(elemnt));
  print('rocketList is $rocketsList');
});
return rocketsList ;
}
AlertDialog NotConnected() =>AlertDialog(
  title: Text('Kindly check your internet connection and try again !')
  ,elevation: 40 ,
  backgroundColor:Colors.grey,);
