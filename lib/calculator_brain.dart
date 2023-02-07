import 'dart:math';
class CalculatorBrain {

  final int height;
  final int weight;
  double get _bmi => weight/ pow(height/100, 2);
  CalculatorBrain({required this.height, required this.weight});

  String calculateBMI(){
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    this.calculateBMI();
    print('get Result $_bmi');
    if(_bmi>=25){
      return 'Overweight';
    } else if (_bmi>18.5){
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
  String getInterpretation(){
    this.calculateBMI();
    print('getInerpret $_bmi');
    if(_bmi>=25){
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi>18.5){
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}