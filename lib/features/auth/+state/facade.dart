import 'package:redux/redux.dart';

import 'model.dart';
import 'actions.dart';

class AuthFacade {
  final bool isLoading;
  final bool isLoaded;

  final Function(String, String) login;

  AuthFacade({this.isLoaded, this.isLoading, this.login});

  static AuthFacade fromStore(Store<WithAuthState> store) {
    return AuthFacade(

        /// State selectors
        isLoaded: store.state.authState.isLoaded,
        isLoading: store.state.authState.isLoading,

        /// Action dispatchers
        login: (String email, String password) {
          store.dispatch(LoginAction(email: email, password: password));
        });
  }
}
