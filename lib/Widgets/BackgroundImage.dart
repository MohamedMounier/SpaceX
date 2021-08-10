import 'package:flutter/material.dart';
class BackgroundImage extends StatelessWidget{
  BackgroundImage({@required this.backgroundImage,@required this.child1});
  final String backgroundImage;
  final Widget child1;
  @override
  Widget build(BuildContext context) {

    return Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),
    image: AssetImage(backgroundImage),
    fit: BoxFit.cover),
    ),
      child: child1
    );
  }
}
