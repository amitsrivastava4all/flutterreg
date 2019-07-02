import 'package:flutter/material.dart';

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.directions_bike),
  const Choice(title: 'Boat', icon: Icons.directions_boat),
  const Choice(title: 'Bus', icon: Icons.directions_bus),
  const Choice(title: 'Train', icon: Icons.directions_railway),
  const Choice(title: 'Walk', icon: Icons.directions_walk),
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.drafts),
  const Choice(title: 'Boat', icon: Icons.dvr),
  const Choice(title: 'Bus', icon: Icons.copyright),
  const Choice(title: 'Train', icon: Icons.cloud_off),
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.directions_bike),
  const Choice(title: 'Boat', icon: Icons.directions_boat),
  const Choice(title: 'Bus', icon: Icons.directions_bus),
  const Choice(title: 'Train', icon: Icons.directions_railway),
  const Choice(title: 'Walk', icon: Icons.directions_walk),
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.drafts),
  const Choice(title: 'Boat', icon: Icons.dvr),
  const Choice(title: 'Bus', icon: Icons.copyright),
  const Choice(title: 'Train', icon: Icons.cloud_off),
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.directions_bike),
  const Choice(title: 'Boat', icon: Icons.directions_boat),
  const Choice(title: 'Bus', icon: Icons.directions_bus),
  const Choice(title: 'Train', icon: Icons.directions_railway),
  const Choice(title: 'Walk', icon: Icons.directions_walk),
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.drafts),
  const Choice(title: 'Boat', icon: Icons.dvr),
  const Choice(title: 'Bus', icon: Icons.copyright),
  const Choice(title: 'Train', icon: Icons.cloud_off),
];

class GridDemo extends StatelessWidget {
  Widget _basicGrid() {
    return GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        Text('Hello'),
        Text('Hello'),
        Text('Hello'),
        Text('Hello'),
        Text('Hello'),
        Text('Hello'),
        Text('Hello'),
        Text('Hello'),
        Text('Hello'),
        Text('Hello')
      ],
    );
  }

  Widget _card(choice) {
    return Card(
        color: Colors.white,
        child: Center(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(choice.icon, size: 80.0, color: Colors.black),
                Text(choice.title, style: TextStyle(fontSize: 20)),
              ]),
        ));
  }

  @override
  Widget build(BuildContext context) {
//    return _basicGrid();
    return GridView.count(
        crossAxisCount: 3,
        children: List.generate(choices.length, (index) {
          return Center(
            child: _card(choices[index]),
          );
        }));
  }
}
