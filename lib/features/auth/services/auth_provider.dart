import '../+state/model.dart';

abstract class AuthProvider {
  Future<UserAuth> login();
  Future<UserAuth> activate();
  Future<bool> recover();
  Future<UserAuth> reset();
  Future<bool> register();
  Future<bool> logout();
  Future<UserAuth> user();
  Future<UserAuth> update();
}
