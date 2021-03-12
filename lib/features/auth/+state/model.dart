mixin AuthStateKey {
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

  @override
  int get hashCode =>
      authorised.hashCode ^
      user.hashCode ^
      isLoading.hashCode ^
      isLoaded.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthState &&
          runtimeType == other.runtimeType &&
          authorised == other.authorised &&
          user == other.user &&
          isLoading == other.isLoading &&
          isLoaded == other.isLoaded;
}
