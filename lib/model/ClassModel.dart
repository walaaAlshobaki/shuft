import 'dart:convert';

class ClassModelList {
  List<ClassModel> classModelList;

  ClassModelList({this.classModelList});

  factory ClassModelList.fromRawJson(String str) =>
      ClassModelList.fromJson(json.decode(str));

  factory ClassModelList.fromJson(Map<String, dynamic> json) => ClassModelList(
      classModelList: List<ClassModel>.from(
          json["classModelList"].map((x) => ClassModel.fromJson(x))));

  Map<String, dynamic> toJson() => {
        "ClassModel": List<dynamic>.from(classModelList.map((x) => x.toJson())),
      };
}

class ClassModel {
  final int id;
  final String classComment;
  final String classType;
  final String studentId;
  final String teacherId;
  final String stageId;
  final String classStatus;
  final String startTime;
  final String endTime;
  final String dateOfClass;
  final int paymentType;
  final int packageId;
  final String avilable;

  ClassModel({
    this.id,
    this.classComment,
    this.classType,
    this.studentId,
    this.teacherId,
    this.stageId,
    this.classStatus,
    this.startTime,
    this.endTime,
    this.dateOfClass,
    this.paymentType,
    this.packageId,
    this.avilable,
  });

  factory ClassModel.fromJson(Map<String, dynamic> json) => ClassModel(
        id: json["id"],
        classComment: json["classComment"],
        classType: json["classType"],
        studentId: json["studentId"],
        teacherId: json["teacherId"],
        stageId: json["stageId"],
        classStatus: json["classStatus"],
        startTime: json["startTime"],
        endTime: json["endTime"],
        dateOfClass: json["dateOfClass"],
        paymentType: json["paymentType"],
        packageId: json["packageId"],
        avilable: json["avilable"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "classComment": classComment,
        "classType": classType,
        "studentId": studentId,
        "teacherId": teacherId,
        "stageId": stageId,
        "classStatus": classStatus,
        "startTime": startTime,
        "endTime": endTime,
        "dateOfClass": dateOfClass,
        "paymentType": paymentType,
        "packageId": packageId,
        "avilable": avilable,
      };
}
