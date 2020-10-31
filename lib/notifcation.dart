import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'SharedPrefs.dart';

class NotifactionList extends StatefulWidget {
  @override
  _NotifactionState createState() => _NotifactionState();
}

class _NotifactionState extends State<NotifactionList> {
  var prefs = SharedPreferences.getInstance();
  String name = "";
  @override
  void initState() {
    super.initState();
    Future<String> authToken = SharedPrefs.getUsername();
    authToken.then((data) {
      name = data.toString();
    }, onError: (e) {
      print(e);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
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
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Row(children: <Widget>[
                                Icon(
                                  Icons.notifications_none,
                                  size: 50.0,
                                  color: new Color(0xff55CE9D),
                                ),
                                Text(
                                  "Notifications",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: new Color(0xff707070)),
                                ),
                              ])),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Divider(
                                height: 2.0,
                                color: Colors.grey,
                              ))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 170, 10, 0),
                    child: ListView.builder(
                      itemBuilder: (context, position) {
                        return Column(
                          children: <Widget>[
                            Container(
                              child: Stack(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 0, left: 10, right: 10),
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: <Widget>[
                                          Card(
                                            elevation: 5,
                                            color: new Color(0xffE8E8ED),
                                            margin: EdgeInsets.fromLTRB(
                                                0.0, 0.0, 0.0, 16.0),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            child: Container(
                                              height: 100,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 10,
                                                          top: 10,
                                                          right: 10),
                                                      child: 
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child: Container(
                                                                    child: Text(
                                                                  "Before 3 hour",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: new Color(
                                                                          0xff1F1E4F)),
                                                                ))),
                                                          ),
                                                  Row(
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 20),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: <Widget>[
                                                            Text(
                                                              "New class book",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      17.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                            Text(
                                                              "Ahmad Omar was book class with you ",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      14.0),
                                                            ),
                                                            Text(
                                                              "In 20/05/2020 at 3:00 pm ",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      14.0,
                                                                  color: new Color(
                                                                      0xff007EE7)),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                  // Divider(
                                  //   height: 2.0,
                                  //   color: Colors.grey,
                                  // )
                                ],
                              ),
                            )
                          ],
                        );
                      },
                      itemCount: 15,
                    ),
                  )
                ],
              ),
            ),
          ],
        )),
      );
    })));
  }

  Widget getRow(int i) {
    return GestureDetector(
      child: Padding(padding: EdgeInsets.all(10.0), child: Text("Row $i")),
      onTap: () {
        setState(() {
          // widgets.add(getRow(widgets.length + 1));
          print('row $i');
        });
      },
    );
  }
}
