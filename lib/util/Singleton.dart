import 'dart:convert';

import 'package:http/http.dart';
import 'package:shaftt_app/Database/DBHelper.dart';
import 'package:shaftt_app/model/studentModel.dart';

import '../SharedPrefs.dart';

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
  var filterTeacherName = "Student/filter-teacher-name";
  var student_studentProfile = "Student/student-profile";
  var dbHelper = DBHelper();
  String token;
  Future<List<Map>> fetchEmployeesFromDatabase() async {
    Future<List<Map>> employees = dbHelper.getEmployees();
    return employees;
  }

  void refreshStudent() async {
    // Future<String> authToken = SharedPrefs.getUserToken();
    // authToken.then((data) {
    //   token = data.toString();
    //   print(token);
    // }, onError: (e) {
    //   print(e);
    // });
    List list = await fetchEmployeesFromDatabase();
    token = list.last["api_token"];

    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token'
    };
    Map<String, dynamic> map;
    final uri = 'http://shafft.com/api/Student/student-refresh';
    var postUri = Uri.parse(uri);
    var request = new MultipartRequest("POST", postUri);
    request.headers.addAll(headers);
    var response = await request.send();
    var response2 = await Response.fromStream(response);
    map = jsonDecode(response2.body);
    print("refreshStudent " + map.toString());
    print("refreshStudent " + map["api_token"]);
    Student std = new Student(
        firstName: list.last["firstName"],
        id: int.parse(list.last["columnId"]),
        lastName: list.last["lastName"],
        email: list.last["email"],
        phoneNumber: list.last["phoneNumber"],
        birthday: list.last["birthday"],
        certifcateCode: list.last["certifcateCode"],
        IDNum: list.last["IDNum"],
        Gender: int.parse(list.last["Gender"]),
        location: list.last["location"],
        profile: list.last["profile"],
        api_token: map["api_token"]);
    SharedPrefs.setUserToken(map["api_token"]);
    // firstName,id, lastName, email, phoneNumber ,birthday,aveter,IDNum,Gender,location,profile,api_token
    dbHelper.updateStudent(std);
  }
}
