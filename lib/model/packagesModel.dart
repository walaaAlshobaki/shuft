import 'dart:convert';

import 'package:shaftt_app/model/TrainerModel.dart';

class Library {
  List<PackagesModel> books;

  Library({this.books});

  factory Library.fromRawJson(String str) => Library.fromJson(json.decode(str));

  factory Library.fromJson(Map<String, dynamic> json) => Library(
      books: List<PackagesModel>.from(
          json["bookList"].map((x) => PackagesModel.fromJson(x))));

  Map<String, dynamic> toJson() => {
        "bookList": List<dynamic>.from(books.map((x) => x.toJson())),
      };
}

class PackagesModel {
  final int id;
  final int classCounter;
  final int price;
  final String startTime;
  final String endTime;
  final int teacherId;
  final int packegeLimit;
  final int MaxClass;
  final int avilable;
  final Map<String, dynamic> trainer;

  PackagesModel({
    this.id,
    this.classCounter,
    this.price,
    this.startTime,
    this.endTime,
    this.teacherId,
    this.packegeLimit,
    this.MaxClass,
    this.avilable,
    this.trainer,
  });

  factory PackagesModel.fromJson(Map<String, dynamic> json) => PackagesModel(
      id: json["id"],
      classCounter: json["classCounter"],
      price: json["price"],
      startTime: json["startTime"],
      endTime: json["endTime"],
      teacherId: json["teacherId"],
      packegeLimit: json["packegeLimit"],
      MaxClass: json["MaxClass"],
      avilable: json["avilable"],
      trainer: json["trainer"]);

  Map<String, dynamic> toJson() => {
        "id": id,
        "classCounter": classCounter,
        "email": price,
        "startTime": startTime,
        "endTime": endTime,
        "teacherId": teacherId,
        "packegeLimit": packegeLimit,
        "MaxClass": MaxClass,
        "avilable": avilable,
        "trainer": trainer
      };
  factory PackagesModel.fromRawJson(String str) =>
      PackagesModel.fromJson(json.decode(str));
}
