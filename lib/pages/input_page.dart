import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../pages/result_page.dart';

import '../widgets/reusable_card.dart';
import '../widgets/reusable_icon_content.dart';
import '../widgets/round_icon_button.dart';

import '../constances.dart';

enum Gender { male, female }

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
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "WEIGHT",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          usersWeight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  usersWeight++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  usersWeight--;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: kMidContainerColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "AGE",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          usersAge.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  usersAge++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  usersAge--;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(
                ResultPage.routeName,
              );
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 10),
              // padding: EdgeInsets.only(bottom: 10),
              color: kBottomContainerColor,
              width: double.infinity,
              height: 80,
              child: Text(
                'CALCULATE YOUR BMI',
                style: kLargeButtonTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
