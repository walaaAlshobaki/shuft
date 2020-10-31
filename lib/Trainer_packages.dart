import 'package:flutter/material.dart';
import 'SearchClass.dart';
import 'Trainer_profile.dart';
import 'add_packege.dart';

class TrainerPackages extends StatefulWidget {
  @override
  _TrainerPackagesState createState() => _TrainerPackagesState();
}

class _TrainerPackagesState extends State<TrainerPackages> {
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

  void _onSearchButtonPressed() {
    print(
        "********************************************************************************************************");
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TrainerProfile()));
  }
   void _onAddButtonPressed() {
    print(
        "********************************************************************************************************");
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AddNewPackage()));
  }

  @override
  Widget build(BuildContext context) {
     return Center(child: Container(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
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
                      padding: const EdgeInsets.fromLTRB(0, 130, 10, 0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            new IconButton(
                              icon: new Icon(Icons.arrow_back_ios),
                              color: new Color(0xff007EE7),
                              iconSize: 30,
                              onPressed: () {
                                _onSearchButtonPressed();
                              },
                            ),
                            Icon(
                              Icons.card_giftcard,
                              size: 35.0,
                              color: new Color(0xff007EE7),
                            ),
                            Text(
                              "My Packages",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: new Color(0xff707070)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(100, 10, 10, 0),
                              child: new IconButton(
                                icon: new Icon(Icons.add_box),
                                color: new Color(0xff007EE7),
                                iconSize: 30,
                                onPressed: () {
                                  _onAddButtonPressed();
                                },
                              ),
                            ),
                          ])),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 190, 10, 0),
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
                                        height: 150,
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
                                                      child: Text(
                                                        "Package 1",
                                                        style: TextStyle(
                                                            fontSize: 19.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              5.0),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: <Widget>[
                                                             Text(
                                                              "5 classes",
                                                              style: TextStyle(
                                                                fontSize: 16.0,
                                                                color: Color(
                                                                    0xff007EE7),
                                                              ),
                                                            ),
                                                             Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 0,
                                                                    left: 200,
                                                                    right: 0),
                                                            child:Text(
                                                              "\$ 25",
                                                              style: TextStyle(
                                                                fontSize: 30.0,
                                                                color: Color(
                                                                    0xff007EE7),
                                                              ),
                                                            )),
                                                          ]),
                                                    ),
                                                  ],
                                                ),
                                                
                                              ],
                                            ),
                                            Divider(
                                              height: 5.0,
                                              color: Colors.white,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: <Widget>[
                                                    Text(
                                                      "6 students booked",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff707070),
                                                          fontSize: 16.0),
                                                    ),
                                                 
                                                  ]),
                                            ),
                                           
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
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
    )));
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
