import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'SharedPrefs.dart';

class Packages extends StatefulWidget {
  @override
  _PackagesState createState() => _PackagesState();
}

class _PackagesState extends State<Packages> {
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
    return MaterialApp(
      theme: Theme.of(context).copyWith(platform: TargetPlatform.android),
      debugShowCheckedModeBanner: false,
  home: DefaultTabController(
      length: 2,
      child: new Scaffold(
          body: Stack(
        children: <Widget>[
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
          Container(
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 130, left: 10, right: 10),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Card(
                          elevation: 5,
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Container(
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 5, 0, 10),
                                      child: Image.asset(
                                        "assets/img/user.png",
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 5, 0, 5),
                                      child: Text(
                                        name,
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(50, 5, 50, 5),
                                    child: SizedBox(
                                      height: 10,
                                      child: LinearProgressIndicator(
                                        backgroundColor: new Color(0xff707070),
                                        valueColor:
                                            new AlwaysStoppedAnimation<Color>(
                                                new Color(0xff55CE9D)),
                                        value: 0.5,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Text(
                            "Packages",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: new Color(0xff707070)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 250, 10, 0),
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
                                            height: 91,
                                            width: 344,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          5, 5, 0, 5),
                                                      child: Image.asset(
                                                        "assets/img/user.png",
                                                        width: 65,
                                                        height: 65,
                                                      ),
                                                    ),
                                                    Padding(padding: EdgeInsets.only(left:10),
                                                    child:   Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Text(
                                                          "walaa alshobaki",
                                                          style: TextStyle(
                                                              fontSize: 20.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        Text(
                                                          "Automatic",
                                                          style: TextStyle(
                                                              fontSize: 14.0),
                                                        ),
                                                        Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: <Widget>[
                                                              Icon(
                                                                Icons.star,
                                                                size: 16.0,
                                                                color: new Color(
                                                                    0xff55CE9D),
                                                              ),
                                                              Text(
                                                                "4.0",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        18.0),
                                                              )
                                                            ])
                                                      ],
                                                    ), ),
                                                 
                                                     Padding( padding: EdgeInsets.only(
                                                          left: 70,
                                                   
                                                          ),
                                                    child:Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Container(
                                                            child: Card(
                                                                elevation: 1,
                                                                color: new Color(
                                                                    0xffCECECE),
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.0),
                                                                ),
                                                                child:
                                                                    Container(
                                                                        height:
                                                                            91,
                                                                        width:
                                                                            100,
                                                                        child: Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: <Widget>[
                                                                              Column(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                children: <Widget>[
                                                                                  Text(
                                                                                    "5 class",
                                                                                    style: TextStyle(color: Color(0xff1F1E4F), fontSize: 16.0),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsets.all(8.0),
                                                                                    child: Text(
                                                                                      "42 \$",
                                                                                      style: TextStyle(color: Color(0xff007EE7), fontSize: 29.0),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ])))))),
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
    ));
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
