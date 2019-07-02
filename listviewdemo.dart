import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  List<String> names = [];
  ListViewDemo() {
    names = [
      "amit",
      "ram",
      "shyam",
      "tom",
      "mike",
      "ajay",
      "vijay",
      "sohan",
      "mohan"
    ];
  }
  Widget _firstway() {
    return ListView(
      // scrollDirection: Axis.horizontal,
      children: <Widget>[
        Text(
          'A',
          style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
        ),
        Text(
          'B',
          style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
        ),
        Text(
          'C',
          style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
        ),
        Text(
          'D',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text(
          'E',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text(
          'F',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text(
          'G',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text(
          'H',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text(
          'I',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text(
          'J',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text(
          'K',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text(
          'L',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text(
          'M',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text(
          'N',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text(
          'O',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text(
          'P',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text(
          'Q',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Widget _secondWay() {
    return ListView.builder(
      itemBuilder: (context, position) {
        return Card(
          elevation: 10,
          child: Text(
            names[position],
            style: TextStyle(fontSize: 30),
          ),
        );
      },
      itemCount: names.length,
    );
  }

  Widget _getListTile() {
    return ListView(
      children: <Widget>[
        Card(
            elevation: 10,
            child: ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("Email Email Email"),
              trailing: Icon(Icons.star),
            )),
        Card(
            elevation: 10,
            child: ListTile(
              leading: Icon(Icons.message),
              title: Text("Message"),
              subtitle: Text("Message......."),
              trailing: Icon(Icons.add_a_photo),
            )),
        Card(
            elevation: 10,
            child: ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("Email Email Email"),
              trailing: Icon(Icons.star),
            )),
        Card(
            elevation: 10,
            child: ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("Email Email Email"),
              trailing: Icon(Icons.star),
            ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    //return _firstway();
    //return _secondWay();
    return _getListTile();
  }
}
