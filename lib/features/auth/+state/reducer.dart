import 'package:redux/redux.dart';

import 'actions.dart';
import 'model.dart';

/// Authorisation is being requested and
/// the application is awaiting a response.
AuthState _login(AuthState state, LoginAction action) =>
    state.copyWith(isLoading: true, isLoaded: false);

/// Authorisation was successful and the response
/// returned the authorised user object.
AuthState _loginSuccess(AuthState state, LoginSuccessAction action) =>
    state.copyWith(
        isLoading: false, isLoaded: true, user: action.user, authorised: true);

/// Authorisation was not successful or an error occurred
AuthState _loginFail(AuthState state, LoginFailAction action) =>
    state.copyWith(isLoading: false, isLoaded: false);

final authReducer = combineReducers<AuthState>([
  TypedReducer<AuthState, LoginAction>(_login),
  TypedReducer<AuthState, LoginSuccessAction>(_loginSuccess),
  TypedReducer<AuthState, LoginFailAction>(_loginFail)
]);
