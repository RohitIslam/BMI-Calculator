import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../pages/result_page.dart';

import '../widgets/reusable_card.dart';
import '../widgets/reusable_icon_content.dart';
import '../widgets/reusable_mid_input_card.dart';
import '../widgets/bottom_button.dart';

import '../constances.dart';
import '../calculator_brain.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int usersHeight = 165;
  int usersWeight = 50;
  int usersAge = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI CALCULATOR',
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardColor: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    cardChild: const ResuableIconContent(
                      fontIcon: FontAwesomeIcons.mars,
                      contentText: "MALE",
                    ),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cardColor: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    cardChild: const ResuableIconContent(
                      fontIcon: FontAwesomeIcons.venus,
                      contentText: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardColor: kMidContainerColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "HEIGHT",
                      style: kLabelTextStyle,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        usersHeight.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        "cm",
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: usersHeight.toDouble(),
                    min: 90,
                    max: 240,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (newHeight) {
                      setState(() {
                        usersHeight = newHeight.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardColor: kMidContainerColor,
                    cardChild: ResuableMidInputCard(
                      cardTitle: "WEIGHT",
                      cardValue: usersWeight,
                      onPress1: () {
                        setState(() {
                          usersWeight++;
                        });
                      },
                      onPress2: () {
                        setState(() {
                          usersWeight--;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: kMidContainerColor,
                    cardChild: ResuableMidInputCard(
                      cardTitle: "AGE",
                      cardValue: usersAge,
                      onPress1: () {
                        setState(() {
                          usersAge++;
                        });
                      },
                      onPress2: () {
                        setState(() {
                          usersAge--;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            onTap: () {
              if (selectedGender == null) {
                Alert(
                  style: AlertStyle(
                    backgroundColor: kScaffoldBackgroundColor,
                    titleStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0,
                    ),
                    descStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
                  ),
                  context: context,
                  title: "ALERT..!!",
                  desc: "Please select your gender.",
                  buttons: [
                    DialogButton(
                      child: Text(
                        "OK",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () => Navigator.pop(context),
                      width: 120,
                      color: kBottomContainerColor,
                    )
                  ],
                ).show();
              } else {
                CalculatorBrain calB = CalculatorBrain(
                  height: usersHeight,
                  weight: usersWeight,
                );

                Navigator.of(context)
                    .pushNamed(ResultPage.routeName, arguments: {
                  'bmiResult': calB.calculateBMI(),
                  'resultText': calB.getResult(),
                  'resultInterpretation': calB.getResultInterpretation(),
                });
              }
            },
            buttonTitle: 'CALCULATE YOUR BMI',
          ),
        ],
      ),
    );
  }
}
