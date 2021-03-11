abstract class WithAuthState {
  AuthState authState;
}

class UserAuth {
  final String name;
  final String email;
  final String token;

  UserAuth({
    this.name,
    this.email,
    this.token,
  });
}

class AuthState {
  final bool authorised;
  final UserAuth user;
  final bool isLoading;
  final bool isLoaded;

  AuthState({this.authorised, this.user, this.isLoaded, this.isLoading});

  factory AuthState.initial() {
    return new AuthState(
        authorised: false, user: null, isLoaded: false, isLoading: false);
  }

  AuthState copyWith(
      {bool authorised, UserAuth user, bool isLoading, bool isLoaded}) {
    return new AuthState(
        authorised: authorised ?? this.authorised,
        user: user ?? this.user,
        isLoaded: isLoaded ?? this.user,
        isLoading: isLoading ?? this.isLoading);
  }
}
