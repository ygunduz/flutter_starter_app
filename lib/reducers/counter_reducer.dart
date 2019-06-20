import 'package:redux/redux.dart';
import '../actions/actions.dart';

final counterReducer = combineReducers<int>([
  _counterReducer
]);

int _counterReducer(int counter, dynamic action) {
  if(action is IncrementCounter){
    return counter + 1;
  }else if ( action is DecrementCounter ){
    return counter - 1;
  }else {
    return counter;
  }
}
