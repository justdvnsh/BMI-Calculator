import 'package:flutter/material.dart';
import 'constants.dart';

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