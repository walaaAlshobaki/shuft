import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import 'model/studentModel.dart';

class SharedPrefs {
  static final String keyUsername = "username";
  static final String keyUserToken = "token";
  static final String keyLogin = "login";
  static final String keyStudent = "student";

  /// ------------------------------------------------------------
  /// Method that returns the user language code, 'en' if not set
  /// ------------------------------------------------------------
  static Future<String> getUsername() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return (prefs.getString(keyUsername) ?? '').toString();
  }

  @override
  Future<String> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return Future.value(prefs.getString(keyUserToken));
  }

  static void _saveToken(String token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(keyUserToken, token);
  }

  /// ----------------------------------------------------------
  /// Method that saves the user language code
  /// ----------------------------------------------------------
  static Future<bool> setUsername(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.setString(keyUsername, value);
  }

  static setStudent(String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(keyStudent, json.encode(value));
  }

  static getStudent() async {
    final prefs = await SharedPreferences.getInstance();
    return json.decode(prefs.getString(keyStudent));
  }

  static removeStudent() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(keyStudent);
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
