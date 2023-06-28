import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30) {
      return 'Obese';
    } else if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else if (_bmi < 18.5) {
      return 'Underweight';
    } else {
      return 'error';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30) {
      return 'You have a very high body weight. Try to exercise and diet a lot.';
    } else if (_bmi > 25) {
      return 'You have higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight.Good job.';
    } else if (_bmi < 18.5) {
      return 'You have a lower than normal body weight. Try to eat more.';
    } else {
      return 'error';
    }
  }
}
