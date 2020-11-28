import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthRepository {
  // Future authUser(String login, String password);

  // Future register(String login, String email, String password);

  Future<String> getToken();

  Future<bool> isSigned();

  Future logout();
}

class AuthRepositoryImpl extends AuthRepository {
  final SharedPreferences _sharedPreferences;
  static const tokenKey = "apiToken";

  AuthRepositoryImpl(this._sharedPreferences);

  @override
  Future<String> getToken() {
    return Future.value(_sharedPreferences.getString(tokenKey));
  }

  void _saveToken(String token) {
    _sharedPreferences.setString(tokenKey, token);
  }

  @override
  Future<bool> isSigned() {
    var token = _sharedPreferences.getString(tokenKey);
    if (token != null && token.isNotEmpty) return Future.value(true);
    return Future.value(false);
  }

  @override
  Future logout() async {
    _sharedPreferences.setString("apiToken", "");
  }
}
