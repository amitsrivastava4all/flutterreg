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
                onPressed: () =>
                    _bloc.counter_event_sink.add(IncrementEvent())),
            StreamBuilder(
                stream: _bloc.stream_counter,
                initialData: 0,
                builder: (context, snapshot) {
                  return Center(child: Text(snapshot.data.toString()));
                })
          ],
        ),
      ),
    );
  }
}
