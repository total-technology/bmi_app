import 'package:flutter/material.dart';

import 'inputpage.dart';

void main() {
  runApp(BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    theme: ThemeData.dark().copyWith(
    accentColor: Color(0xffEA1556),
    primaryColor: Color(0xff090D22),
    scaffoldBackgroundColor: Color(0xff090D22),
    ),
      home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                'BMI Calculator',
                //style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          body: Inputpage()),
    );
  }
}
