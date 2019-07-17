import 'package:scoped_model/scoped_model.dart';

//https://dart-pub.mirrors.sjtug.sjtu.edu.cn/packages/scoped_model/versions/0.3.0#-installing-tab-
class CountDown extends Model {
  int counter = 1000;
  CountDown() {
    print("Count Down Cons Call $counter");
    counter = 2000;
  }

  plus(int val) {
    this.counter = this.counter + val;
    notifyListeners();
  }
}
