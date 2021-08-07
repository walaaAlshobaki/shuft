import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';
import 'package:shaftt_app/AppClient/app_client.dart';
import 'package:shaftt_app/model/ClassModel.dart';
import 'package:shaftt_app/model/Result.dart';
import 'package:shaftt_app/util/RequestType.dart';
import 'package:shaftt_app/util/Singleton.dart';

class ClassRemoteDataSource {
  ClassRemoteDataSource._privateConstructor();
  static final ClassRemoteDataSource _apiResponse =
      ClassRemoteDataSource._privateConstructor();
  factory ClassRemoteDataSource() => _apiResponse;
  var instance = Singleton.instance;

  AppClient client = AppClient(Client());

  StreamController<Result> _ClassStream;

  void init() => _ClassStream = StreamController();

  Future<Result> getBookingClass() async {
    // instance.refreshStudent();
    _ClassStream = StreamController();
    Map<String, dynamic> map;
    try {
      final response = await client.request(
          requestType: RequestType.GET, path: instance.allClass);
      map = jsonDecode(response.body);
      print("allClass   " + map.toString());

      if (response.statusCode == 200) {
        List<ClassModel> list = new List<ClassModel>();
        List loadedCars = map["Classes"];

        for (var i in loadedCars) {
          if (ClassModel.fromJson(i).classStatus == "0") {
            list.add(new ClassModel.fromJson(i));
          }
        }

        ClassModelList lin = new ClassModelList(classModelList: list);
        return Result.success(lin);
      } else {
        return Result.error("trainer list not available");
      }
    } catch (error) {
      print(error);
      return Result.error("Something went wrong!");
    }
  }

  Future<Result> getCompletedClass() async {
    // instance.refreshStudent();
    _ClassStream = StreamController();
    Map<String, dynamic> map;
    try {
      final response = await client.request(
          requestType: RequestType.GET, path: instance.allClass);
      map = jsonDecode(response.body);
      print("allClass   " + map.toString());

      if (response.statusCode == 200) {
        List<ClassModel> list = new List<ClassModel>();
        List loadedCars = map["Classes"];

        for (var i in loadedCars) {
          if (ClassModel.fromJson(i).classStatus == "1") {
            list.add(new ClassModel.fromJson(i));
          }
        }

        ClassModelList lin = new ClassModelList(classModelList: list);
        return Result.success(lin);
      } else {
        return Result.error("trainer list not available");
      }
    } catch (error) {
      print(error);
      return Result.error("Something went wrong!");
    }
  }
}
