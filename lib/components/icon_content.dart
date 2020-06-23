import 'package:flutter/material.dart';

import '../constants.dart';

class GenderCardChild extends StatelessWidget {
  final String genderText;
  final IconData icon;

  const GenderCardChild({@required this.genderText, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: 80.0),
        SizedBox(
          height: 15.0,
        ),
        Text(genderText, style: kLabelTextStyle)
      ],
    );
  }
}
