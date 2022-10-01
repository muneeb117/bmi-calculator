import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {

  ReusableContainer(this.colour, this.CardChild, {this.gesture});

  final Color colour;
  final Widget CardChild;
  final Function()? gesture;

  @override
  Widget build(BuildContext context) {

    return
      GestureDetector(
        onTap:gesture,
        child: Container(
          margin:  EdgeInsets.all(15),
          padding:  EdgeInsets.all(10),
          decoration: BoxDecoration(
              color:  colour,
              borderRadius: BorderRadius.circular(10)),
          child: CardChild,

        ),
      );
    }
  }
