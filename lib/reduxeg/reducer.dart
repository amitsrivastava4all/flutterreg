import 'package:redux/redux.dart';
import './store.dart';
import './actions.dart';
AppState reducer(AppState prev, action) {
  if (action == Actions.Increment) {
    return new AppState(prev.counter + 1);
  }
  return prev;
}
