import 'package:flutter/material.dart';

import 'SearchClass.dart';
import 'show_student_profile.dart';

class SoonClass extends StatefulWidget {
  @override
  _SoonClassState createState() => _SoonClassState();
}

class _SoonClassState extends State<SoonClass> {
  @override
  void initState() {
    super.initState();
  }

  Future<List<SearchClass>> search(String search) async {
    await Future.delayed(Duration(seconds: 2));
    return List.generate(search.length, (int index) {
      return SearchClass(
        " $search $index",
        "$search $index",
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: new Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ListView.builder(
                itemBuilder: (context, position) {
                  return Column(
                    children: <Widget>[
                      Container(
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding:
                                  EdgeInsets.only(top: 0, left: 10, right: 10),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "9:00 - 10:00 am",
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color: new Color(0xff1F1E4F),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    InkWell(
                                        child: Card(
                                          elevation: 5,
                                          color: new Color(0xffE8E8ED),
                                          margin: EdgeInsets.fromLTRB(
                                              0.0, 0.0, 0.0, 16.0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                          child: Container(
                                            height: 60,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        "Omar tamer",
                                                        style: TextStyle(
                                                            fontSize: 19.0,
                                                            color: new Color(
                                                                0xff1F1E4F),
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        "2 class",
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff55CE9D),
                                                            fontSize: 18.0),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
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
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          child: CircleAvatar(
                                                            child: Icon(
                                                                Icons.close),
                                                            backgroundColor:
                                                                Colors.red,
                                                          ),
                                                        ),
                                                      ),
                                                      Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: <Widget>[
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .fromLTRB(
                                                                      30,
                                                                      10,
                                                                      30,
                                                                      0),
                                                              child: InkWell(
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: <
                                                                          Widget>[
                                                                        Image
                                                                            .asset(
                                                                          "assets/img/user.png",
                                                                          width:
                                                                              100,
                                                                          height:
                                                                              100,
                                                                        ),
                                                                        Text(
                                                                          "Maria sleman",
                                                                          style: TextStyle(
                                                                              fontSize: 25.0,
                                                                              fontWeight: FontWeight.bold,
                                                                              color: new Color(0xff1F1E4F)),
                                                                        ),
                                                                        Text(
                                                                          "+962 4565 564",
                                                                          style: TextStyle(
                                                                              fontSize: 21.0,
                                                                              fontWeight: FontWeight.bold,
                                                                              color: new Color(0xff55CE9D)),
                                                                        ),
                                                                      ]),
                                                                  onTap: () {
                                                                    Navigator.push(
                                                                        context, MaterialPageRoute(builder: (context) => ShowStudentProfile()));
                                                                 
                                                                  }),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .fromLTRB(
                                                                      30,
                                                                      30,
                                                                      30,
                                                                      0),
                                                              child: Container(
                                                                height: 60,
                                                                width: 320,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top:
                                                                            15.0),
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            10),
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                decoration: BoxDecoration(
                                                                    color: Colors.transparent,
                                                                    border: Border.all(
                                                                        color: Color(0xff007EE7), // set border color
                                                                        width: 3.0),
                                                                    // set border width
                                                                    borderRadius: BorderRadius.all(Radius.circular(25.0)), // set rounded corner radius
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                        color: Color(0xffffffff)
                                                                            .withOpacity(0.1),
                                                                        spreadRadius:
                                                                            1,
                                                                        blurRadius:
                                                                            3,
                                                                        offset: Offset(
                                                                            0,
                                                                            2),
                                                                      )
                                                                    ] // make rounded corner of border
                                                                    ),
                                                                child: InkWell(
                                                                  child:
                                                                      Container(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Text(
                                                                        "Cancel this class",
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                "HelveticaBold",
                                                                            color: Color(
                                                                                0xff007EE7),
                                                                            fontSize:
                                                                                20,
                                                                            fontWeight:
                                                                                FontWeight.w300)),
                                                                  ),
                                                                  onTap: () {
                                                                    // Navigator.push(
                                                                    //     context, MaterialPageRoute(builder: (context) => TrainerMAinLogin()));
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                          ])
                                                    ],
                                                  ),
                                                );
                                              });
                                        })
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
    );
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
