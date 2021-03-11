import 'package:redux/redux.dart';

import 'actions.dart';
import 'model.dart';

AuthState _login(AuthState state, LoginAction action) =>
    state.copyWith(isLoading: true, isLoaded: false);

AuthState _loginSuccess(AuthState state, LoginSuccessAction action) =>
    state.copyWith(
        isLoading: false, isLoaded: true, user: action.user, authorised: true);

AuthState _loginFail(AuthState state, LoginFailAction action) =>
    state.copyWith(isLoading: false, isLoaded: false);

AuthState _logout(AuthState state, LogoutAction action) => AuthState.initial();

final authReducer = combineReducers<AuthState>([
  TypedReducer<AuthState, LoginAction>(_login),
  TypedReducer<AuthState, LoginSuccessAction>(_loginSuccess),
  TypedReducer<AuthState, LoginFailAction>(_loginFail),
  TypedReducer<AuthState, LogoutAction>(_logout)
]);
