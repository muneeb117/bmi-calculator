import 'package:bmi_calculator/Calculator_Brain.dart';
import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Icon_Content.dart';
import 'Reusable_Card.dart';
import 'constants.dart';
import 'package:bmi_calculator/RoundIconButton.dart';
import 'bottomButton.dart';
import 'Calculator_Brain.dart';

enum Gender {
  male,
  female,
  other,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender SelectedGender = Gender.other;
  int height = 180;
  int weight = 60;
  int age = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
        backgroundColor:Colors.grey,
        elevation: 0,
      ),
      drawer: const Drawer(
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                child: ReusableContainer(
                  gesture: () {
                    setState(() {
                      SelectedGender = Gender.female;
                    });
                  },
                  SelectedGender == Gender.female
                      ? kactive_Color
                      : kinactove_color,
                  Icon_Content(
                    FontAwesomeIcons.venus,
                    'Female',
                  ),
                ),
              ),
              Expanded(
                child: ReusableContainer(
                  gesture: () {
                    setState(() {
                      SelectedGender = Gender.male;
                    });
                  },
                  SelectedGender == Gender.male
                      ? kactive_Color
                      : kinactove_color,
                  Icon_Content(
                    FontAwesomeIcons.mars,
                    'Male',
                  ),
                ),
              ),
            ]),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: ReusableContainer(
                  gesture: () {},
                  kcoloir,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Height',
                        style: klabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: kTextStyle,
                          ),
                          // SizedBox(width: 4.0),
                          const Text(
                            'cm',
                            style: klabelTextStyle,
                          ),
                        ],
                      ),
                      //Color(0xFF8D8E98),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbColor: Colors.pink[300],
                          activeTrackColor: Colors.purple[300],
                          overlayColor: const Color(0x29EB1555),
                          thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 15.0),
                          overlayShape: const RoundSliderOverlayShape(
                              overlayRadius: 29.0),
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          inactiveColor: Colors.purple.shade100,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableContainer(
                      kcoloir,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Weight', style: klabelTextStyle),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(weight.toString(), style: kTextStyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              const SizedBox(width: 20),
                              RoundIconButton(
                                FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      )),
                ),
                Expanded(
                  child: ReusableContainer(
                      kcoloir,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Age',
                            style: klabelTextStyle,
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            age.toString(),
                            style: kTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(FontAwesomeIcons.minus,onPressed: (){
                                setState(() {
                                  age>=1?age--:age;
                                });
                              },),
                              const SizedBox(
                                width: 20.0,

                              ),
                              RoundIconButton(FontAwesomeIcons.plus,onPressed: (){
                                setState(() {
                                  age++;
                                });
                              }),

                            ],
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
          bottomButton(
            'CALCULATE',
            onPress: (){
              CalculatorBrain cal=CalculatorBrain(height:height,weight: weight);
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  result_page(
                  cal.calculateBMI(),  cal.getResult(),cal.getInterpretation(),
                )));
          },)
        ],
      ),
    );
  }

}
