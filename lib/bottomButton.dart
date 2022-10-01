import 'package:flutter/material.dart';
import 'constants.dart';

class bottomButton extends StatelessWidget {


  bottomButton(this.text, {required this.onPress});
  final String text;
  final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPress,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 100,vertical: 9),
       padding: EdgeInsets.all(25),

        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(40),
        ),
        height: kbottomContainerHeight,
        child:Center(
          child:  Text(
              text,style:TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
          )
          ),
        ),
      ),
    );
  }
}


