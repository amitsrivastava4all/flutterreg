import 'package:flutter/material.dart';

class BottomTab extends StatefulWidget {
  @override
  _BottomTabState createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {
  int _currentIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Widget showTab() {
    if (_currentIndex == 0) {
      return TabOne();
    } else if (_currentIndex == 1) {
      return TabTwo();
    } else {
      return TabThree();
    }
  }

  showSnackBar() {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text('Tab Clicked'),
      duration: Duration(seconds: 3),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tab App',
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text('Tab Navigation Example'),
        ),
        body: showTab(),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
              showSnackBar();
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text('Home')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.phone), title: Text('Phone')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.email), title: Text('Email'))
            ]),
      ),
    );
  }
}

class TabOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
    );
  }
}

class TabTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

class TabThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
    );
  }
}
