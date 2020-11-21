import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:shaftt_app/AppClient/app_client.dart';
import 'package:shaftt_app/Database/DBHelper.dart';
import 'package:shaftt_app/Database/StudentDatabaseHelper.dart';
import 'package:shaftt_app/model/NetworkResponse.dart';
import 'package:shaftt_app/model/Result.dart';
import 'package:shaftt_app/model/packagesModel.dart';
import 'package:shaftt_app/model/studentModel.dart';
import 'package:shaftt_app/util/RequestType.dart';
import 'package:shaftt_app/util/Singleton.dart';
import '../SharedPrefs.dart';
import '../student_Packages.dart';

class packagesRemoteDataSource {
  //Creating Singleton
  packagesRemoteDataSource._privateConstructor();
  static final packagesRemoteDataSource _apiResponse =
      packagesRemoteDataSource._privateConstructor();
  factory packagesRemoteDataSource() => _apiResponse;
  var instance = Singleton.instance;
  var prefs = null;
  final dbHelper = StudentDatabaseHelper.instance;
  // s1.studentRegisert
  AppClient client = AppClient(Client());

  StreamController<Result> _packagesStream;
  Stream<Result> hasBookAdded() => _packagesStream.stream;
  // void _query() async {
  //   final allRows = await dbHelper.queryAllRows();
  //   print('query all rows:');
  //   allRows.forEach((row) => print(row));
  // }

  void init() => _packagesStream = StreamController();

  Future<Result> loginStudent(Student student, BuildContext context) async {
    _packagesStream.sink.add(Result<String>.loading("Loading"));
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
        _packagesStream.sink.add(Result<NetworkResponse>.success(
            NetworkResponse.fromRawJson(response.body)));
        print(response.body);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => StudentPackages()));
        SharedPrefs.setLogin(true);
        SharedPrefs.setStudent(map["student"]);
      } else {
        print((response.statusCode));
        print((student.password));
        _packagesStream.sink.add(Result.error("Something went wrong"));
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

  Future<List<Map>> fetchEmployeesFromDatabase() async {
    var dbHelper = DBHelper();
    Future<List<Map>> employees = dbHelper.getEmployees();
    return employees;
  }

  Future<Result> getPackages() async {
    instance.refreshStudent();
    print("5AAAAAAAAAAAAAAAAARRRRRRRRRRRRAAAAAAAAAAAAAA");
    _packagesStream = StreamController();
    Map<String, dynamic> map;
    try {
      final response = await client.request(
          requestType: RequestType.GET, path: instance.packageSchedule);
      map = jsonDecode(response.body);

      if (response.statusCode == 200) {
        List<PackagesModel> list = new List<PackagesModel>();
        // List<PackagesModel> list = List<PackagesModel>.from(
        //     jsonDecode(map["packages"]["data"].toString())
        //         .map((x) => PackagesModel.fromJson(x)));
        List loadedCars = map["packages"]["data"];
        // print(loadedCars);
        for (var i in loadedCars) {
          // print(i);

          list.add(new PackagesModel.fromJson(i));
        }

        // List<PackagesModel> list = List<PackagesModel>.from(
        //     jsonDecode(map["packages"]["data"].toString())
        //         .map((x) => PackagesModel.fromJson(x)));
        // print(list.first);
        Library lin = new Library(books: list);
        return Result.success(lin);
        // _packagesStream.sink.add(Result<NetworkResponse>.success(
        //     NetworkResponse.fromRawJson(map["packages"]["data"])));

        // print(map["packages"]["data"]);
      } else {
        return Result.error("Book list not available");
      }
    } catch (error) {
      print(error);
      return Result.error("Something went wrong!");
    }
  }

  void dispose() => _packagesStream.close();
}
