import 'package:flutter/material.dart';

import '../widgets/reusable_card.dart';

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
                  child: ReusableCard(Color(0xFF1D1F33)),
                ),
                Expanded(
                  child: ReusableCard(Color(0xFF1D1F33)),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(Color(0xFF1D1F33)),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(Color(0xFF1D1F33)),
                ),
                Expanded(
                  child: ReusableCard(Color(0xFF1D1F33)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
