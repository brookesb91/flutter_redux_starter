import 'model.dart';

/// Attempt to login with the given
/// email and password
class LoginAction {
  final String email;
  final String password;
  LoginAction({this.email, this.password});
}

/// Authorisation was successful and the response
/// returned the authorised user object.
class LoginSuccessAction {
  final UserAuth user;
  LoginSuccessAction({this.user});
}

/// Authorisation was not successful or an error occurred
class LoginFailAction {
  final Error error;
  LoginFailAction({this.error});
}

/// Attempt to retrieve user data for a
/// locally stored token.
class GetUserAction {
  GetUserAction();
}

/// Failed to fetch the user
class GetUserFailAction {
  final Error error;
  GetUserFailAction({this.error});
}

/// Successfully fetched the user
/// and returned data
class GetUserSuccessAction {
  final UserAuth user;
  GetUserSuccessAction({this.user});
}

class LogoutAction {
  LogoutAction();
}
