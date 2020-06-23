import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;
  CalculatorBrain({this.height, this.weight});
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResultText() {
    if (_bmi >= 25)
      return 'Overweight';
    else if (_bmi > 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getResultInterpretation() {
    if (_bmi >= 25)
      return 'Your BMI result is quite high, you should exercise more!';
    else if (_bmi > 18.5)
      return 'Your BMI result is normal, keep doing what you are doing!';
    else
      return 'Your BMI result is quite low, you should eat more!';
  }
}
