import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import '../services/auth_service.dart';
import 'actions.dart';

ThunkAction login(String email, String password) {
  return (Store store) async {
    new Future(() async {
      new AuthService()
          .login(email, password)
          .then((user) => store.dispatch(LoginSuccessAction(user: user)))
          .catchError((error) => store.dispatch(LoginFailAction(error: error)));
    });
  };
}
