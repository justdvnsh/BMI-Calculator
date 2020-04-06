import 'package:flutter/material.dart';
import 'dart:math';

class Calculator {

  final int height;
  final int weight;

  double _bmi;

  Calculator({@required this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if ( _bmi > 18.5 ) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "You're Overweight ! Workout more, seriously !!";
    } else if ( _bmi > 18.5 ) {
      return "Fantastic. You are perfect my friend ! Just keep being you !";
    } else {
      return "You need to eat bruh !";
    }
  }
}
