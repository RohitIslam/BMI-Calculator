import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/round_icon_button.dart';

import '../constances.dart';

class ResuableMidInputCard extends StatelessWidget {
  final String cardTitle;
  final int cardValue;
  final Function onPress1;
  final Function onPress2;

  const ResuableMidInputCard({
    @required this.cardTitle,
    @required this.cardValue,
    @required this.onPress1,
    @required this.onPress2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          cardTitle,
          style: kLabelTextStyle,
        ),
        Text(
          cardValue.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onPress: onPress1,
            ),
            SizedBox(
              width: 10,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onPress: onPress2,
            ),
          ],
        ),
      ],
    );
  }
}
