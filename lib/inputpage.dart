import 'package:bmi_app/NewContainerWidget.dart';
import 'package:bmi_app/NewContainer_IconWidget.dart';
import 'package:bmi_app/resultpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'appbrain.dart';
import 'constant.dart';

enum Gender { male, female }

class Inputpage extends StatefulWidget {
  @override
  _InputpageState createState() => _InputpageState();
}

/*Color maleInitialColour = inactiveWidgetColor;
Color femaleInitialColour = inactiveWidgetColor;*/

/*
void colorChange(gender) {
  if (gender == Gender.male && maleInitialColour == inactiveWidgetColor) {
    maleInitialColour = activeWidgetColour;
    femaleInitialColour = inactiveWidgetColor;
  } else if (gender == Gender.female &&
      femaleInitialColour == inactiveWidgetColor) {
    femaleInitialColour = activeWidgetColour;
    maleInitialColour = inactiveWidgetColor;
  }
}
*/
Gender selectedGender;

class _InputpageState extends State<Inputpage> {
  @override
  int height = 180;
  int weight = 70;
  int age = 20;

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Newcontainer(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                    print('Male button selected');
                  },
                  colour: selectedGender == Gender.male
                      ? kActiveWidgetColour
                      : kInactiveWidgetColor,
                  containerChild: IconWidget(
                    widgetIcon: FontAwesomeIcons.mars,
                    widgetText: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: Newcontainer(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                    print('Female button selected');
                  },
                  colour: selectedGender == Gender.female
                      ? kActiveWidgetColour
                      : kInactiveWidgetColor,
                  containerChild: IconWidget(
                    widgetIcon: FontAwesomeIcons.venus,
                    widgetText: 'FEMALE',
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Newcontainer(
              colour: kInactiveWidgetColor,
              containerChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'HEIGHT',
                      style: kTextstyle,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kLabelTextstyle,
                      ),
                      Text('CM', style: TextStyle(fontSize: 10)),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      thumbColor: Colors.pink,
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xff888895),
                      overlayColor: Color(0x29EA1556),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      onChanged: (_height) {
                        setState(() {
                          height = _height.round();
                        });
                        print(_height);
                      },
                      min: 10,
                      max: 220,
                      //activeColor: Colors.white,
                      //inactiveColor: Color(0xff888895),
                    ),
                  ),
                ],
              )),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Newcontainer(
                  colour: kInactiveWidgetColor,
                  containerChild: Column(
                    children: <Widget>[
                      Text(
                        'WEIGHT',
                        style: kTextstyle,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            weight.toString(),
                            style: kLabelTextstyle,
                          ),
                          Text('KG')
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                              print('minus pressed $weight');
                            },
                            backgroundColor: kActiveWidgetColour,
                            heroTag: null,
                            child: Icon(
                              FontAwesomeIcons.minus,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                              print('plus pressed $weight');
                            },
                            backgroundColor: kActiveWidgetColour,
                            heroTag: null,
                            child: Icon(
                              FontAwesomeIcons.plus,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Newcontainer(
                  colour: kInactiveWidgetColor,
                  containerChild: Column(
                    children: <Widget>[
                      Text(
                        'AGE',
                        style: kTextstyle,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            age.toString(),
                            style: kLabelTextstyle,
                          ),
                          Text('Years')
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                              print('minus pressed $weight');
                            },
                            backgroundColor: kActiveWidgetColour,
                            heroTag: null,
                            child: Icon(
                              FontAwesomeIcons.minus,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          FloatingActionButton(
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                              print('plus pressed $weight');
                            },
                            backgroundColor: kActiveWidgetColour,
                            heroTag: null,
                            child: Icon(
                              FontAwesomeIcons.plus,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 10),
          color: kBottomContainerColour,
          height: kBottomContainerHeight,
          child: Center(
            child: FlatButton(
              onPressed: () {
                BmiCalculator calc =
                    BmiCalculator(height: height, weight: weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => resultpage(
                      bmiresult: calc.calculate(),
                      resulttext: calc.getResult(),
                      resultInterpret: calc.getInterpretation(),
                    ),
                  ),
                );

                print(calc.calculate());
              },
              child: Text(
                'CALCULATE YOUR BMI',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
