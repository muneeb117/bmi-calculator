import 'package:flutter/material.dart';
import 'package:bmi_calculator/InputPage.dart';


void main() {
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.light().copyWith(
       //primaryColor: const Color(0xFF13193A),
        primaryColor: Colors.white,
       // scaffoldBackgroundColor:const Color(0xFF141A3C),
        scaffoldBackgroundColor:Colors.grey,

        ),


    );
  }

}
