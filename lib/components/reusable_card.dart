import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color, this.cardChild, this.tapFunction});

  final Color color;
  final Widget cardChild;
  final Function tapFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        tapFunction();
      },
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
