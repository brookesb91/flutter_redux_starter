import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

TState Function(Store<dynamic>) selectFeature<TState>(String name) {
  return (store) {
    if (store.state[name] != null) {
      return store.state[name] as TState;
    } else {
      throw new ErrorDescription('No state found for given key.');
    }
  };
}
