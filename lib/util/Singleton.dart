class Singleton {
  static final Singleton _singleton = new Singleton._internal();
  Singleton._internal();
  static Singleton get instance => _singleton;
  var studentLogin = "Student/login-student";
  var studentRegisert = "Student/register-student";
  var classSchedule = "Student/Trainer/class-schedule";
  var packageSchedule = " Student/all-package-class";
}
