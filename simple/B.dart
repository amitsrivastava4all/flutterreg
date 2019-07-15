import 'package:flutter/material.dart';
import './C.dart';
class B extends StatelessWidget {
  String str;
  B(this.str);
  @override
  Widget build(BuildContext context) {
    print("B Call");
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            "Data Rec from A $str",
            style: TextStyle(fontSize: 30),
          ),
          C(str)
        ],
      ),
    );
  }
}
