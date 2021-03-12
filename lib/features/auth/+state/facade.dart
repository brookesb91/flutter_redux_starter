import 'package:redux/redux.dart';

import 'model.dart';
import 'actions.dart';

class AuthFacade {
  final bool isLoading;
  final bool isLoaded;

  final Function(String, String) login;
  final Function() logout;

  AuthFacade({this.isLoaded, this.isLoading, this.login, this.logout});

  static AuthFacade fromStore(Store<AuthStateKey> store) {
    return AuthFacade(

        /// State selectors
        isLoaded: store.state.authState.isLoaded,
        isLoading: store.state.authState.isLoading,

        /// Action dispatchers
        login: (String email, String password) {
          store.dispatch(LoginAction(email: email, password: password));
        },
        logout: () {
          store.dispatch(LogoutAction());
        });
  }
}
