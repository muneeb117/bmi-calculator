import 'package:bmi_calculator/Calculator_Brain.dart';
import 'package:flutter/material.dart';
import 'Reusable_Card.dart';
import 'constants.dart';
import 'bottomButton.dart';
import 'package:bmi_calculator/Reusable_Card.dart';

class result_page extends StatelessWidget {

  result_page(this.calBmi,this.getResult,this.getInterpetation);

  final String calBmi;
  final String getResult;
  final String getInterpetation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: Colors.grey,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
            Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Results',
                style: kTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableContainer(
              Colors.white70,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  Text(
                getResult,
                    style: const TextStyle(
                      color: Colors.green,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    calBmi,
                    style:const TextStyle(
                      color: Colors.black,
                      fontSize: 53,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    getInterpetation,

                    textAlign: TextAlign.center,
                    style: const TextStyle(

                      color: Colors.blueGrey,

                      fontSize: 25,

                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomButton('RE-CALCULATE', onPress: (){
            Navigator.pop(context);
          })
        ],
      ),
    );
  }
}
