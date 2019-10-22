import 'package:bmi_calculator/constances.dart';
import 'package:flutter/material.dart';

import '../widgets/reusable_card.dart';

class ResultPage extends StatelessWidget {
  static const routeName = '/result';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Text(
              'Your Result',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardColor: kInActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Normal',
                    style: TextStyle(
                      color: Color(0xFF24D276),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '20.5',
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Your BMI result is quiet low, please eat some healthy food.',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Text(
              'data',
            ),
          ),
        ],
      ),
    );
  }
}
