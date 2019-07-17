import 'package:flutter/material.dart';

import './CountProvider.dart';
import './parent.dart';
import './shareddata.dart';

class GrandParent extends StatefulWidget {
  @override
  _GrandParentState createState() => _GrandParentState();
}

class _GrandParentState extends State<GrandParent> {
  SharedData sharedData = new SharedData();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterProvider(
        sharedData: sharedData,
        child: Scaffold(
          appBar: AppBar(
            title: Text('App'),
          ),
          body: Container(
            child: Column(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      sharedData.plus();
                    });
                  },
                  child: Text(
                    'Share It by Grand Parent',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Parent()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
