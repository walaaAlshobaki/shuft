import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'student_profile.dart';

class StudentSettings extends StatefulWidget {
  @override
  _StudentSettingsState createState() => _StudentSettingsState();
}

class _StudentSettingsState extends State<StudentSettings> {
  bool _switchValue = true;
  final _formKey = GlobalKey<FormState>();
  List<bool> isSelectedGender = [true, false];
  _onSearchButtonPressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => StudentProfile()));
  }

  @override
  void initState() {
    super.initState();
    isSelectedGender = [true, false];
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: new Scaffold(
          body: Stack(
        children: <Widget>[
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
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 120, left: 10, right: 10),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
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
                                Icons.settings,
                                size: 35.0,
                                color: new Color(0xff55CE9D),
                              ),
                              Text(
                                "Settings",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: new Color(0xff707070)),
                              ),
                            ])),
                      ],
                    ),
                  ),
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.fromLTRB(30, 200, 30, 0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Notifications",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: new Color(0xff1F1E4F)),
                                ),
                                CupertinoSwitch(
                                  activeColor: new Color(0xff55CE9D),
                                  value: _switchValue,
                                  onChanged: (value) {
                                    setState(() {
                                      _switchValue = value;
                                    });
                                  },
                                ),
                              ])),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                          child: Divider(
                            height: 2.0,
                            color: Colors.grey,
                          )),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                          child: new InkWell(
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Language",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        color: new Color(0xff1F1E4F)),
                                  ),
                                ]),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      content: Stack(
                                        overflow: Overflow.visible,
                                        children: <Widget>[
                                          Positioned(
                                            right: -40.0,
                                            top: -40.0,
                                            child: InkResponse(
                                              onTap: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: CircleAvatar(
                                                child: Icon(Icons.close),
                                                backgroundColor: Colors.red,
                                              ),
                                            ),
                                          ),
                                          Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                               Padding(
                          padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                          child: InkWell(
                                                    child: Text(
                                                      "Arabic",
                                                      style: TextStyle(
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: new Color(
                                                              0xff1F1E4F)),
                                                    ),
                                                    onTap: () {}),
                                               ), Padding(
                          padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                          child: Divider(
                            height: 2.0,
                            color: Colors.grey,
                          )),
                                                Padding(
                          padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                          child:InkWell(
                                                    child: Text(
                                                      "English",
                                                      style: TextStyle(
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: new Color(
                                                              0xff1F1E4F)),
                                                    ),
                                                    onTap: () {}),), Padding(
                          padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                          child: Divider(
                            height: 2.0,
                            color: Colors.grey,
                          )),
                                                Padding(
                          padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                          child:InkWell(
                                                    child: Text(
                                                      "Hebrew",
                                                      style: TextStyle(
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: new Color(
                                                              0xff1F1E4F)),
                                                    ),
                                                    onTap: () {}))
                                              ])
                                        ],
                                      ),
                                    );
                                  });

                              // Navigator.pushNamed(context, "YourRoute");
                            },
                          )),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                          child: Divider(
                            height: 2.0,
                            color: Colors.grey,
                          )),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "About us",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: new Color(0xff1F1E4F)),
                                ),
                              ])),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                          child: Divider(
                            height: 2.0,
                            color: Colors.grey,
                          )),
                    ])
              ],
            ),
          ),
        ],
      )),
    );
  }
}
