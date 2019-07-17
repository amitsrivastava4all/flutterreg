import 'package:flutter/material.dart';

import './child.dart';

class Parent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      child: Column(
        children: <Widget>[
          Text(
            'Parent Data is ',
            style: TextStyle(fontSize: 30),
          ),
          Child()
        ],
      ),
    );
  }
}
