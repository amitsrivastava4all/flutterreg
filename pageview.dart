import 'package:flutter/material.dart';

class A1 {}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      pageSnapping: true,
      children: <Widget>[
        Container(
          child: Card(
            child: Column(
              children: <Widget>[
                Text(
                  'Hello',
                  style: TextStyle(fontSize: 40),
                ),
                Icon(Icons.add_a_photo)
              ],
            ),
          ),
          color: Colors.pink,
        ),
        Container(
          color: Colors.cyan,
        ),
        Container(
          color: Colors.deepPurple,
        ),
      ],
    );
  }
}
