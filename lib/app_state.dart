import 'package:flutter/material.dart';

import 'features/auth/+state/model.dart';

class AppState with AuthStateKey {
  final AuthState authState;
  final bool isLoading;
  final bool isLoaded;

  AppState({@required this.authState, this.isLoading, this.isLoaded});

  factory AppState.initial() {
    return new AppState(
        authState: AuthState.initial(), isLoading: false, isLoaded: false);
  }

  AppState copyWith({AuthState authState, bool isLoading, bool isLoaded}) {
    return AppState(
        authState: authState ?? this.authState,
        isLoaded: isLoaded ?? this.isLoaded,
        isLoading: isLoading ?? this.isLoading);
  }

  @override
  int get hashCode =>
      authState.hashCode ^ isLoading.hashCode ^ isLoaded.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState && authState == other.authState;
}
