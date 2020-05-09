import 'dart:math';

class BmiCalculator{
  
  BmiCalculator({this.height, this.weight});

  final String height;
  final String weight;

  double bmiresult;

  String calculateBmi(){
    bmiresult = double.parse(weight)/pow(double.parse(height), 2);
    return bmiresult.toStringAsFixed(1);
  }

  String getResult(){
    if (bmiresult > 25) {
      return "Overweight";
    } else if(bmiresult >18.5) {
      return "Normal";
    }else{
      return "Underweight";
    }
  }

}