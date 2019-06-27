import 'package:flutter/material.dart';

class ColRow extends StatelessWidget {
  bool isRow = false;
  @override
  Widget build(BuildContext context) {
    if (isRow) {
      return Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: <Widget>[
          Icon(
            Icons.star,
            size: 50,
          ),
          Icon(
            Icons.star,
            size: 100,
          ),
          Icon(
            Icons.star,
            size: 70,
          )
        ],
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(
            Icons.account_circle,
            size: 50,
          ),
          Icon(
            Icons.account_circle,
            size: 100,
          ),
          Icon(
            Icons.account_circle,
            size: 70,
          )
        ],
      );
    }
  }
}
