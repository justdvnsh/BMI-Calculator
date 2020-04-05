
import 'package:flutter/material.dart';
import 'ReusableCard.dart';

// consts.
// heights and widths
const bottomButtonHeight = 80.0;
// colors
const primaryColor = Color(0XFF1D1E33);
const accentColor = Color(0XFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text("BMI Calculator"),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: primaryColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: primaryColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: primaryColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: primaryColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: primaryColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: bottomButtonHeight,
            color: accentColor,
            margin: EdgeInsets.only(top: 10.0),
            child: Center(
                child: Text('Calculate Your BMI !'),
            ),
          ),
        ],
      ),
    );
  }
}