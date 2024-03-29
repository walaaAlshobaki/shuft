import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shaftt_app/student_profile.dart';

import 'booking_class.dart';
import 'student_complete_class.dart';

class StudentClassSchedule extends StatefulWidget {
  @override
  State<StudentClassSchedule> createState() => StudentClassScheduleState();
}

class StudentClassScheduleState extends State<StudentClassSchedule> {
  @override
  void initState() {
    super.initState();
  }

  void _onSearchButtonPressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => StudentProfile()));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: new Scaffold(
            body: Stack(children: <Widget>[
          Positioned(
            child: Container(
                height: 125.0,
                decoration: new BoxDecoration(
                  color: new Color(0xff1F1E4F),
                  boxShadow: [new BoxShadow(blurRadius: 5.0)],
                  borderRadius: new BorderRadius.vertical(
                      bottom: new Radius.elliptical(
                          MediaQuery.of(context).size.width, 40.0)),
                ),

                //TRY TO CHANGE THIS **0.30** value to achieve your goal
                child: Container(
                  margin: EdgeInsets.fromLTRB(60.0, 40.0, 70.0, 20.0),
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
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 132, 10, 0),
              child: Row(children: <Widget>[
                new IconButton(
                  icon: new Icon(Icons.arrow_back_ios),
                  color: new Color(0xff55CE9D),
                  iconSize: 30,
                  onPressed: () {
                    _onSearchButtonPressed();
                  },
                ),
                Icon(
                  Icons.schedule,
                  size: 35.0,
                  color: new Color(0xff55CE9D),
                ),
                Text(
                  "My class schedule",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: new Color(0xff707070)),
                ),
              ])),
          Padding(
            padding: EdgeInsets.only(top: 172),
            child: Container(
              height: 50,
              child: TabBar(
                  indicator: UnderlineTabIndicator(
                      borderSide:
                          BorderSide(color: Color(0xff55CE9D), width: 5.0),
                      insets: EdgeInsets.symmetric(horizontal: 25.0)),
                  unselectedLabelColor: Color(0xff55CE9D),
                  tabs: [
                    Tab(
                      child: Text(
                        "Complete",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "HelveticaBold",
                            color: Color(0xff1F1E4F)),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Booked",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "HelveticaBold",
                            color: Color(0xff1F1E4F)),
                      ),
                    ),
                  ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 220),
            child: Container(
              child: TabBarView(children: [CompleteClass(), BookingClass()]),
            ),
          ),
        ])));
  }
}
