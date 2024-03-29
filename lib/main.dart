import 'package:flutter/material.dart';

import './pages/input_page.dart';
import './pages/result_page.dart';

import './constances.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF101639),
        scaffoldBackgroundColor: kScaffoldBackgroundColor,
      ),
      initialRoute: '/', // this route is the home route or default route
      routes: {
        '/': (ctx) => InputPage(),
        ResultPage.routeName: (ctx) => ResultPage(),
      },
    );
  }
}
