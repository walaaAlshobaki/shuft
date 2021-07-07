import 'dart:async';
import 'package:async/async.dart' as ass;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:shaftt_app/AppClient/app_client.dart';
import 'package:shaftt_app/Database/DBHelper.dart';
import 'package:shaftt_app/Database/StudentDatabaseHelper.dart';
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
import 'package:path/path.dart';

class StudentRemoteDataSource {
  //Creating Singleton
  StudentRemoteDataSource._privateConstructor();
  static final StudentRemoteDataSource _apiResponse =
      StudentRemoteDataSource._privateConstructor();
  factory StudentRemoteDataSource() => _apiResponse;
  var instance = Singleton.instance;
  final dbHelper = StudentDatabaseHelper.instance;
  var prefs = null;
  // s1.studentRegisert
  AppClient client = AppClient(Client());

  StreamController<Result> _studentStream;
  Stream<Result> hasBookAdded() => _studentStream.stream;

  void init() => _studentStream = StreamController();

  Future<Result> loginStudent(Student student, BuildContext context) async {
    _studentStream.sink.add(Result<String>.loading("Loading"));
    var prefs = SharedPreferences.getInstance();
    Map<String, dynamic> map;
    try {
      final response = await client.request(
          requestType: RequestType.POST,
          path: instance.studentLogin,
          parameter: student);
      map = jsonDecode(response.body);
      // print(map["student"]);
      var message = map["msg"];
      print(map["msg"]);
      if (response.statusCode == 200) {
        if (message != 'بيانات الدخول غير صحيحة') {
          _studentStream.sink.add(Result<NetworkResponse>.success(
              NetworkResponse.fromRawJson(response.body)));
          print(response.body);

          print(map["student"]["firstName"]);
          var dbHelper = DBHelper();

          Student student = new Student();
          student.firstName = map["student"]["firstName"];
          student.id = map["student"]["id"].toString();
          student.lastName = map["student"]["lastName"];
          student.email = map["student"]["email"];
          student.phoneNumber = map["student"]["phoneNumber"];

          student.birthday = map["student"]["birthday"];
          student.certifcateCode = map["student"]["certifcateCode"];
          student.IDNum = map["student"]["IDNum"];
          student.Gender = map["student"]["Gender"];
          student.location = map["student"]["location"];
          student.profile = "profile";
          student.api_token = map["student"]["api_token"];

          dbHelper.saveEmployee(student);
          SharedPrefs.setUserToken(map["student"]["api_token"]);
          // AuthRepositoryImpl authRepository = new AuthRepositoryImpl();
          // authRepository._saveToken(map["student"]["api_token"]);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => StudentPackages()));
          SharedPrefs.setLogin(true);
        }
      } else {
        // print((response.statusCode));
        // print((student.password));
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

// final uri = 'https://shafft.com/api/Student/register-student';
    var stream = new http.ByteStream(
        ass.DelegatingStream.typed(student.certifcateCodeFile.openRead()));
    // get file length
    var length = await student.certifcateCodeFile
        .length(); //imageFile is your image file
    Map<String, String> headers = {
      "Accept": "application/json"
    }; // ignore this headers if there is no authentication

    // string to uri
    var uri = Uri.parse("https://shafft.com/api/Student/register-student");

    // create multipart request
    var request = new http.MultipartRequest("POST", uri);

    // multipart that takes file
    var multipartFileSign = new http.MultipartFile(
        'certifcateCode', stream, length,
        filename: basename(student.certifcateCodeFile.path));

    // add file to multipart
    request.files.add(multipartFileSign);

    //add headers
    request.headers.addAll(headers);

    //adding params
    request.fields['firstName'] = student.firstName;
    request.fields['lastName'] = student.lastName;
    request.fields['email'] = student.email;
    request.fields['password'] = student.password;
    request.fields['phoneNumber'] = student.phoneNumber;
    request.fields['birthday'] = student.birthday;

    request.fields['location'] = student.location;
    request.fields['IDNum'] = student.IDNum;
    request.fields['Gender'] = student.Gender.toString();
    request.fields['password_confirmation'] = student.password;
    request.fields['stageId'] = "1";

    // send

    var response = await request.send();

    print(response.statusCode);

    // listen for response
    response.stream.transform(utf8.decoder).listen((value) {
      print(value);

      map = jsonDecode(value);
      var message = map["msg"];
      if (message == 'User successfully registered') {
        _studentStream.sink.add(Result<NetworkResponse>.success(
            NetworkResponse.fromRawJson(value)));

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
        prefs = SharedPreferences.getInstance();
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
    });
  }

  Future<String> studentProfileContOfClass() async {
    _studentStream = StreamController();
    Map<String, dynamic> map;
    try {
      final response = await client.request(
          requestType: RequestType.GET, path: instance.student_studentProfile);
      map = jsonDecode(response.body);
      print("studentProfile   " + response.body.toString());

      if (response.statusCode == 200) {
        return map["contOfClass"].toString();
      } else {
        // return Result.error("trainer list not available");
      }
    } catch (error) {
      print(error);
      // return Result.error("Something went wrong!");
    }
  }

  Future<String> studentProfileStages() async {
    _studentStream = StreamController();
    Map<String, dynamic> map;
    try {
      final response = await client.request(
          requestType: RequestType.GET, path: instance.student_studentProfile);
      map = jsonDecode(response.body);
      // print("studentProfile   " + map["stuInf"].toString());

      if (response.statusCode == 200) {
        return map["contOfClass"].toString();
      } else {
        // return Result.error("trainer list not available");
      }
    } catch (error) {
      print(error);
      // return Result.error("Something went wrong!");
    }
  }

  void dispose() => _studentStream.close();
}
