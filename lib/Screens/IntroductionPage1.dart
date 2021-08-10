import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'package:prefinal_aff/Widgets/IntorductionPageInfo.dart';
class IntroductionPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: IntroductionScreen(
      globalBackgroundColor: Colors.black,
      skip: Text('Skip'),
      showSkipButton: true,
      next:Icon(Icons.arrow_forward),
      showNextButton: true,
      done: Text('Finish'),
      onDone: (){
        Navigator.pushNamed(context, '/LoginScreen');
      },
      pages: [
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
        ),
        PageViewModel(
            title: 'Dragon spacecraft',
            body: 'SpaceX announced plans to pursure a human-rated commercial space program through the end of decade',
            image: Image.asset('assets/images/SpaceCraft3.jpg',width: 350,),
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
        ),
        PageViewModel(
            title: 'Dragon spacecraft',
            body: 'SpaceX announced plans to pursure a human-rated commercial space program through the end of decade',
            image: Container(
                decoration: BoxDecoration(shape: BoxShape.circle ),
                child: Image.asset('assets/images/SpaceCraft4.jpg',width: 350,)),
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
        ),
      ],
    ));
  }
}

