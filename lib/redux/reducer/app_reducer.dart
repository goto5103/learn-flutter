import 'package:lean/redux/action/actions.dart';
import 'package:lean/redux/reducer/safearea_reducer.dart';
import 'package:lean/redux/state/app_state.dart';

AppState appReducer(AppState state, action) {
  if (action is SafeAreaAction) {
    return AppState(safeAreaState: safeAreaState(state.safeAreaState, action));
  }
  return state;
}
