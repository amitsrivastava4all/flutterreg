import 'package:flutter/material.dart';

import './screens/expanded.dart';

void main() {
  runApp(MaterialApp(
      title: 'My First App',
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(
              'First App -2019',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            backgroundColor: Colors.lime,
          ),
          //body: StackLayout(),
          // body: PageViewDemo()
          body: ExpandedLayout()
          // body: StackLayout2(),
          //body: Mix(),
          // body: BaseLine(),
          //body: ColRow()
          //body: Gallery(),
//        body: Container(
//            //margin: EdgeInsets.all(20),
//            margin: EdgeInsets.only(left: 100),
//            padding: EdgeInsets.all(30),
//            height: 300,
//            width: 300,
//            color: Colors.red,
//            child: Text(
//              'Hello Container',
//              style: TextStyle(
//                  fontSize: 30,
//                  fontWeight: FontWeight.bold,
//                  color: Colors.white),
//            )),
          )));
}
