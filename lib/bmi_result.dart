import 'constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';

class BMI_Result extends StatelessWidget {
  BMI_Result(
      {required this.bmi_result,
      required this.bmi_value,
      required this.bmi_interpretation});
  late String bmi_result;
  final String bmi_value;
  final String bmi_interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'RESULT',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmi_result,
                    style: kResultTextStyle,
                  ),
                  Text(
                    'BMI normal range (19.0-23.0)',
                    style: kResultRangeTextStyle,
                  ),
                  Text(
                    bmi_value,
                    style: kBMITextStyle,
                  ),
                  Text(
                    bmi_interpretation,
                    style: kResultBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            bottomButtonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ], //
      ),
    );
  }
}
