import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import './CountDown.dart';

class Change extends StatefulWidget {
  @override
  _ChangeState createState() => _ChangeState();
}

class _ChangeState extends State<Change> {
  String val;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
      ),
      body: ScopedModelDescendant<CountDown>(builder: (context, child, model) {
        return Container(
          margin: EdgeInsets.all(50),
          child: Column(
            children: <Widget>[
              TextField(
                onChanged: (str) {
                  this.val = str;
                  model.plus(int.parse(this.val));
                },
                decoration: InputDecoration(hintText: 'Type Value to Share'),
              )
            ],
          ),
        );
      }),
    );
  }
}
