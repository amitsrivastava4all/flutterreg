import 'package:flutter/material.dart';

import './CounterBloc.dart';

//void main() {
//  runApp(App());
//}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final _bloc = CounterBLoC();
  @override
  dispose() {
    super.dispose();
    _bloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("After Cons Call Run the build");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('BLOC'),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
                child: Text(
                  'Send',
                  style: TextStyle(fontSize: 30),
                ),
                onPressed: () {
                  print("Going to take Controller.");
                  _bloc.counter_event_sink.add(IncrementEvent());
                }),
            StreamBuilder(
                stream: _bloc.stream_counter,
                initialData: 0,
                builder: (context, snapshot) {
                  print("Rec SnapShot ${snapshot.data}");
                  return Center(child: Text(snapshot.data.toString()));
                })
          ],
        ),
      ),
    );
  }
}
