import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:shaftt_app/AppClient/app_client.dart';
import 'package:shaftt_app/model/NetworkResponse.dart';
import 'package:shaftt_app/model/Result.dart';
import 'package:shaftt_app/model/studentModel.dart';
import 'package:shaftt_app/util/RequestType.dart';
import 'package:shaftt_app/util/Singleton.dart';
import 'package:async/async.dart' as asyn;
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart' as aa;
import 'package:shared_preferences/shared_preferences.dart';
import '../SharedPrefs.dart';
import '../student_Packages.dart';

class StudentRemoteDataSource {
  //Creating Singleton
  StudentRemoteDataSource._privateConstructor();
  static final StudentRemoteDataSource _apiResponse =
      StudentRemoteDataSource._privateConstructor();
  factory StudentRemoteDataSource() => _apiResponse;
  var instance = Singleton.instance;
  var prefs = null;
  // s1.studentRegisert
  AppClient client = AppClient(Client());

  StreamController<Result> _studentStream;
  Stream<Result> hasBookAdded() => _studentStream.stream;

  void init() => _studentStream = StreamController();

  Future<Result> loginStudent(Student student, BuildContext context) async {
    _studentStream.sink.add(Result<String>.loading("Loading"));
    Map<String, dynamic> map;
    try {
      final response = await client.request(
          requestType: RequestType.POST,
          path: instance.studentLogin,
          parameter: student);
      map = jsonDecode(response.body);
      print(map["msg"]);
      var message = map["msg"];
      if (response.statusCode == 200) {
        _studentStream.sink.add(Result<NetworkResponse>.success(
            NetworkResponse.fromRawJson(response.body)));
        print(response.body);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => StudentPackages()));
        SharedPrefs.setLogin(true);
        SharedPrefs.setStudent(map["student"]);
      } else {
        print((response.statusCode));
        print((student.password));
        _studentStream.sink.add(Result.error("Something went wrong"));
        SharedPrefs.setLogin(false);
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: new Text(message),
              actions: <Widget>[
                FlatButton(
                  child: new Text("OK"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    } catch (error) {
      print(error);
      return Result.error("Something went wrong!");
    }
  }

  void registerStudent(Student student, BuildContext context) async {
    _studentStream.sink.add(Result<String>.loading("Loading"));

    Map<String, dynamic> map;

    final headers = {'Content-Type': 'application/json'};

    var fileName = student.certifcateCodeFile.path.split("/").last;

    var stream = new http.ByteStream(
        asyn.DelegatingStream.typed(student.certifcateCodeFile.openRead()));
    // get file length
    var length = await student.certifcateCodeFile.length();
    // try {
    final uri = 'http://sheft-platform.com/api/Student/register-student';
    var postUri = Uri.parse(uri);
    var request = new http.MultipartRequest("POST", postUri);

    var multipartFileSign = new http.MultipartFile(
        'certifcateCode', stream, length,
        filename: fileName);
    // add file to multipart
    request.files.add(multipartFileSign);

    request.files.add(new http.MultipartFile.fromBytes(
        'certifcateCode', await student.certifcateCodeFile.readAsBytes(),
        contentType: new aa.MediaType('image', 'jpg')));
    request.headers.addAll(headers);
    request.fields['firstName'] = student.firstName;
    request.fields['lastName'] = student.lastName;
    request.fields['email'] = student.email;
    request.fields['password'] = student.password;
    request.fields['phoneNumber'] = student.phoneNumber;
    request.fields['birthday'] = student.birthday;

    request.fields['location'] = fileName;
    request.fields['IDNum'] = student.IDNum;
    request.fields['Gender'] = student.Gender;
    request.fields['password_confirmation'] = student.password;
    request.fields['stageId'] = "1";

    var response = await request.send();
    var response2 = await http.Response.fromStream(response);
    map = jsonDecode(response2.body);
    var message = map["msg"];
    if (message == 'User successfully registered') {
      _studentStream.sink.add(Result<NetworkResponse>.success(
          NetworkResponse.fromRawJson(response2.body)));

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text(message),
            actions: <Widget>[
              FlatButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StudentPackages()));
                  SharedPrefs.setLogin(true);
                  SharedPrefs.setStudent(map["student"]);
                },
              ),
            ],
          );
        },
      );
      prefs = await SharedPreferences.getInstance();
      SharedPrefs.setUsername(
          map["student"]["firstName"] + " " + map["student"]["lastName"]);
      SharedPrefs.setUserToken(map["student"]["api_token"]);
    } else {
      // If Email or Password did not Matched.
      // Hiding the CircularProgressIndicator.
      _studentStream.sink.add(Result.error("Something went wrong"));
      SharedPrefs.setLogin(false);
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text(message),
            actions: <Widget>[
              FlatButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  void dispose() => _studentStream.close();
}
