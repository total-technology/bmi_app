import 'package:bmi_app/constant.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

const double iconSize = 80;

class IconWidget extends StatelessWidget {
  final String widgetText;
  final IconData widgetIcon;

  IconWidget({@required this.widgetIcon, @required this.widgetText});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          widgetIcon,
          size: iconSize,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          widgetText,
          style: kTextstyle,
        )
      ],
    );
  }
}
