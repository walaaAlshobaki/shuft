import 'package:flutter/material.dart';
import 'Database/DBHelper.dart';
import 'RemoteDataSource/packagesRemoteDataSource.dart';
import 'StudantBookPackages.dart';
import 'model/Result.dart';
import 'model/packagesModel.dart';
import 'RemoteDataSource/studentRemoteDataSource.dart';

class Packages extends StatefulWidget {
  @override
  _PackagesState createState() => _PackagesState();
}

class _PackagesState extends State<Packages> {
  packagesRemoteDataSource _apiResponse = packagesRemoteDataSource();
  StudentRemoteDataSource _apiResponse2 = StudentRemoteDataSource();
  String name = "";
  String studentProfileContOfClass = "";
  String studentProfileStage = "";
  double classcont = 0.0;
  var dbHelper = DBHelper();
  fetchEmployeesFromDatabase() async {
    Future<List<Map>> employees = dbHelper.getEmployees();
    List list = await employees;
    name = list.last["firstName"] + " " + list.last["lastName"];

    return name;
  }

  @override
  void initState() {
    super.initState();

    fetchEmployeesFromDatabase();
    Future<String> authToken = _apiResponse2.studentProfileContOfClass();
    authToken.then((data) {
      studentProfileContOfClass = data.toString();
      if (int.parse(studentProfileContOfClass) != 0) {
        classcont = (35 -
            int.parse(studentProfileContOfClass) /
                int.parse(studentProfileContOfClass) *
                100);
      } else {
        classcont = 0;
      }
    }, onError: (e) {
      print(e);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 2,
            child: new Scaffold(
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
                        child: Container(
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 5, 0, 10),
                                    child: Image.asset(
                                      "assets/img/user.png",
                                      width: 50,
                                      height: 50,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 5, 0, 5),
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
                                      value: classcont,
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
                      top: 250,
                    ),
                    child: Center(
                      child: FutureBuilder(
                          future: _apiResponse.getPackages(),
                          builder: (BuildContext context,
                              AsyncSnapshot<Result> snapshot) {
                            if (snapshot.data is SuccessState) {
                              Library bookCollection =
                                  (snapshot.data as SuccessState).value;
                              return ListView.builder(
                                  itemCount: bookCollection.books.length,
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
              ]))
            ]))));
  }

  Dismissible bookListItem(
      int index, Library bookCollection, BuildContext context) {
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
      key: Key(bookCollection.books[index].MaxClass.toString()),
      child: ListTile(
          // leading: Image.asset("images/book.png"),
          title: Column(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: 0,
                  ),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        GestureDetector(
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
                                              child: Icon(
                                                Icons.close,
                                                color: Color(0xff707070),
                                              ),
                                              backgroundColor:
                                                  new Color(0xff55CE9D),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      100, 5, 0, 5),
                                              child: Image.asset(
                                                "assets/img/user.png",
                                                width: 65,
                                                height: 65,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      50, 0, 0, 0),
                                              child: Text(
                                                bookCollection
                                                        .books[index].price
                                                        .toString() +
                                                    " \$",
                                                style: TextStyle(
                                                    color: Color(0xff55CE9D),
                                                    fontSize: 20.0),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 80, 10, 0),
                                          child: Text(
                                            bookCollection.books[index]
                                                    .trainer["firstName"] +
                                                " " +
                                                bookCollection.books[index]
                                                    .trainer["lastName"],
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 120, 0, 0),
                                          child: ListTile(
                                            title: Text(
                                              bookCollection
                                                      .books[index].MaxClass
                                                      .toString() +
                                                  " class",
                                              style: TextStyle(fontSize: 20.0),
                                            ),
                                            trailing: GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            StudantBookPackages(
                                                                packageModel:
                                                                    bookCollection
                                                                            .books[
                                                                        index])),
                                                  );
                                                },
                                                child: Text(
                                                  "set",
                                                  style: TextStyle(
                                                      color: Color(0xff55CE9D),
                                                      fontSize: 20.0),
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          },
                          child: Card(
                            elevation: 5,
                            color: new Color(0xffE8E8ED),
                            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Container(
                              width: 344,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            5, 5, 0, 5),
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
                                              bookCollection.books[index]
                                                      .trainer["firstName"] +
                                                  " " +
                                                  bookCollection.books[index]
                                                      .trainer["lastName"],
                                              style: TextStyle(
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              bookCollection.books[index]
                                                  .trainer["shiftGear"],
                                              style: TextStyle(fontSize: 14.0),
                                            ),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.star,
                                                    size: 16.0,
                                                    color:
                                                        new Color(0xff55CE9D),
                                                  ),
                                                  Text(
                                                    "4.0",
                                                    style: TextStyle(
                                                        fontSize: 18.0),
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
                                                          height: 91,
                                                          width: 100,
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
                                                                      bookCollection
                                                                              .books[index]
                                                                              .MaxClass
                                                                              .toString() +
                                                                          " class",
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
                                                                      child:
                                                                          Text(
                                                                        bookCollection.books[index].price.toString() +
                                                                            " \$",
                                                                        style: TextStyle(
                                                                            color:
                                                                                Color(0xff007EE7),
                                                                            fontSize: 20.0),
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
}
