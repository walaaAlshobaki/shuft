import 'dart:convert';

import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:shaftt_app/Database/DBHelper.dart';
import 'package:shaftt_app/SharedPrefs.dart';
import 'package:shaftt_app/model/studentModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../util/nothing.dart';
import '../util/RequestType.dart';
import '../util/RequestTypeNotFoundException.dart';

class AppClient {
  //Base url
  static const String _baseUrl = "https://shafft.com/api";
  final Client _client;
  var prefs = SharedPreferences.getInstance();
  String token;
  Student userS;
  var dbHelper = DBHelper();

  // @override
  // Future<void> initState() async {
  //   List list = await fetchEmployeesFromDatabase();
  //   print(list.last["api_token"]);
  //   token = list.last["api_token"];
  // }

  AppClient(this._client);
  Future<List<Map>> fetchEmployeesFromDatabase() async {
    Future<List<Map>> employees = dbHelper.getEmployees();
    return employees;
  }

  Future<Response> request(
      {@required RequestType requestType,
      @required String path,
      dynamic parameter = Nothing}) async {
    print("$_baseUrl/$path");
    print("$path  " + "Bearer $token");
    switch (requestType) {
      //
      case RequestType.GET:
        Future<String> authToken = SharedPrefs.getUserToken();
        authToken.then((data) {
          token = data.toString();
        }, onError: (e) {
          print(e);
        });
        // List list = await fetchEmployeesFromDatabase();
        // if (list.isNotEmpty) {
        //   token = list.last["api_token"];
        // }
        return _client.get("$_baseUrl/$path", headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        });
      case RequestType.POST:
        return _client.post("$_baseUrl/$path",
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              'Authorization': 'Bearer $token'
            },
            body: json.encode(parameter));
      case RequestType.DELETE:
        return _client.delete("$_baseUrl/$path");
      default:
        return throw RequestTypeNotFoundException(
            "The HTTP request mentioned is not found");
    }
  }
}
