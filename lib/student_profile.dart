import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shaftt_app/MapSample.dart';
import 'package:shaftt_app/student_payment.dart';
import 'package:shaftt_app/themes.dart';
import 'Database/DBHelper.dart';
import 'RemoteDataSource/studentRemoteDataSource.dart';
import 'student_class_schedule.dart';
import 'student_setting.dart';

class StudentProfile extends StatefulWidget {
  @override
  State<StudentProfile> createState() => StudentProfileState();
}

class StudentProfileState extends State<StudentProfile> {
  String name = "";
  String studentProfileContOfClass = "";
  String studentProfileStage = "";
  double classcont = 0.0;
  StudentRemoteDataSource _apiResponse = StudentRemoteDataSource();
  var dbHelper = DBHelper();
  fetchEmployeesFromDatabase() async {
    Future<List<Map>> employees = dbHelper.getEmployees();
    List list = await employees;
    name = list.last["firstName"] + " " + list.last["lastName"];
    Future<String> authToken = _apiResponse.studentProfileContOfClass();
    authToken.then((data) {
      studentProfileContOfClass = data.toString();
      if (int.parse(studentProfileContOfClass) != 0) {
        classcont = (35 -
            int.parse(studentProfileContOfClass) /
                int.parse(studentProfileContOfClass) *
                100);
      } else {
        classcont = 0;
      }
    }, onError: (e) {
      print(e);
    });
    Future<String> studentStage = _apiResponse.studentProfileStages();
    studentStage.then((data) {
      studentProfileStage = data.toString();
    }, onError: (e) {
      print(e);
    });
    return name;
  }

  @override
  void initState() {
    super.initState();

    fetchEmployeesFromDatabase();
    _apiResponse.init();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: new Scaffold(
            body: Stack(children: <Widget>[
          Positioned(
            child: Container(
                height: 115.0,
                decoration: new BoxDecoration(
                  color: new Color(0xff1F1E4F),
                  boxShadow: [new BoxShadow(blurRadius: 5.0)],
                  borderRadius: new BorderRadius.vertical(
                      bottom: new Radius.elliptical(
                          MediaQuery.of(context).size.width, 40.0)),
                ),

                //TRY TO CHANGE THIS **0.30** value to achieve your goal
                child: Container(
                  margin: EdgeInsets.fromLTRB(60.0, 30.0, 70.0, 20.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/img/logo.png',
                          scale: 1.5,
                          width: 350,
                          height: 60,
                        ),
                        SizedBox(
                          height: 5,
                          width: 5,
                        ),
                      ]),
                )),
          ),
          Container(
              child: Stack(children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 140, left: 10, right: 10),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Image.asset(
                        "assets/img/user.png",
                        width: 118,
                        height: 118,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                name,
                                style: TextStyle(
                                    fontSize: 25.0,
                                    color: new Color(0xff55CE9D),
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: Image.asset("assets/img/steering.png",
                                      width: 30,
                                      height: 30,
                                      color: new Color(0xff007EE7))),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Text(
                                  studentProfileContOfClass + " class from 35",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Text(
                                  " stage : " + studentProfileContOfClass,
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                  child: SizedBox(
                                    width: 308,
                                    height: 8,
                                    child: LinearProgressIndicator(
                                      backgroundColor: new Color(0xff707070),
                                      valueColor:
                                          new AlwaysStoppedAnimation<Color>(
                                              new Color(0xff55CE9D)),
                                      value: classcont,
                                    ),
                                  )),
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 40, 0, 0),
                                  child: Container(
                                    color: Colors.white30,
                                    height: 400,
                                    child: GridView.count(
                                        crossAxisCount: 2,
                                        childAspectRatio: 1.0,
                                        padding: const EdgeInsets.all(4.0),
                                        mainAxisSpacing: 4.0,
                                        crossAxisSpacing: 4.0,
                                        children: <Widget>[
                                          roundedRectButton(
                                              "payment",
                                              Color(0xff1F1E4F),
                                              whiteGradients,
                                              StudentPayment(),
                                              Icons.payment),
                                          roundedRectButton(
                                              "My class schedule",
                                              Color(0xff1F1E4F),
                                              whiteGradients,
                                              StudentClassSchedule(),
                                              Icons.schedule),
                                          roundedRectButton(
                                              "Logout",
                                              Color(0xff1F1E4F),
                                              whiteGradients,
                                              MapSample(),
                                              Icons.person_outline),
                                          roundedRectButton(
                                              "settings",
                                              Color(0xff1F1E4F),
                                              whiteGradients,
                                              StudentSettings(),
                                              Icons.settings),
                                        ]),
                                  ))
                            ]))
                  ],
                ),
              ),
            )
          ])),
        ])));
  }

  Widget roundedRectButton(String title, Color textColor, List<Color> gradient,
      Widget page, IconData icon) {
    return Builder(builder: (BuildContext mContext) {
      return Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Stack(
          alignment: Alignment(1.0, 0.0),
          children: <Widget>[
            InkWell(
              child: Container(
                  alignment: Alignment.center,

                  // decoration: ShapeDecoration(
                  //   shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(50.0)),
                  //   gradient: LinearGradient(
                  //       colors: gradient,
                  //       begin: Alignment.topLeft,
                  //       end: Alignment.bottomRight),
                  // ),
                  child: Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                        Card(
                            elevation: 5,
                            color: new Color(0xffE8E8ED),
                            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: Container(
                                height: 75,
                                width: 75,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              icon,
                                              size: 35.0,
                                              color: new Color(0xff1F1E4F),
                                            ),
                                          ])
                                    ]))),
                        Text(title,
                            style: TextStyle(
                                color: textColor,
                                fontSize: 15,
                                fontFamily: "HelveticaMedium",
                                fontWeight: FontWeight.w200)),
                      ]))),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => page));
              },
            ),
          ],
        ),
      );
    });
  }
}
