import 'dart:async';

abstract class SalaryInputEvent {
  double salary;
  double hra;
  double da;
}

class SalaryOpr extends SalaryInputEvent {
  SalaryOpr() {
    print("Salary Opr Cons Call");
  }
//  double salary;
//  double hra;
//  double da;
}

class SalaryBloc {
  SalaryOpr opr = new SalaryOpr();
  SalaryBloc() {
    print("Salary Bloc Cons Call");
    _salaryEventController.stream.listen(oprEvent);
    print("Event Listener Register");
  }
  dispose() {
    _salaryStreamController.close();
    _salaryEventController.close();
  }

  // to be updated with a StreamSink!
  oprEvent(SalaryInputEvent event) {
    print("FIRE THE EVENT Counter Event Call ::::: ${event.salary}");
    opr.salary = event.salary;
    opr.hra = opr.salary * 0.30;
    opr.da = opr.salary * 0.20;
    print("Salary Rec is ${opr.salary} HRA Is ${opr.hra} DA is ${opr.da}");
    counter_sink.add(opr);
  }

  // init StreamController
  final _salaryStreamController = StreamController<SalaryOpr>();
  StreamSink<SalaryOpr> get counter_sink => _salaryStreamController.sink;
// expose data from stream
  Stream<SalaryOpr> get stream_salary {
    print("Get the StreamBuilder Controller");
    return _salaryStreamController.stream;
  }

  final _salaryEventController = StreamController<SalaryInputEvent>();
// expose sink for input events
  Sink<SalaryInputEvent> get salary_event_sink {
    print("#########################################");
    print("Get the Controller for SINK");
    return _salaryEventController.sink;
  }
}
