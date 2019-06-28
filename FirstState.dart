import 'package:flutter/material.dart';

class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  TextEditingController ctr = new TextEditingController();
  TextEditingController ctr2 = new TextEditingController();
  int counter;
  int firstNumber = 0;
  int secondNumber = 0;
  int result = 0;
  _FirstState() {
    counter = 0;
  }

  _increment() {
    print("increment call $counter");
    counter++;
    setState(() {
      firstNumber = int.parse(ctr.text);
      secondNumber = int.parse(ctr2.text);
      result = firstNumber + secondNumber;
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            'Counter is $counter sum is $result',
            style: TextStyle(fontSize: 40),
          ),
          TextField(
            onChanged: (str) {
              setState((){
                firstNumber = int.parse(str);
              });

            },
            controller: ctr,
            keyboardType: TextInputType.numberWithOptions(),
            decoration: InputDecoration(hintText: 'Enter the First Number'),
            autofocus: true,
          ),
          Text('First No is $firstNumber'),

          TextField(
            onChanged: (str) {
              secondNumber = int.parse(str);
              setState(() {
                result = firstNumber + secondNumber;
              });
            },
            controller: ctr2,
            keyboardType: TextInputType.numberWithOptions(),
            decoration: InputDecoration(hintText: 'Enter the First Number'),
            autofocus: true,
          ),
          MaterialButton(
            onPressed: _increment,
            color: Colors.red,
            child: Text(
              'Plus',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
