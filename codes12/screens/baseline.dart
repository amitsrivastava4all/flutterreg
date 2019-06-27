import 'package:flutter/material.dart';

class BaseLine extends StatelessWidget {
  bool isRow = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: <Widget>[
        Text(
          'BASELINE',
          style: TextStyle(fontSize: 30),
        ),
        Text(
          'BASELINE2',
          style: TextStyle(fontSize: 70),
        )
      ],
    );
  }
}
