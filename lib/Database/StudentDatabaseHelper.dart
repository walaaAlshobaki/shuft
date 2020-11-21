import 'dart:io';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class StudentDatabaseHelper {
  static final _databaseName = "student.db";
  static final _databaseVersion = 1;

  static final table = 'student_table';
  static final firstName = "firstName";
  static final lastName = "lastName";
  static final email = "email";
  static final id = "id";
  static final phoneNumber = "phoneNumber";
  static final password = "password";
  static final birthday = "birthday";
  static final aveter = "aveter";

  static final certifcateCode = "certifcateCode";
  static final IDNum = "IDNum";
  static final Gender = "Gender";
  static final location = "location";
  static final profile = "profile";
  static final api_token = "api_token";

  static final columnId = '_id';
  static final columnName = 'name';
  static final columnAge = 'age';
  // make this a singleton class
  StudentDatabaseHelper._privateConstructor();
  static final StudentDatabaseHelper instance =
      StudentDatabaseHelper._privateConstructor();

  // only have a single app-wide reference to the database
  static Database _database;
  Future<Database> get database async {
    if (_database != null) return _database;
    // lazily instantiate the db the first time it is accessed
    _database = await _initDatabase();
    return _database;
  }

  // this opens the database (and creates it if it doesn't exist)
  _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  // Future _onCreate(Database db, int version) async {
  //   await db.execute('''
  //         CREATE TABLE $table (
  //                    $columnId INTEGER PRIMARY KEY,
  //           $columnName TEXT NOT NULL,
  //           $columnAge INTEGER NOT NULL
  //         )
  //         ''');
  // }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE $table (
            $columnId INTEGER PRIMARY KEY,
            $firstName TEXT ,
             $id TEXT,
            $lastName TEXT ,
            $email TEXT ,
            $phoneNumber TEXT ,
            $birthday TEXT ,
            $aveter TEXT  ,
            $IDNum TEXT ,
            $Gender TEXT ,
            $location TEXT ,
            $profile TEXT ,
            $api_token TEXT ,
          )
          ''');
  }

  // Helper methods

  // Inserts a row in the database where each key in the Map is a column name
  // and the value is the column value. The return value is the id of the
  // inserted row.
  Future<int> insert(Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db.insert(table, row);
  }

  // All of the rows are returned as a list of maps, where each map is
  // a key-value list of columns.
  Future<List<Map<String, dynamic>>> queryAllRows() async {
    Database db = await instance.database;
    return await db.query(table);
  }

  // All of the methods (insert, query, update, delete) can also be done using
  // raw SQL commands. This method uses a raw query to give the row count.
  Future<int> queryRowCount() async {
    Database db = await instance.database;
    return Sqflite.firstIntValue(
        await db.rawQuery('SELECT COUNT(*) FROM $table'));
  }

  // We are assuming here that the id column in the map is set. The other
  // column values will be used to update the row.
  Future<int> update(Map<String, dynamic> row) async {
    Database db = await instance.database;
    int id = row[columnId];
    return await db.update(table, row, where: '$columnId = ?', whereArgs: [id]);
  }

  // Deletes the row specified by the id. The number of affected rows is
  // returned. This should be 1 as long as the row exists.
  Future<int> delete(int id) async {
    Database db = await instance.database;
    return await db.delete(table, where: '$columnId = ?', whereArgs: [id]);
  }
}
