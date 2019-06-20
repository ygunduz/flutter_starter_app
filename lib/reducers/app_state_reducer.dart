import '../models/models.dart';
import 'reducers.dart';

AppState appReducer(AppState state, action) {
  return new AppState(
    counter: counterReducer(state.counter, action)
  );
}
