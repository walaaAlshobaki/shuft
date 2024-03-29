import 'package:flutter/material.dart';

import 'RemoteDataSource/ClassRemoteDataSource.dart';
import 'SearchClass.dart';
import 'model/ClassModel.dart';
import 'model/Result.dart';

class BookingClass extends StatefulWidget {
  @override
  _BookingClassState createState() => _BookingClassState();
}

class _BookingClassState extends State<BookingClass> {
  ClassRemoteDataSource _apiResponse = ClassRemoteDataSource();

  @override
  void initState() {
    super.initState();
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
                child: Center(
                  //   child: Offstage(
                  // offstage: offstagee,
                  child: FutureBuilder(
                      future: _apiResponse.getBookingClass(),
                      builder: (BuildContext context,
                          AsyncSnapshot<Result> snapshot) {
                        if (snapshot.data is SuccessState) {
                          ClassModelList bookCollection =
                              (snapshot.data as SuccessState).value;
                          return ListView.builder(
                              itemCount: bookCollection.classModelList.length,
                              itemBuilder: (context, index) {
                                return bookListItem(
                                    index, bookCollection, context);
                              });
                        } else if (snapshot.data is ErrorState) {
                          String errorMessage =
                              (snapshot.data as ErrorState).msg;
                          return Text(errorMessage);
                        } else {
                          return CircularProgressIndicator();
                        }
                      }),
                ))
          ],
        ),
      ),
    );
  }

  Dismissible bookListItem(
      int index, ClassModelList bookCollection, BuildContext context) {
    return Dismissible(
      onDismissed: (direction) async {
        // Result result = await _apiResponse.deleteBook(index);
        // if (result is SuccessState) {
        //   setState(() {
        //     bookCollection.books.removeAt(index);
        //   });
        // }
      },
      background: Container(
        color: Colors.red,
      ),
      key: Key(bookCollection.classModelList[index].avilable.toString()),
      child: ListTile(
          // leading: Image.asset("images/book.png"),
          title: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 0, left: 10, right: 10),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Card(
                          elevation: 5,
                          color: new Color(0xffE8E8ED),
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Container(
                            height: 90,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            bookCollection.classModelList[index]
                                                .dateOfClass
                                                .toString(),
                                            style: TextStyle(
                                                fontSize: 19.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            bookCollection.classModelList[index]
                                                    .startTime
                                                    .toString() +
                                                " - " +
                                                bookCollection
                                                    .classModelList[index]
                                                    .endTime
                                                    .toString(),
                                            style: TextStyle(fontSize: 16.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Card(
                                        color: new Color(0xffE8E8ED),
                                        margin: EdgeInsets.fromLTRB(
                                            0.0, 0.0, 0.0, 0.0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        child: Container(
                                            height: 90,
                                            width: 120,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: <Widget>[
                                                      Text(
                                                        bookCollection
                                                            .classModelList[
                                                                index]
                                                            .teacherId
                                                            .toString(),
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff707070),
                                                            fontSize: 18.0),
                                                      ),
                                                      Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: <
                                                                  Widget>[
                                                                Icon(
                                                                  Icons.star,
                                                                  size: 20.0,
                                                                  color: new Color(
                                                                      0xff55CE9D),
                                                                ),
                                                                Text(
                                                                  bookCollection
                                                                      .classModelList[
                                                                          index]
                                                                      .stageId
                                                                      .toString(),
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18.0),
                                                                )
                                                              ])),
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
      )),
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
