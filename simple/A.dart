import 'package:flutter/material.dart';

import './B.dart';

class A extends StatefulWidget {
  @override
  _AState createState() => _AState();
}

class _AState extends State<A> {
  _takeInput(str) {
    setState(() {
      this.val = str;
    });
  }

  String val;
  @override
  Widget build(BuildContext context) {
    print("A Call ");
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                onChanged: (str) {
                  this._takeInput(str);
                },
              ),
            ),
            Text(
              'Inside A Widget Sharing Data to B',
              style: TextStyle(fontSize: 14),
            ),
            B(this.val),
          ],
        ),
      ),
    );
  }
}
