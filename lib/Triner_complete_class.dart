
import 'package:flutter/material.dart';
import 'SearchClass.dart';

class TrainerCompleteClass extends StatefulWidget {
  @override
  _TrainerCompleteClassState createState() => _TrainerCompleteClassState();
}

class _TrainerCompleteClassState extends State<TrainerCompleteClass> {


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
                             
                                       Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            8.0),
                                                                    child:   Text(
                                                      " Sunday ",
                                                      style: TextStyle(
                                                          fontSize: 15.0,
                                                           color: new Color(0xff1F1E4F),
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),),
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
                                               
                                             
                                                    Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            8.0),
                                                                    child:   Text(
                                                      "Khalil haj",
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
                                                      " 9:00 - 10:00 am",
                                                      style: TextStyle(
                                                          fontSize: 15.0,
                                                           color: new Color(0xff1F1E4F),
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),),
                                                  
                                               
                                              ],
                                            ),
                                            Divider(
                              height: 2.0,
                              color: Colors.grey,
                            ),
                              Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            8.0),
                                                                    child:Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Text("Trainer comment",
                                                                    style: TextStyle(
                                                                        color: Color(
                                                                            0xff707070),
                                                                        fontSize:
                                                                            16.0),), Text("Existent class",
                                                                    style: TextStyle(
                                                                        color: Color(
                                                                            0xff55CE9D),
                                                                        fontSize:
                                                                            16.0),)
                                              ]),),
                                              Text("تم شرح الاساسيات وكيفية الجلسة الصحيحة والتحكم بالمقود والمري بالشكل الصحيح والطالب متعاون ومتفهم جدا",
                                                                    style: TextStyle(
                                                                        color: Color(
                                                                            0xff707070),
                                                                        fontSize:
                                                                            17.0),)
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
