import 'package:flutter/material.dart';
import 'package:prefinal_aff/ModelsApi/Dragon1%20Model.dart';
import 'package:dio/dio.dart';
import 'package:prefinal_aff/ModelsApi/Dragon1Image.dart';
import 'package:prefinal_aff/ModelsApi/LunchiesApi.dart';
import 'package:prefinal_aff/ModelsApi/ShipsModel.dart';
class TabBarPages extends StatefulWidget {
  @override
  _TabBarPagesState createState() => _TabBarPagesState();
}

class _TabBarPagesState extends State<TabBarPages> {
  @override
  void initState() {
    GetShipsData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/TabBg.png'),
            fit: BoxFit.cover),
      ),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(title: Text('Reports'),backgroundColor: Colors.transparent,
          centerTitle: true,
            bottom: TabBar(

             // automaticIndicatorColorAdjustment: true,
              tabs: [
                //Tab(icon: Icon(Icons.favorite),text: 'Favorites',),
                 Container(
                   margin: EdgeInsets.only(bottom: 10),
                     child: Text('Dragons')),
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text('Launches')),
                Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text('Ships')),

              ],
            ),
          ),
          backgroundColor: Colors.transparent,
          body: TabBarView(children: [
            Center(child:FutureBuilder<List<Dragon1Texts>>(
              future: GetDragon1Texts(),
              builder: (context,snapshot){
                if(snapshot.connectionState!=ConnectionState.done){
                  return CircularProgressIndicator();
                }else if(snapshot.hasData){
                  List<Dragon1Texts> listData= snapshot.data;
                  return Container(
                    child:ListView.builder(
                      itemCount: listData.length,
                      itemBuilder: (context,index){
                        print(index);
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title: Text(listData[index].name,style: TextStyle(color: Colors.white,fontSize: 22),),
                            subtitle: Text('type:${listData[index].type}\n Active:${listData[index].active==true?'yes':'No'}',style: TextStyle(color: Colors.white,fontSize: 17),),
                            leading: CircleAvatar(backgroundImage: NetworkImage(listData[index].imagesF[0]),radius: 50,),
                          ),
                        );
                      },
                    ),
                  );
                }else if(snapshot.hasError){
                  print('the error is ${snapshot.error}');
                  return NotConnected();
                }else{
                  print('the error is ${snapshot.error}');
                  return NotConnected();
                }
              },
            )
              ,),
            Center(child:FutureBuilder<List<LaunchesData>>(
              future: GetLaunchesData(),
              builder: (context,snapshot){
                if(snapshot.connectionState!=ConnectionState.done){
                  return CircularProgressIndicator();
                }else if(snapshot.hasData){
                  List<LaunchesData> listLaunches= snapshot.data;
                  return Container(
                    child:ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context,index){
                        print(index);
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title: Text(listLaunches[index].name,style: TextStyle(color: Colors.white,fontSize: 22),),
                            subtitle: Text('${listLaunches[index].details.substring(0,40)}\ndate:${listLaunches[index].date_local.substring(0,10)}',style: TextStyle(color: Colors.white,fontSize: 17),),
                            leading: CircleAvatar(backgroundImage:NetworkImage(listLaunches[index].smallImg),radius: 50,),
                          ),
                        );
                      },
                    ),
                  );
                }else if(snapshot.hasError){
                  print('the error is ${snapshot.error}');
                  return NotConnected();
                }else{
                  print('the error is ${snapshot.error}');
                  return NotConnected();
                }
              },
            )
              ,),



            Center(child: FutureBuilder<List<ShipsModel>>(
              future: GetShipsData(),
              builder: (context, snapshot) {
                if(snapshot.connectionState!=ConnectionState.done){
                  return CircularProgressIndicator();
                }else if (snapshot.hasError){
                   print('the error is ${snapshot.error}');
                   return NotConnected();
                }else if(snapshot.hasData){
                  List<ShipsModel> list=snapshot.data;
                  return Container(
                    child:ListView.builder(
                      itemCount: 8,
                      itemBuilder: (context,index){
                        print(index);
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title: Text('${list[index].name}',style: TextStyle(color: Colors.white,fontSize: 22),),
                            subtitle: Text('${list[index].details}\nsucc:${list[index].succ}',style: TextStyle(color: Colors.white,fontSize: 17),),
                            leading: CircleAvatar(backgroundImage:NetworkImage(list[index].imageSmall),radius: 50,),
                          ),
                        );
                      },
                    ),
                  );
                }else{
                  print('the error is ${snapshot.error}');
                  return NotConnected();
                }
              },
            ))



          ])
        ),
      ),
    );

  }
  Future<List<Dragon1Texts>> GetDragon1Texts()async{
    try{
      List<Dragon1Texts> listOfDragonTexts=[];
      var response= await Dio().get('https://api.spacexdata.com/v4/dragons');
      response.data.forEach((element){
        listOfDragonTexts.add(Dragon1Texts.fromJson(element));

      });
      print(listOfDragonTexts);
      return listOfDragonTexts;
    }catch(e){
      print(e);
    }
  }
  Future<List<LaunchesData>> GetLaunchesData()async{
    try{
      List<LaunchesData> listOfLaunchesTexts=[];
      var response= await Dio().get('https://api.spacexdata.com/v4/launches');
      response.data.forEach((element){
        listOfLaunchesTexts.add(LaunchesData.fromJson(element));

      });
      print(listOfLaunchesTexts);
      return listOfLaunchesTexts;
    }catch(e){
      print(e);
    }
  }
  Future<List<ShipsModel>>GetShipsData()async{
    var response = await Dio().get('https://api.spacexdata.com/v4/launches/past');
    print('Ships response is $response');
    List<ShipsModel> listOfShips=[];
    response.data.forEach((indexOfList){
      listOfShips.add(ShipsModel.fromJson(indexOfList));
      print(' the index number 0 is ${listOfShips[0]}');
    });
    return listOfShips;
  }

  
}
AlertDialog NotConnected() =>AlertDialog(
  title: Text('Kindly check your internet connection and try again !')
  ,elevation: 40 ,
  backgroundColor:Colors.grey,);







/*
     Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(300),
                      topRight: Radius.circular(300)),
                ),
              )
 */

/*
Future<List<DragonImages>>  GetDragonImage()async{
    List<DragonImages> listImages=[];
    var response= await Dio().get('https://api.spacexdata.com/v4/dragons');
    response.data.forEach((element){
      listImages.add(DragonImages.fromJson(element));
    });
    print(listImages);

    return listImages;
}

 */