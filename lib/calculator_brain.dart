
import 'dart:math';


class CalculatorBrain{
  double bmi = 0.0;
  CalculatorBrain({required this.weight,required this.height, required this.bmi}): _bmi = bmi ;
  final int height ;
  final int weight ;
  double _bmi;

  String calculateBMI(){

    _bmi = weight / pow(height/100, 2);
return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 25){
      return'over weight';
    }else if(_bmi > 18.5){
      return 'Normal';
    }else{
      return 'Under Weight';
    }
  }
  String getInterpretation(){
    if(_bmi >= 25){
      double change = _bmi - 18.5;
      return'you have a higher than normal body weight. Try to exercise more to loss '+ change.toStringAsFixed(1) + ' kg';
    }else if(_bmi > 18.5){
      return 'you have a normal body weight. Good job';
    }else{
      double change = _bmi - 18.5;
      return 'you have a lower than the normal body weight. you can eat a bit more to increase about '+ change.toStringAsFixed(1) + ' kg';
    }
  }


}

