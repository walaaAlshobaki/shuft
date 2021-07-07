import 'dart:async';
import 'package:async/async.dart' as ass;
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:shaftt_app/AppClient/app_client.dart';
import 'package:shaftt_app/Database/DBHelper.dart';
import 'package:shaftt_app/model/NetworkResponse.dart';
import 'package:shaftt_app/model/Result.dart';
import 'package:shaftt_app/model/TrainerDataModel.dart';
import 'package:shaftt_app/model/TrainerModel.dart';
import 'package:shaftt_app/util/RequestType.dart';
import 'package:shaftt_app/util/Singleton.dart';
import 'package:path/path.dart';
import '../TrainerHome.dart';

class TrainerRemoteDataSource {
  //Creating Singleton
  TrainerRemoteDataSource._privateConstructor();
  static final TrainerRemoteDataSource _apiResponse =
      TrainerRemoteDataSource._privateConstructor();
  factory TrainerRemoteDataSource() => _apiResponse;
  var instance = Singleton.instance;

  AppClient client = AppClient(Client());

  StreamController<Result> _trainerStream;

  void init() => _trainerStream = StreamController();

  Future<List<Map>> fetchEmployeesFromDatabase() async {
    var dbHelper = DBHelper();
    Future<List<Map>> employees = dbHelper.getEmployees();
    return employees;
  }

  Future<Result> getTrainer() async {
    // instance.refreshStudent();
    _trainerStream = StreamController();
    Map<String, dynamic> map;
    try {
      final response = await client.request(
          requestType: RequestType.GET, path: instance.allTeacher);
      map = jsonDecode(response.body);
      print("allTeacher   " + map.toString());

      if (response.statusCode == 200) {
        List<TrainerModel> list = new List<TrainerModel>();
        List loadedCars = map["teacher"]["data"];

        for (var i in loadedCars) {
          list.add(new TrainerModel.fromJson(i));
        }

        TrainerModelList lin = new TrainerModelList(trainerModelList: list);
        return Result.success(lin);
      } else {
        return Result.error("trainer list not available");
      }
    } catch (error) {
      print(error);
      return Result.error("Something went wrong!");
    }
  }

  Future<List<TrainerModel>> searchTeacher(String search) async {
    print("OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO");
    // instance.refreshStudent();
    _trainerStream = StreamController();
    Map<String, dynamic> map;
    try {
      List searchList = search.split(" ");
      Map data;
      if (searchList.isEmpty) {
        data = {'firstName': search};
      } else {
        data = {'firstName': searchList[0], 'lastName': searchList[1]};
      }

      final response = await client.request(
          requestType: RequestType.POST,
          path: instance.filterTeacherName,
          parameter: data);
      map = jsonDecode(response.body);
      print("searchTeacher   " + map["filter"].toString());

      if (response.statusCode == 200) {
        List<TrainerModel> list = new List<TrainerModel>();
        List loadedCars = map["filter"];

        for (var i in loadedCars) {
          list.add(new TrainerModel.fromJson(i));
        }

        TrainerModelList lin = new TrainerModelList(trainerModelList: list);
        return list;
      } else {
        // return Result.error("trainer list not available");
      }
    } catch (error) {
      print(error);
      // return Result.error("Something went wrong!");
    }
  }

  void registerTrainaier(
      TrainairDataModel trainairDataModel, BuildContext context) async {
    _trainerStream = StreamController();
    Map<String, dynamic> map;

// final uri = 'https://shafft.com/api/Student/register-student';

    Map<String, String> headers = {
      "Accept": "application/json"
    }; // ignore this headers if there is no authentication

    // string to uri
    var uri = Uri.parse("https://shafft.com/api/Trainer/register-trainer");

    // create multipart request
    var request = new http.MultipartRequest("POST", uri);

    var stream = new http.ByteStream(
        ass.DelegatingStream.typed(trainairDataModel.driverLicens.openRead()));
    // get file length
    var length = await trainairDataModel.driverLicens
        .length(); //imageFile is your image file
    // multipart that takes file
    var multipartFileSign = new http.MultipartFile(
        'driverLicens', stream, length,
        filename: basename(trainairDataModel.driverLicens.path));

    // add file to multipart
    request.files.add(multipartFileSign);

    var streamcarImage = new http.ByteStream(
        ass.DelegatingStream.typed(trainairDataModel.driverLicens.openRead()));
    // get file length
    var lengthcarImage = await trainairDataModel.driverLicens
        .length(); //imageFile is your image file

    var multipartFilecarImage = new http.MultipartFile(
        'carImage', streamcarImage, lengthcarImage,
        filename: basename(trainairDataModel.carImage.path));

    // add file to multipart
    request.files.add(multipartFilecarImage);

    var streamtestImage = new http.ByteStream(
        ass.DelegatingStream.typed(trainairDataModel.driverLicens.openRead()));
    // get file length
    var lengthtestImage = await trainairDataModel.driverLicens
        .length(); //imageFile is your image file

    var multipartFiletestImage = new http.MultipartFile(
        'testImage', streamtestImage, lengthtestImage,
        filename: basename(trainairDataModel.testImage.path));

    // add file to multipart
    request.files.add(multipartFiletestImage);
    //add headers
    request.headers.addAll(headers);

    //adding params
    request.fields['firstName'] = trainairDataModel.firstName;
    request.fields['lastName'] = trainairDataModel.lastName;
    request.fields['email'] = trainairDataModel.email;
    request.fields['password'] = trainairDataModel.password;
    request.fields['phoneNumber'] = trainairDataModel.phoneNumber;
    request.fields['birthday'] = trainairDataModel.birthday;
    request.fields['details'] = trainairDataModel.details;
    request.fields['test'] = "0";
    request.fields['location'] = trainairDataModel.location;
    request.fields['IDNum'] = trainairDataModel.IDNum;
    request.fields['Gender'] = trainairDataModel.Gender.toString();
    request.fields['shiftGear'] = trainairDataModel.shiftGear.toString();
    request.fields['password_confirmation'] = trainairDataModel.password;
    request.fields['Lesson_price'] = trainairDataModel.Lesson_price;

    // send

    var response = await request.send();

    print(response.statusCode);

    // listen for response
    response.stream.transform(utf8.decoder).listen((value) {
      print(value);

      map = jsonDecode(value);
      var message = map["msg"];
      if (message == 'User successfully registered') {
        _trainerStream.sink.add(Result<NetworkResponse>.success(
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TrainerHome()));
                    // SharedPrefs.setLogin(true);
                    // SharedPrefs.setStudent(map["student"]);
                  },
                ),
              ],
            );
          },
        );
        // prefs = SharedPreferences.getInstance();
        // SharedPrefs.setUsername(
        //     map["student"]["firstName"] + " " + map["student"]["lastName"]);
        // SharedPrefs.setUserToken(map["student"]["api_token"]);
      } else {
        // If Email or Password did not Matched.
        // Hiding the CircularProgressIndicator.
        _trainerStream.sink.add(Result.error("Something went wrong"));
        // SharedPrefs.setLogin(false);
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

  Future<Result> loginTrainair(
      TrainairDataModel trainairDataModel, BuildContext context) async {
    _trainerStream = StreamController();

    Map<String, dynamic> map;
    try {
      final response = await client.request(
          requestType: RequestType.POST,
          path: instance.trainerLogin,
          parameter: trainairDataModel);
      map = jsonDecode(response.body);
      // print(map["student"]);
      var message = map["status"];
      print(map["msg"]);
      if (response.statusCode == 200) {
        if (message != 'false') {
          // _trainerStream.sink.add(Result<NetworkResponse>.success(
          //     NetworkResponse.fromRawJson(response.body)));
          print(response.body);

          Navigator.push(
              context, MaterialPageRoute(builder: (context) => TrainerHome()));
        }
      } else {
        // print((response.statusCode));
        // print((student.password));

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

  void dispose() => _trainerStream.close();
}
