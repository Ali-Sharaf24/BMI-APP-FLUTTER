import 'package:bmi/Component/ReusableCard.dart';
import 'package:flutter/material.dart';
import '../Component/Constants.dart';
import '../Component/BottomButton.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({required this.bmiResult,required this.interpretation,required this.resultText});
 final String bmiResult;
 final String resultText;
 final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Center(
                  child: Text(
                    'Your Result',
                    style: KTitleTextStyle,
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: ReusableCard(
                  colour: KActiveCardColorColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(resultText.toUpperCase(),style:KResultTextStyle ,),
                      Text(bmiResult.toUpperCase(),style:KBmiTextStyle ,),
                      Text(interpretation.toUpperCase(),textAlign: TextAlign.center,style:KBodyTextStyle ,),
                      Text(''),
                    ],
                  ),
                ) ),
           Expanded(
             child: BottomButton(
               onTap: (){

                 Navigator.pop(context);
               },
               buttonTitle: 'Re-Calculate',
             ),
           )
          ],
        ));
  }
}



