import 'dart:math';
import 'main.dart';

class CalculateBmi{
  double weight,height;
  CalculateBmi(this.height,this.weight);
  late double _bmi;
  String BMI(){
    _bmi = weight / pow(height/ 100,2);
    return _bmi.toStringAsFixed(1);
  }
  String ResultLine(){
    if (_bmi < 18.5) {
      return "Eat more please";
    } else if ((_bmi) >= 18.5 && (_bmi) <= 24.9) {
      return "You are normal";

    } else if (_bmi >= 25 && _bmi <= 29.9) {
      return "You are overweight";
    } else {
      return "Control your diet";
    }
  }

  double Percentage(){
    if (_bmi < 18.5) {
      return 0.25;
    } else if ((_bmi) >= 18.5 && (_bmi) <= 24.9) {
      return 0.7;

    } else if (_bmi >= 25 && _bmi <= 29.9) {
      return 0.2;
    } else {
      return 0.1;
    }
  }

}