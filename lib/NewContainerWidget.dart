import 'package:flutter/material.dart';

class Newcontainer extends StatelessWidget {
  final Color colour;
  final Widget containerChild;
  final Function onPress;
  Newcontainer({@required this.colour, this.containerChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
        child: containerChild,
      ),
    );
  }
}
