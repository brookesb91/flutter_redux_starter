import 'package:redux/redux.dart';

import '../../+state/model.dart';
import '../../+state/actions.dart';

class LoginFacade {
  final bool isLoading;
  final bool isLoaded;

  final Function(String, String) login;

  LoginFacade({this.isLoaded, this.isLoading, this.login});

  static LoginFacade fromStore(Store<WithAuthState> store) {
    return LoginFacade(
        isLoaded: store.state.authState.isLoaded,
        isLoading: store.state.authState.isLoading,
        login: (String email, String password) {
          store.dispatch(LoginAction(email: email, password: password));
        });
  }
}
