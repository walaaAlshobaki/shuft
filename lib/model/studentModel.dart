import 'dart:io';

class Student {
  String firstName;
  String lastName;
  String email;
  String phoneNumber;
  String password;
  String birthday;
  File certifcateCodeFile;
  String certifcateCode;
  String IDNum;
  String Gender;
  String location;
  String updated_at;
  String created_at;
  String id;
  String profile;
  String api_token;

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
