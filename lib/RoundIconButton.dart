
import 'package:flutter/material.dart';
class RoundIconButton extends StatelessWidget {
  RoundIconButton(this.icon, {this.onPressed});

  final IconData icon;
 final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 20.0,
      shape: CircleBorder(),
      constraints: const BoxConstraints.tightFor(
        height: 50.0,
        width: 50.0,
      ),
      // fillColor: Color(0XFF4C4F5E),
      fillColor: Colors.blueGrey,
      child: Icon(icon),
    );
  }
}