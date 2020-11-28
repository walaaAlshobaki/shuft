import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:shaftt_app/AppClient/app_client.dart';
import 'package:shaftt_app/Database/DBHelper.dart';
import 'package:shaftt_app/model/Result.dart';
import 'package:shaftt_app/model/TrainerModel.dart';
import 'package:shaftt_app/util/RequestType.dart';
import 'package:shaftt_app/util/Singleton.dart';

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

  void dispose() => _trainerStream.close();
}
