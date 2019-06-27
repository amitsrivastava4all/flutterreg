import 'package:flutter/material.dart';

class StackLayout extends StatelessWidget {
  bool sizedBox = false;

  @override
  Widget build(BuildContext context) {
    if (sizedBox) {
      return Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          SizedBox(
            width: 300,
            height: 300,
            child: Container(
              color: Colors.green,
            ),
          ),
          SizedBox(
            width: 200,
            height: 200,
            child: Container(
              color: Colors.yellow,
            ),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: Container(
              color: Colors.red,
            ),
          )
        ],
      );
    } else {
      return Stack(
        children: <Widget>[
          SizedBox(
            width: 300,
            height: 300,
            child: Container(
              color: Colors.lightGreen,
            ),
          ),
          Positioned(
            top: 10,
            left: 20,
            width: 50,
            height: 50,
            child: Container(
              color: Colors.red,
            ),
          ),
          Positioned(
            top: 100,
            left: 20,
            width: 70,
            height: 50,
            child: Container(
              color: Colors.blue,
            ),
          ),
          Positioned(
            top: 200,
            left: 90,
            width: 70,
            height: 50,
            child: Container(
              color: Colors.black,
            ),
          )
        ],
      );
    }
  }
}
