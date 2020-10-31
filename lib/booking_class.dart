
import 'package:flutter/material.dart';

import 'SearchClass.dart';

class BookingClass extends StatefulWidget {
  @override
  _BookingClassState createState() => _BookingClassState();
}

class _BookingClassState extends State<BookingClass> {


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
                children: <Widget>[
                 
                
                ],
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
                                        height: 90,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                               
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            8.0),
                                                                    child:   Text(
                                                      "20 / mars / 2020",
                                                      style: TextStyle(
                                                          fontSize: 19.0,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),),
                                                    Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            8.0),
                                                                    child:   Text(
                                                      "3:00 - 4:00 pm",
                                                      style: TextStyle(
                                                          fontSize: 16.0),
                                                    ),),
                                                
                                                  ],
                                                ),
                                                Card(
                                                    
                                                    color:
                                                        new Color(0xffE8E8ED),
                                                    margin: EdgeInsets.fromLTRB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0),
                                                    ),
                                                    child: Container(
                                                        height: 90,
                                                        width: 120,
                                                        child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: <Widget>[
                                                              Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: <
                                                                    Widget>[
                                                                  Text(
                                                                    "Tamer fadi",
                                                                    style: TextStyle(
                                                                        color: Color(
                                                                            0xff707070),
                                                                        fontSize:
                                                                            18.0),
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            8.0),
                                                                    child:     Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          Icon(
                                                            Icons.star,
                                                            size: 20.0,
                                                            color: new Color(
                                                                0xff55CE9D),
                                                          ),
                                                          Text(
                                                            "4",
                                                            style: TextStyle(
                                                                fontSize: 18.0),
                                                          )
                                                        ])
                                                                  ),
                                                                ],
                                                              ),
                                                            ])))
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
