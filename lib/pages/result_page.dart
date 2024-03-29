import 'package:bmi_calculator/constances.dart';
import 'package:flutter/material.dart';

import '../widgets/reusable_card.dart';
import '../widgets/bottom_button.dart';
import '../widgets/result_body_text.dart';

class ResultPage extends StatelessWidget {
  static const routeName = '/result';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final String bmiResult = routeArgs['bmiResult'];
    final String resultText = routeArgs['resultText'];
    final String resultInterpretation = routeArgs['resultInterpretation'];

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
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
                    resultText,
                    style: TextStyle(
                      color: Color(0xFF24D276),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    bmiResult,
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Normal BMI Range:',
                        style: TextStyle(
                          fontSize: 22,
                          color: Color(0xFF808390),
                        ),
                      ),
                      ResultBodyText(
                        '18.5 - 25 kg/m2',
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: ResultBodyText(
                      resultInterpretation,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: "RE-CALCULATE",
            ),
          ),
        ],
      ),
    );
  }
}
