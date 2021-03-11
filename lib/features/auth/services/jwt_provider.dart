abstract class JWTProvider {
  String get();
  void save(String token);
  void destroy();
}
