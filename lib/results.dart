import 'package:bmi_calculator/ReusableCard.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class Results extends StatelessWidget {

  final String results;
  final String bmi;
  final String interpretation;

  Results({@required this.bmi, this.results, this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("BMI Calculator"))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Results",
                style: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: ReusableCard(
              colour: primaryColor,
              onPress: () {},
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    results,
                    style: TextStyle(
                      color: Color(0XFF24D876),
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0
                    ),
                  ),
                  Text(
                    bmi,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 90.0,
                      fontWeight: FontWeight.w800
                    ),
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.0
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: double.infinity,
              height: bottomButtonHeight,
              color: accentColor,
              margin: EdgeInsets.only(top: 10.0),
              child: Center(
                child: Text('Re - Calculate Your BMI !'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
