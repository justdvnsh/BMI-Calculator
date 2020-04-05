
import 'package:flutter/material.dart';
import 'ReusableCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';

// consts.
// heights and widths
const bottomButtonHeight = 80.0;
// colors
const primaryColor = Color(0XFF1D1E33);
const inActiveCardColor = Color(0XFF111328);
const accentColor = Color(0XFFEB1555);

// enum for gender
enum Gender {
  male, female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = inActiveCardColor;
  Color femaleCardColor = inActiveCardColor;

  void updateColor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      // male card was pressed
      if (maleCardColor == inActiveCardColor) {
        maleCardColor = primaryColor;
        femaleCardColor = inActiveCardColor;
      } else {
        maleCardColor = inActiveCardColor;
      }
    } else if (selectedGender == Gender.female) {
      // female card pressed
      if (femaleCardColor == inActiveCardColor) {
        femaleCardColor = primaryColor;
        maleCardColor = inActiveCardColor;
      } else {
        femaleCardColor = inActiveCardColor;
      }
    }
  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.male);
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColor,
                      cardChild: IconContent(
                        name: "MALE",
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.female);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleCardColor,
                      cardChild: IconContent(
                        name: "FEMALE",
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
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