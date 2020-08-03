import 'dart:math';

class BmiCalculator {
  final int height;
  final int weight;
  double _bmi;
  BmiCalculator({this.weight, this.height});
  show() {
    print('height is $height');
    print(weight);
  }

  String calculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight, good job.';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
