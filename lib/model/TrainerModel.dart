class TrainerModel {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String phoneNumber;
  final String driverLicens;
  final String shiftGear;
  final String carImage;
  final String IDNum;
  final String birthday;
  final String details;
  final int Gender;
  final String testImage;
  final int test;
  final double Lesson_price;
  final String location;
  final String avatar;

  TrainerModel(
      {this.id,
      this.firstName,
      this.lastName,
      this.email,
      this.phoneNumber,
      this.driverLicens,
      this.shiftGear,
      this.carImage,
      this.IDNum,
      this.birthday,
      this.password,
      this.details,
      this.Gender,
      this.testImage,
      this.test,
      this.Lesson_price,
      this.location,
      this.avatar});

  factory TrainerModel.fromJson(Map<String, dynamic> json) => TrainerModel(
      id: json["id"],
      firstName: json["firstName"],
      lastName: json["lastName"],
      email: json["email"],
      phoneNumber: json["phoneNumber"],
      driverLicens: json["driverLicens"],
      shiftGear: json["shiftGear"],
      carImage: json["carImage"],
      IDNum: json["IDNum"],
      birthday: json["birthday"],
      password: json["password"],
      details: json["details"],
      Gender: json["Gender"],
      testImage: json["testImage"],
      test: json["test"],
      Lesson_price: json["Lesson_price"],
      location: json["location"],
      avatar: json["avatar"]);

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "phoneNumber": phoneNumber,
        "driverLicens": driverLicens,
        "shiftGear": shiftGear,
        "carImage": carImage,
        "IDNum": IDNum,
        "birthday": birthday,
        "password": password,
        "details": details,
        "Gender": Gender,
        "testImage": testImage,
        "test": test,
        "Lesson_price": Lesson_price,
        "location": location,
        "avatar": avatar
      };
}
