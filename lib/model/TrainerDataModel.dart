import 'dart:io';

class TrainairDataModel {
  String firstName;
  String lastName;
  String email;
  String phoneNumber;
  String password;
  String birthday;
  File driverLicens;
  File carImage;
  File testImage;
  String shiftGear;
  String IDNum;
  String Gender;
  String location;
  String details;
  String test;
  String Lesson_price;
  String id;
  String profile;
  String api_token;

  TrainairDataModel(
      {this.firstName,
      this.lastName,
      this.email,
      this.phoneNumber,
      this.password,
      this.birthday,
      this.driverLicens,
      this.carImage,
      this.IDNum,
      this.Gender,
      this.location,
      this.testImage,
      this.shiftGear,
      this.details,
      this.Lesson_price,
      this.id,
      this.test,
      this.profile,
      this.api_token});

  factory TrainairDataModel.fromJson(Map<String, dynamic> json) =>
      TrainairDataModel(
          firstName: json["firstName"],
          lastName: json["lastName"],
          email: json["email"],
          phoneNumber: json["phoneNumber"],
          password: json["password"],
          birthday: json["birthday"],
          driverLicens: json["driverLicens"],
          IDNum: json["IDNum"],
          Gender: json["Gender"],
          location: json["location"],
          testImage: json["testImage"],
          shiftGear: json["shiftGear"],
          carImage: json["carImage"],
          details: json["details"],
          Lesson_price: json["Lesson_price"],
          test: json["test"],
          id: json["id"]);

  Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "phoneNumber": phoneNumber,
        "password": password,
        "birthday": birthday,
        "driverLicens": driverLicens,
        "IDNum": IDNum,
        "Gender": Gender,
        "location": location,
        "testImage": testImage,
        "carImage": carImage,
        "shiftGear": shiftGear,
        "Lesson_price": Lesson_price,
        "id": id,
        "test": test
      };
}
