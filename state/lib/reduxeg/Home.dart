import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import './actions.dart';
import './reducer.dart';
import './store.dart';

class Home extends StatelessWidget {
  final store = new Store(reducer, initialState: new AppState(0));

  // Store store = StoreProvider.of<AppState>(context);
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
        store: store,
        child: new Scaffold(
          appBar: new AppBar(
            title: new Text("Flutter Redux App"),
          ),
          body: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  'You have pushed the button this many times:',
                ),
                new StoreConnector(
                  converter: (store) => store.state.counter,
                  builder: (context, counter) => new Text(
                        '$counter',
                        style: TextStyle(fontSize: 20),
                      ),
                )
              ],
            ),
          ),
          floatingActionButton: new StoreConnector(
            converter: (store) {
              return () => store.dispatch(Actions.Increment);
            },
            builder: (context, callback) => new FloatingActionButton(
                  onPressed: callback,
                  tooltip: 'Increment',
                  child: new Icon(Icons.add),
                ), // This trailing comma makes auto-formatting nicer for build methods.
          ),
        ));
  }
}
