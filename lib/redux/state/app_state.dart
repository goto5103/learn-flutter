import 'package:flutter/foundation.dart';
import 'package:lean/redux/state/safearea_state.dart';

@immutable
class AppState {
  final bool isLoading;
  final SafeAreaState safeAreaState;

  const AppState({
    this.isLoading = false, 
    this.safeAreaState = const SafeAreaState()
  });

  factory AppState.loading() => const AppState(isLoading: true);
}
