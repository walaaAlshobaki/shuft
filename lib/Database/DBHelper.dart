import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:shaftt_app/model/studentModel.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DBHelper {
  static Database _db;

  Future<Database> get db async {
    if (_db != null) return _db;
    _db = await initDb();
    return _db;
  }

  //Creating a database with name test.dn in your directory
  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "student_table.db");
    var theDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return theDb;
  }

  // Creating a table name Employee with fields
  void _onCreate(Database db, int version) async {
    print("Create tables");
    // When creating the db, create the table
    await db.execute(
        'CREATE TABLE student_table( columnId INTEGER PRIMARY KEY,firstName TEXT ,id TEXT, lastName TEXT , email TEXT ,phoneNumber TEXT ,birthday TEXT ,aveter TEXT  , IDNum TEXT ,Gender TEXT , location TEXT , profile TEXT ,api_token TEXT )');
    print("Created tables");
  }

  // Retrieving employees from Employee Tables
  Future<List<Map>> getEmployees() async {
    print("SELECT * FROM student_table");
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery('SELECT * FROM student_table');
    print(list[0]);
    // List<Student> employees = new List();
    // for (int i = 0; i < list.length; i++) {
    //   print(list[i]);
    //   print("SELECT * FROM student_table");
    //   Student student = new Student();
    //   student.firstName = list[i]["firstName"];
    //   student.id = list[i]["id"];
    //   student.lastName = list[i]["lastName"];
    //   student.email = list[i]["email"];
    //   student.phoneNumber = list[i]["phoneNumber"];
    //   student.birthday = list[i]["birthday"];
    //   student.certifcateCode = list[i]["aveter"];
    //   student.IDNum = list[i]["IDNum"];
    //   student.Gender = list[i]["Gender"];
    //   student.location = list[i]["location"];
    //   student.profile = list[i]["profile"];
    //   student.api_token = list[i]["api_token"];
    //   print(student.api_token);
    //   employees.add(student);
    // }

    print(list.length);
    return list;
  }

  updateStudent(Student question) async {
    print("WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW");
    var dbClient = await db;
    await dbClient.transaction((txn) async {
      var res = await txn.update("student_table", question.toJson(),
          where: "columnId = ?", whereArgs: [question.id]);
      print("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA" + res.toString());
    });
  }

  void saveEmployee(Student employee) async {
    print("INSERT INTO student_table");
    var dbClient = await db;
    await dbClient.transaction((txn) async {
      int id1 = await txn.rawInsert(
          'INSERT INTO student_table(firstName,id, lastName, email, phoneNumber ,birthday,aveter,IDNum,Gender,location,profile,api_token) VALUES(' +
              '\'' +
              employee.firstName +
              '\'' +
              ',' +
              '\'' +
              employee.id.toString() +
              '\'' +
              ',' +
              '\'' +
              employee.lastName +
              '\'' +
              ',' +
              '\'' +
              employee.email +
              '\'' +
              ',' +
              '\'' +
              employee.phoneNumber +
              '\'' +
              ',' +
              '\'' +
              employee.birthday +
              '\'' +
              ',' +
              '\'' +
              employee.certifcateCode +
              '\'' +
              ',' +
              '\'' +
              employee.IDNum +
              '\'' +
              ',' +
              '\'' +
              employee.Gender.toString() +
              '\'' +
              ',' +
              '\'' +
              employee.location +
              '\'' +
              ',' +
              '\'' +
              employee.profile +
              '\'' +
              ',' +
              '\'' +
              employee.api_token +
              '\'' +
              ')');
      print('inserted1: $id1');
    });
  }
}
