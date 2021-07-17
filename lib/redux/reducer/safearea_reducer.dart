import 'package:lean/redux/action/actions.dart';
import 'package:lean/redux/state/safearea_state.dart';

SafeAreaState safeAreaState(SafeAreaState state, action) {
  if (action is SafeAreaAction) {
    return SafeAreaState(isEnable: !state.isEnable);
  }
  return state;
}
