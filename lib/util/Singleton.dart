import 'dart:convert';

import 'package:http/http.dart';
import 'package:shaftt_app/Database/DBHelper.dart';

class Singleton {
  static final Singleton _singleton = new Singleton._internal();
  Singleton._internal();
  static Singleton get instance => _singleton;
  var studentLogin = "Student/login-student";
  var studentRegisert = "Student/register-student";
  var classSchedule = "Student/Trainer/class-schedule";
  var packageSchedule = "Student/all-package";
  var allTeacher = "Student/all-teacher";
  var studentRefresh = "Student/student-refresh";
  var dbHelper = DBHelper();
  String token;
  Future<List<Map>> fetchEmployeesFromDatabase() async {
    Future<List<Map>> employees = dbHelper.getEmployees();
    return employees;
  }

  void refreshStudent() async {
    List list = await fetchEmployeesFromDatabase();
    if (list.isNotEmpty) {
      token = list.last["api_token"];
    }
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token'
    };
    Map<String, dynamic> map;
    final uri = 'http://sheft-platform.com/api/Student/student-refresh';
    var postUri = Uri.parse(uri);
    var request = new MultipartRequest("POST", postUri);
    request.headers.addAll(headers);
    var response = await request.send();
    var response2 = await Response.fromStream(response);
    map = jsonDecode(response2.body);
    print("refreshStudent " + map.toString());
  }
}
