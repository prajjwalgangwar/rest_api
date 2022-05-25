import 'package:flutter/cupertino.dart';

class AnimatedTitle extends StatefulWidget{
  @override
  AnimatedTitleState createState()=> AnimatedTitleState();

}

class AnimatedTitleState extends State<AnimatedTitle>{
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }

  Widget letterAnimation(){
    return Container(
      width: 10,

      child: Text('x'),
    );
  }
}