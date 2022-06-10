import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double? _bmi;

  CalculatorBrain({required this.height, required this.weight});

  String? calculateBMI() {
    this._bmi = weight / pow(height / 100, 2);
    return _bmi?.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 23) {
      return 'OverWeight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    }
    return 'UnderWeight';
  }

  String getInterpretation() {
    if (_bmi! >= 23) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi! > 18.5) {
      return 'You have a normal body weight. Good job!';
    }
    return 'You have a lower than normal body weight. You can eat a bit more.';
  }
}
