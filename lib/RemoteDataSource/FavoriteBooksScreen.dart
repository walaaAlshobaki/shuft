import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shaftt_app/RemoteDataSource/TrainerRemoteDataSource.dart';
import 'package:shaftt_app/model/Result.dart';
import 'package:shaftt_app/model/TrainerModel.dart';

import '../MyIconSpinner.dart';
import '../themes.dart';

class FavoriteBooksScreen extends StatefulWidget {
  @override
  _FavoriteBooksScreenState createState() => _FavoriteBooksScreenState();
}

class _FavoriteBooksScreenState extends State<FavoriteBooksScreen> {
  TrainerRemoteDataSource _apiResponse = TrainerRemoteDataSource();
  String name = "";
  bool offstagee = false;
  List<bool> isSelectedGender;
  List<bool> isSelectedCar;

  Future filterTeacher() async {
    // Future<List<TrainerModel>> _futureOfList =
    //     _apiResponse.searchTeacher(search);
    // List<TrainerModel> list = await _futureOfList;
    // print(list);
    // await Future.delayed(Duration(seconds: 2));
    // print("**************************************************************");
    // print(list.length);
    // setState(() {
    //   offstagee = true;
    // });
    // return List.generate(list.length, (int index) {
    //   return list[index];
    // });
  }

  Future<List<TrainerModel>> search(String search) async {
    Future<List<TrainerModel>> _futureOfList =
        _apiResponse.searchTeacher(search);
    List<TrainerModel> list = await _futureOfList;
    print(list);
    await Future.delayed(Duration(seconds: 2));
    print("**************************************************************");
    print(list.length);
    setState(() {
      offstagee = true;
    });
    return List.generate(list.length, (int index) {
      return list[index];
    });
  }

  // Future<List<TrainerModel>> search(String search) async {
  //   _apiResponse.searchTeacher(search);
  //   await Future.delayed(Duration(seconds: 2));
  //   return List.generate(search.length, (int index) {
  //     return SearchClass(
  //       " $search $index",
  //       "$search $index",
  //     );
  //   });
  // }

  @override
  void initState() {
    super.initState();

    offstagee = false;
    isSelectedGender = [true, false];
    isSelectedCar = [true, false];
    //           if(isSelectedGender[0]){
    //   gende="male";
    // }else{
    //   gende="female";
    // }
    //  if(isSelectedCar[0]){
    //   carType="manual";
    // }else{
    //   carType="auto";
    // }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 2,
            child: new Scaffold(
                floatingActionButton: new FloatingActionButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                              content:
                                  Stack(overflow: Overflow.visible, children: <
                                      Widget>[
                            Positioned(
                              right: -40.0,
                              top: -40.0,
                              child: InkResponse(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: CircleAvatar(
                                  child: Icon(
                                    Icons.close,
                                    color: Color(0xff707070),
                                  ),
                                  backgroundColor: new Color(0xff55CE9D),
                                ),
                              ),
                            ),
                            Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 15, left: 20, right: 20),
                                    child: Container(
                                      width: 450,
                                      height: 40,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Text(
                                              "Gender",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: "HelveticaThin",
                                                color: Color(0xff707070),
                                              ),
                                            ),
                                            ToggleButtons(
                                              borderColor: Colors.transparent,
                                              fillColor: new Color(0xff55CE9D),
                                              borderWidth: 1,
                                              selectedBorderColor:
                                                  new Color(0xff55CE9D),
                                              selectedColor: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    'Male',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontFamily:
                                                          "HelveticaThin",
                                                      color: Color(0xff707070),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    'Female',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontFamily:
                                                          "HelveticaThin",
                                                      color: Color(0xff707070),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                              onPressed: (int index) {
                                                setState(() {
                                                  for (int i = 0;
                                                      i <
                                                          isSelectedGender
                                                              .length;
                                                      i++) {
                                                    if (i == index) {
                                                      isSelectedGender[i] =
                                                          true;
                                                    } else {
                                                      isSelectedGender[i] =
                                                          false;
                                                    }
                                                  }
                                                });
                                              },
                                              isSelected: isSelectedGender,
                                            ),
                                          ]),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 15, left: 20, right: 20),
                                    child: Container(
                                      width: 450,
                                      height: 40,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Text(
                                              "Car type",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontFamily: "HelveticaThin",
                                                color: Color(0xff707070),
                                              ),
                                            ),
                                            ToggleButtons(
                                              borderColor: Colors.transparent,
                                              fillColor: new Color(0xff55CE9D),
                                              borderWidth: 1,
                                              selectedBorderColor:
                                                  new Color(0xff55CE9D),
                                              selectedColor: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    'Manual',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontFamily:
                                                          "HelveticaThin",
                                                      color: Color(0xff707070),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    'Auto',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontFamily:
                                                          "HelveticaThin",
                                                      color: Color(0xff707070),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                              onPressed: (int index) {
                                                setState(() {
                                                  for (int i = 0;
                                                      i < isSelectedCar.length;
                                                      i++) {
                                                    if (i == index) {
                                                      isSelectedCar[i] = true;
                                                      print(isSelectedCar);
                                                    } else {
                                                      isSelectedCar[i] = false;
                                                      print(isSelectedCar);
                                                    }
                                                  }
                                                });
                                              },
                                              isSelected: isSelectedCar,
                                            ),
                                          ]),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 15, left: 50, right: 50),
                                      child: roundedRectButton("Done",
                                          Color(0xffffffff), blueGradients))
                                ])
                          ]));
                        });
                  },
                  backgroundColor: new Color(0xff1F1E4F),
                  child: const Icon(Icons.filter_list),
                ),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.endFloat,
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
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
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
                  ),
                  Container(
                      child: Stack(children: <Widget>[
                    // floatingActionButton: FloatingActionButton(
                    //   // onPressed: () {
                    //   //   Navigator.push(
                    //   //     context,
                    //   //     MaterialPageRoute(builder: (context) => AddBookScreen()),
                    //   //   );
                    //   // },
                    //   child: Icon(Icons.add),
                    // ),
                    Padding(
                        padding: EdgeInsets.only(
                          top: 190,
                        ),
                        child: Center(
                          //   child: Offstage(
                          // offstage: offstagee,
                          child: FutureBuilder(
                              future: _apiResponse.getTrainer(),
                              builder: (BuildContext context,
                                  AsyncSnapshot<Result> snapshot) {
                                if (snapshot.data is SuccessState) {
                                  TrainerModelList bookCollection =
                                      (snapshot.data as SuccessState).value;
                                  return ListView.builder(
                                      itemCount: bookCollection
                                          .trainerModelList.length,
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
                        )),
                    // ),
                    Padding(
                      padding: EdgeInsets.only(top: 80, right: 20, left: 20),
                      child: SearchBar<TrainerModel>(
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
                        onItemFound: (TrainerModel post, int index) {
                          return Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Card(
                                    elevation: 5,
                                    color: new Color(0xffE8E8ED),
                                    margin:
                                        EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Container(
                                        height: 100,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              ListTile(
                                                  leading: Image.asset(
                                                    "assets/img/user.png",
                                                    width: 70,
                                                    height: 70,
                                                  ),
                                                  title: Text(post.firstName +
                                                      " " +
                                                      post.lastName),
                                                  subtitle:
                                                      Text(post.shiftGear),
                                                  trailing: Card(
                                                      elevation: 1,
                                                      color:
                                                          new Color(0xffCECECE),
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0.0,
                                                              0.0,
                                                              0.0,
                                                              0.0),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5.0),
                                                      ),
                                                      child: Container(
                                                          width: 70,
                                                          child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: <
                                                                  Widget>[
                                                                Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceEvenly,
                                                                  children: <
                                                                      Widget>[
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
                                                                          const EdgeInsets.all(
                                                                              2.0),
                                                                      child:
                                                                          Text(
                                                                        post.Lesson_price.toString() +
                                                                            " \$",
                                                                        style: TextStyle(
                                                                            color:
                                                                                Color(0xff007EE7),
                                                                            fontSize: 15.0),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                        padding:
                                                                            const EdgeInsets.all(
                                                                                2.0),
                                                                        child: Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: <Widget>[
                                                                              Icon(
                                                                                Icons.star,
                                                                                size: 12.0,
                                                                                color: new Color(0xff55CE9D),
                                                                              ),
                                                                              Text(
                                                                                "4",
                                                                                style: TextStyle(fontSize: 10.0),
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
                  ]))
                ]))));
  }

  Dismissible bookListItem(
      int index, TrainerModelList bookCollection, BuildContext context) {
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
      key: Key(bookCollection.trainerModelList[index].email.toString()),
      child: ListTile(
          // leading: Image.asset("images/book.png"),
          title: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 0),
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
                            // height: 91,
                            width: 344,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(5, 5, 0, 5),
                                      child: Image.asset(
                                        "assets/img/user.png",
                                        width: 65,
                                        height: 65,
                                      ),
                                    ),
                                    new Container(
                                      constraints: BoxConstraints(
                                          minWidth: 100, maxWidth: 178),
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            bookCollection
                                                    .trainerModelList[index]
                                                    .firstName +
                                                " " +
                                                bookCollection
                                                    .trainerModelList[index]
                                                    .lastName,
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            bookCollection
                                                .trainerModelList[index]
                                                .shiftGear,
                                            style: TextStyle(fontSize: 14.0),
                                          ),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.star,
                                                  size: 16.0,
                                                  color: new Color(0xff55CE9D),
                                                ),
                                                Text(
                                                  "4.0",
                                                  style:
                                                      TextStyle(fontSize: 18.0),
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
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                child: Card(
                                                    elevation: 0,
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
                                                        height: 91,
                                                        width: 100,
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
                                                                    "class",
                                                                    style: TextStyle(
                                                                        color: Color(
                                                                            0xff1F1E4F),
                                                                        fontSize:
                                                                            16.0),
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            8.0),
                                                                    child: Text(
                                                                      bookCollection
                                                                              .trainerModelList[index]
                                                                              .Lesson_price
                                                                              .toString() +
                                                                          "\$",
                                                                      style: TextStyle(
                                                                          color: Color(
                                                                              0xff007EE7),
                                                                          fontSize:
                                                                              25.0),
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
      )),
    );
  }

  Widget roundedRectButton(
      String title, Color textColor, List<Color> gradient) {
    return Builder(builder: (BuildContext mContext) {
      return Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Stack(alignment: Alignment(1.0, 0.0), children: <Widget>[
          InkWell(
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                color: Color(0xff55CE9D),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffffffff).withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: ButtonTheme(
                // minWidth: 300,
                height: 25,
                child: RaisedButton(
                  elevation: 0,
                  onPressed: filterTeacher,
                  color: Color(0xff55CE9D),
                  child: Text(title,
                      style: TextStyle(
                          fontFamily: "HelveticaBold",
                          color: textColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w300)),
                ),
              ),
            ),
          ),
        ]),
      );
    });
  }
}
