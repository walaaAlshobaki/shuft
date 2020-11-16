import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:location/location.dart';

class Student {
  final String firstName;
  final String lastName;
  final String email;
  final String phoneNumber;
  final String password;
  final String birthday;
  final File certifcateCodeFile;
  final String certifcateCode;
  final String IDNum;
  final String Gender;
  final String location;
  final String updated_at;
  final String created_at;
  final String id;
  final String profile;
  final String api_token;

  Student(
      {this.firstName,
      this.lastName,
      this.email,
      this.phoneNumber,
      this.password,
      this.birthday,
      this.certifcateCodeFile,
      this.certifcateCode,
      this.IDNum,
      this.Gender,
      this.location,
      this.updated_at,
      this.created_at,
      this.id,
      this.profile,
      this.api_token});

  factory Student.fromJson(Map<String, dynamic> json) => Student(
      firstName: json["firstName"],
      lastName: json["lastName"],
      email: json["email"],
      phoneNumber: json["phoneNumber"],
      password: json["password"],
      birthday: json["birthday"],
      certifcateCode: json["certifcateCode"],
      IDNum: json["IDNum"],
      Gender: json["Gender"],
      location: json["location"],
      updated_at: json["updated_at"],
      created_at: json["created_at"],
      id: json["id"]);

  Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "phoneNumber": phoneNumber,
        "password": password,
        "birthday": birthday,
        "certifcateCode": certifcateCode,
        "IDNum": IDNum,
        "Gender": Gender,
        "location": location,
        "updated_at": updated_at,
        "created_at": created_at,
        "id": id
      };
}
