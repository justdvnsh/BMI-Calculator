import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
    fontSize: 18.0,
    color: Color(0XFF8D8E98)
);

const heightOfSizedBox = 15.0;
const iconSize = 80.0;

class IconContent extends StatelessWidget {

  final String name;
  final IconData icon;

  IconContent({this.name, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(
          height: heightOfSizedBox,
        ),
        Text(
          name,
          style: labelTextStyle
        ),
      ],
    );
  }
}