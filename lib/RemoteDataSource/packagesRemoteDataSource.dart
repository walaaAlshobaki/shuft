import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:shaftt_app/AppClient/app_client.dart';
import 'package:shaftt_app/Database/DBHelper.dart';
import 'package:shaftt_app/model/Result.dart';
import 'package:shaftt_app/model/packagesModel.dart';
import 'package:shaftt_app/util/RequestType.dart';
import 'package:shaftt_app/util/Singleton.dart';

class packagesRemoteDataSource {
  //Creating Singleton
  packagesRemoteDataSource._privateConstructor();
  static final packagesRemoteDataSource _apiResponse =
      packagesRemoteDataSource._privateConstructor();
  factory packagesRemoteDataSource() => _apiResponse;
  var instance = Singleton.instance;

  AppClient client = AppClient(Client());

  StreamController<Result> _packagesStream;

  void init() => _packagesStream = StreamController();

  Future<List<Map>> fetchEmployeesFromDatabase() async {
    var dbHelper = DBHelper();
    Future<List<Map>> employees = dbHelper.getEmployees();
    return employees;
  }

  Future<Result> getPackages() async {
    // instance.refreshStudent();
    _packagesStream = StreamController();
    Map<String, dynamic> map;
    try {
      final response = await client.request(
          requestType: RequestType.GET, path: instance.packageSchedule);
      map = jsonDecode(response.body);

      if (response.statusCode == 200) {
        List<PackagesModel> list = new List<PackagesModel>();
        List loadedCars = map["packages"]["data"];

        for (var i in loadedCars) {
          list.add(new PackagesModel.fromJson(i));
        }

        // List<PackagesModel> list = List<PackagesModel>.from(
        //     jsonDecode(map["packages"]["data"].toString())
        //         .map((x) => PackagesModel.fromJson(x)));
        // print(list.first);
        Library lin = new Library(books: list);
        return Result.success(lin);
      } else {
        return Result.error("packages list not available");
      }
    } catch (error) {
      print(error);
      return Result.error("Something went wrong!");
    }
  }

  void dispose() => _packagesStream.close();
}
