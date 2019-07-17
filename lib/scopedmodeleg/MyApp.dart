import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import './CountDown.dart';
import './home.dart';

class MyApp extends StatelessWidget {
  final CountDown countDown;
  MyApp(this.countDown);
  @override
  Widget build(BuildContext context) {
    print("Count is ::: ${this.countDown.counter}");
    return ScopedModel<CountDown>(
      model: countDown,
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}
