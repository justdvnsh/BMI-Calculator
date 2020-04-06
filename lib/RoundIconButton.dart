import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {

  final IconData iconData;
  final Function onClick;

  RoundIconButton({@required this.iconData, this.onClick});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
      onPressed: onClick,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0
      ),
      shape: CircleBorder(),
      fillColor: Color(0XFF4C4F5E),
    );
  }
}
