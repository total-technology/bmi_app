import 'package:bmi_app/NewContainerWidget.dart';
import 'package:bmi_app/constant.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

class resultpage extends StatelessWidget {
  final String bmiresult;
  final String resulttext;
  final String resultInterpret;

  resultpage(
      {@required this.bmiresult,
      @required this.resultInterpret,
      @required this.resulttext});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Your Result',
              style: kLabelTextstyle,
            ),
            Expanded(
              child: Newcontainer(
                  colour: kActiveWidgetColour,
                  containerChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        resulttext,
                        style: kLabelTextstyle,
                      ),
                      Text(
                        bmiresult,
                        style: TextStyle(
                            fontSize: 100, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Normal BMI Range:',
                        style: kTextstyle,
                      ),
                      Text(
                        '18,5 to 25 kg/m2',
                        style: kTextstyle,
                      ),
                      Center(
                        child: Text(
                          resultInterpret,
                          style: kTextstyle,
                        ),
                      ),
                    ],
                  )),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
              color: kBottomContainerColour,
              height: kBottomContainerHeight,
              child: Center(
                child: FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                    print('go to next screen');
                  },
                  child: Text(
                    'RE-CALCULATE YOUR BMI',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
