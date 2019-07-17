import 'dart:async';

abstract class CounterEvent {}

class IncrementEvent extends CounterEvent {}

class CounterBLoC {
  int _counter = 0;
  CounterBLoC() {
    _counterEventController.stream.listen(_count);
  }
  dispose() {
    _counterStreamController.close();
    _counterEventController.close();
  }

  // to be updated with a StreamSink!
  _count(CounterEvent event) => counter_sink.add(++_counter);

  // init StreamController
  final _counterStreamController = StreamController<int>();
  StreamSink<int> get counter_sink => _counterStreamController.sink;
// expose data from stream
  Stream<int> get stream_counter => _counterStreamController.stream;

  final _counterEventController = StreamController<CounterEvent>();
// expose sink for input events
  Sink<CounterEvent> get counter_event_sink {
    return _counterEventController.sink;
  }
}
