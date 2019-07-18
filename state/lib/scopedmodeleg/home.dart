import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import './CountDown.dart';
import './change.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.all(100),
          child: Column(
            children: <Widget>[
              ScopedModelDescendant<CountDown>(
                builder: (context, child, model) {
                  print("Model is ${model.counter}");
                  return Text(
                    "Count is ${model.counter.toString()}",
                    style: TextStyle(fontSize: 30),
                  );
                },
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Change()));
                },
                child: Text(
                  'Change It',
                  style: TextStyle(fontSize: 30),
                ),
              )
            ],
          )),
    );
  }
}
