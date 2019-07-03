import 'package:flutter/material.dart';

class GreetApp extends StatefulWidget {
  @override
  _GreetAppState createState() => _GreetAppState();
}

class _GreetAppState extends State<GreetApp> {
  String firstName = '';
  String lastName = '';
  String fullName = '';
  var _focusNode = new FocusNode();

  _initCap(String name) {
    return name[0].toUpperCase() + name.substring(1).toLowerCase();
  }

  _attachFocus() {
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        setState(() {
          fullName = _initCap(firstName) + " " + _initCap(lastName);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _attachFocus();
    return Container(
      child: Column(
        children: <Widget>[
          TextField(
            //focusNode: _focusNode,
            decoration: InputDecoration(hintText: 'Enter First Name'),
            onChanged: (str) {
              firstName = str;
              print('First Name is $firstName');
            },
          ),
          TextField(
            focusNode: _focusNode,
            decoration: InputDecoration(hintText: 'Enter Second Name'),
            onChanged: (str) {
              lastName = str;
//              setState(() {
//                fullName = firstName + lastName;
//              });
            },
          ),
          Text(
            fullName,
            style: TextStyle(fontSize: 40),
          )
        ],
      ),
    );
  }
}
