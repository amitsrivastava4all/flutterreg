import 'package:flutter/material.dart';

class Calc extends StatefulWidget {
  @override
  _CalcState createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  String fullNumber = "0";
  int firstNumber = 0;
  _store() {
    firstNumber = int.parse(fullNumber);
    fullNumber = "0";
  }

  _printNum(String num) {
    setState(() {
      if (fullNumber == "0") {
        fullNumber = num;
      } else {
        fullNumber += num;
      }
    });
  }

  Widget _createOperationButton(String num) {
    return RaisedButton(
      elevation: 7,
      onPressed: () {
        _store();
      },
      color: Colors.red,
      child: Text(
        num,
        style: TextStyle(fontSize: 20),
      ),
    );
  }

  _result() {
    int result = firstNumber + int.parse(fullNumber);
    setState(() {
      fullNumber = result.toString();
    });
  }

  Widget _createEqualButton(String num) {
    return RaisedButton(
      elevation: 7,
      onPressed: () {
        _result();
      },
      color: Colors.red,
      child: Text(
        num,
        style: TextStyle(fontSize: 20),
      ),
    );
  }

  Widget _createButton(String num) {
    return RaisedButton(
      elevation: 7,
      onPressed: () {
        _printNum(num);
      },
      color: Colors.red,
      child: Text(
        num,
        style: TextStyle(fontSize: 20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  fullNumber,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 30),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _createButton("9"),
              _createButton("8"),
              _createButton("7")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _createOperationButton("+"),
              _createOperationButton("-"),
              _createEqualButton("=")
            ],
          )
        ],
      ),
    );
  }
}
