import 'dart:async';

abstract class CounterEvent {}

class IncrementEvent extends CounterEvent {}

class CounterBLoC {
  int _counter = 0;
  CounterBLoC() {
    print("Counter BLOC Cons Call Start Listen the Stream $_count");
    _counterEventController.stream.listen(_count);
  }
  dispose() {
    _counterStreamController.close();
    _counterEventController.close();
  }

  // to be updated with a StreamSink!
  _count(CounterEvent event) {
    print("FIRE THE EVENT Counter Event Call $_counter");
    counter_sink.add(++_counter);
  }

  // init StreamController
  final _counterStreamController = StreamController<int>();
  StreamSink<int> get counter_sink => _counterStreamController.sink;
// expose data from stream
  Stream<int> get stream_counter {
    print("Get the StreamBuilder Controller");
    return _counterStreamController.stream;
  }

  final _counterEventController = StreamController<CounterEvent>();
// expose sink for input events
  Sink<CounterEvent> get counter_event_sink {
    print("#########################################");
    print("Get the Controller for SINK");
    return _counterEventController.sink;
  }
}
