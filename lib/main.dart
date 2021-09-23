import 'package:flutter/material.dart';
import 'Screens/input_page.dart';

void main() async{
  runApp (BMICalculator());
}

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff23232c),//Color(0xFF0A0E21),
        scaffoldBackgroundColor:Color(0xff23232c), //Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}

