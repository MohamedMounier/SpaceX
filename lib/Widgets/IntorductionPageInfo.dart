import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
// image of the introduction page
Image buildimage (String path){
  Image(image: AssetImage(path),);
}

// the page decorations

PageDecoration getPageDecoration(){

  //  image: buildimage('assets/images/SpaceCraft2.jpg'),//(Not working)
  decoration: PageDecoration(
  titleTextStyle: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),
  bodyTextStyle: TextStyle(fontSize: 18,color: Colors.white),
  descriptionPadding: EdgeInsets.all(16),
  imagePadding: EdgeInsets.only(top: 70),
  titlePadding: EdgeInsets.only(top: 30),
  contentMargin: EdgeInsets.only(top: 20),
  imageAlignment: Alignment.bottomCenter,

  );
}
PageViewModel gePageInfo(){
  PageViewModel(
      title: 'Dragon spacecraft',
      body: 'SpaceX announced plans to pursure a human-rated commercial space program through the end of decade',
      image: Image.asset('assets/images/SpaceCraft2.jpg',width: 350,),
      //  image: buildimage('assets/images/SpaceCraft2.jpg'),//(Not working)
      decoration: PageDecoration(
        titleTextStyle: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),
        bodyTextStyle: TextStyle(fontSize: 18,color: Colors.white),
        descriptionPadding: EdgeInsets.all(16),
        imagePadding: EdgeInsets.only(top: 70),
        titlePadding: EdgeInsets.only(top: 30),
        contentMargin: EdgeInsets.only(top: 20),
        imageAlignment: Alignment.bottomCenter,

      )
  );
}
