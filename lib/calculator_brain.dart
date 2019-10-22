import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;

  CalculatorBrain({
    @required this.height,
    @required this.weight,
  });

  // BMI Equation = body weight(kg) / body height(m)
  // We are getting height as (cm). So we have to convert height from centimeter to meter
  // height conversion equation = centimeter / 100

  String calculateBMI() {
    _bmi = weight /
        pow(height / 100,
            2); // pow() -> Returns [x] to the power of [exponent].
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "OVERWEIGHT";
    } else if (_bmi > 18.5) {
      return "NORMAL";
    } else {
      return "UNDERWEIGHT";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "You have a heigher than normal body weight. Try to exercise more.";
    } else if (_bmi > 18.5) {
      return "You have a normal body weight. Try to keep maintain this.";
    } else {
      return "You have a lower than normal body weight. Try to eat some healthy food.";
    }
  }
}
