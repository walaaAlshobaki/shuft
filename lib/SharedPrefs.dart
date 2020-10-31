import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static final String keyUsername = "username";
  static final String keyUserToken = "token";
  static final String keyLogin = "login";

  /// ------------------------------------------------------------
  /// Method that returns the user language code, 'en' if not set
  /// ------------------------------------------------------------
 static Future<String> getUsername() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
   
    return (prefs.getString(keyUsername) ?? '').toString();
  }

  /// ----------------------------------------------------------
  /// Method that saves the user language code
  /// ----------------------------------------------------------
  static Future<bool> setUsername(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.setString(keyUsername, value);
  }


 static Future<bool> getLogin() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
   
    return (prefs.getBool(keyLogin) ?? false);
  }

  /// ----------------------------------------------------------
  /// Method that saves the user language code
  /// ----------------------------------------------------------
  static Future<bool> setLogin(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.setBool(keyLogin, value);
  }

   static Future<String> getUserToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
   
    return (prefs.getString(keyUserToken) ?? '').toString();
  }

  /// ----------------------------------------------------------
  /// Method that saves the user language code
  /// ----------------------------------------------------------
  static Future<bool> setUserToken(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.setString(keyUserToken, value);
  }


}