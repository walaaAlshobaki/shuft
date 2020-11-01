import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';

import 'MyIconSpinner.dart';
import 'SearchClass.dart';

class Trainers extends StatefulWidget {
  @override
  _TrainersState createState() => _TrainersState();
}

class _TrainersState extends State<Trainers> {
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
                    margin: EdgeInsets.fromLTRB(60.0, 20.0, 70.0, 20.0),
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
                    padding: const EdgeInsets.fromLTRB(10, 160, 10, 0),
                    child: Text(
                      "Trainers",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: new Color(0xff707070)),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 200, 10, 0),
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
                                        height: 91,
                                        width: 344,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          5, 5, 0, 5),
                                                  child: Image.asset(
                                                    "assets/img/user.png",
                                                    width: 65,
                                                    height: 65,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 10),
                                                  child: Column(
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
                                                  ),
                                                ),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 70,
                                                    ),
                                                    child: Align(
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
            ),
            Padding(
              padding: EdgeInsets.only(top: 80, right: 20, left: 20),
              child: SearchBar<SearchClass>(
                searchBarPadding: EdgeInsets.symmetric(horizontal: 10),
                headerPadding: EdgeInsets.symmetric(horizontal: 10),
                listPadding: EdgeInsets.symmetric(horizontal: 10),
                cancellationText: Text(
                  "Cancel",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Avenir-Medium',
                      color: Color(0xff007EE7)),
                ),
                hintText: "Search ",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                textStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                loader: Center(child: MyIconSpinner("load")),
                placeHolder: Center(
                    // child: Text("Placeholder"),
                    ),
                onError: (error) {
                  return Center(
                    child: Icon(
                      Icons.error,
                      size: 100,
                      color: new Color(0xff1F1E4F),
                    ),
                  );
                },
                emptyWidget: Center(
                  child: Icon(
                    Icons.error_outline,
                    size: 100,
                    color: new Color(0xff1F1E4F),
                  ),
                ),
                searchBarStyle: SearchBarStyle(
                  backgroundColor: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                onSearch: search,
                onItemFound: (SearchClass post, int index) {
                  return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Card(
                            elevation: 5,
                            color: new Color(0xffE8E8ED),
                            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Container(
                                height: 100,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      ListTile(
                                          leading: Image.asset(
                                            "assets/img/user.png",
                                            width: 70,
                                            height: 70,
                                          ),
                                          title: Text(post.title),
                                          subtitle: Text(post.description),
                                          trailing: Card(
                                              elevation: 1,
                                              color: new Color(0xffCECECE),
                                              margin: EdgeInsets.fromLTRB(
                                                  0.0, 0.0, 0.0, 0.0),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                              child: Container(
                                                  width: 70,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: <Widget>[
                                                        Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: <Widget>[
                                                            Text(
                                                              " class",
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff1F1E4F),
                                                                  fontSize:
                                                                      12.0),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(2.0),
                                                              child: Text(
                                                                "4 \$",
                                                                style: TextStyle(
                                                                    color: Color(
                                                                        0xff007EE7),
                                                                    fontSize:
                                                                        15.0),
                                                              ),
                                                            ),
                                                            Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        2.0),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: <
                                                                        Widget>[
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        size:
                                                                            12.0,
                                                                        color: new Color(
                                                                            0xff55CE9D),
                                                                      ),
                                                                      Text(
                                                                        "4",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                10.0),
                                                                      )
                                                                    ])),
                                                          ],
                                                        ),
                                                      ]))))
                                    ])))
                      ]);
                },
              ),
            ),
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
