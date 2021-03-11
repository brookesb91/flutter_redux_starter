import 'model.dart';

class LoginAction {
  final String email;
  final String password;
  LoginAction({this.email, this.password});
}

class LoginSuccessAction {
  final UserAuth user;
  LoginSuccessAction({this.user});
}

class LoginFailAction {
  final Error error;
  LoginFailAction({this.error});
}

class GetUserAction {
  GetUserAction();
}

class GetUserFailAction {
  final Error error;
  GetUserFailAction({this.error});
}

class GetUserSuccessAction {
  final UserAuth user;
  GetUserSuccessAction({this.user});
}
