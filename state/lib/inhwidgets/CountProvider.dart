import 'package:flutter/material.dart';

import './shareddata.dart';

class CounterProvider extends InheritedWidget {
  final SharedData sharedData;
  final Widget child;
  CounterProvider({this.sharedData, this.child}) : super(child: child);
  static CounterProvider of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(CounterProvider);
  }

  @override
  bool updateShouldNotify(CounterProvider old) {
    return sharedData != old.sharedData;
  }
}
