import 'package:flutter/material.dart';

class Mix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 100,
          width: 100,
          child: Text('Hello'),
        ),
        Container(
          width: 100,
          height: 100,
          margin: EdgeInsets.all(20),
          //color: Colors.red,
          decoration: BoxDecoration(
              color: Colors.lightGreen,
              // shape: BoxShape.circle,
              borderRadius: BorderRadius.all(Radius.circular(10))),
        )
      ],
    );
  }
}
