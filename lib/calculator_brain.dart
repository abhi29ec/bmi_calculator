import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.weight, required this.height});
  final int height;
  final int weight;
  double? _bmi = 0.0;

  String getResult() {
    if (_bmi! >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi! > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getInterpretation() {
    if (_bmi! >= 25) {
      return 'Dharti pe bojh, kam khaya kar';
    } else if (_bmi! > 18.5) {
      return 'Shaabhaash, lage raho';
    } else {
      return 'Khane ko nahi milta kya?';
    }
  }
}
