import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/reusable_card.dart';
import '../widgets/reusable_icon_content.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    cardColor: Color(0xFF1D1F33),
                    cardChild: ResuableIconContent(
                      fontIcon: FontAwesomeIcons.mars,
                      contentText: "MALE",
                      contentTextColor: Color(0xFF808390),
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: Color(0xFF1D1F33),
                    cardChild: ResuableIconContent(
                      fontIcon: FontAwesomeIcons.venus,
                      contentText: "FEMALE",
                      contentTextColor: Color(0xFF808390),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardColor: Color(0xFF101427),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardColor: Color(0xFF101427),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: Color(0xFF101427),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            color: Color(0xFFEA1556),
            width: double.infinity,
            height: 80,
          ),
        ],
      ),
    );
  }
}
