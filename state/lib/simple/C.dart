import 'package:flutter/material.dart';

class C extends StatelessWidget {
  String str;
  C(this.str);
  @override
  Widget build(BuildContext context) {
    print("C Call");
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            "Data Rec from B $str",
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
