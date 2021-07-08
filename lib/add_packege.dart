import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shaftt_app/themes.dart';

import 'Trainer_packages.dart';

class AddNewPackage extends StatefulWidget {
  @override
  _AddNewPackageState createState() => _AddNewPackageState();
}

class _AddNewPackageState extends State<AddNewPackage> {
  bool _switchValue = true;
  DateTime selectedDate = DateTime.now();
  List<bool> isSelectedGender = [true, false];
  int _price = 0;
  int _count = 0;
  _onSearchButtonPressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TrainerPackages()));
  }

  @override
  void initState() {
    super.initState();
    isSelectedGender = [true, false];
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1980, 8),
        lastDate: DateTime(2028));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
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
                              padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                              child: Row(children: <Widget>[
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
                                  "New Packages",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: new Color(0xff707070)),
                                ),
                              ])),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Divider(
                                height: 2.0,
                                color: Colors.grey,
                              )),
                        ],
                      ),
                    ),
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 220, 10, 0),
                          child: Text(
                            "Classes",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: new Color(0xff1F1E4F)),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(100, 10, 100, 0),
                            child: Divider(
                              height: 2.0,
                              color: Colors.grey,
                            )),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: new Container(
                            width: 200.0,
                            height: 50.0,
                            child: new Center(
                              child: new Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  SizedBox(
                                    width: 30.0,
                                    height: 30.0,
                                    child: new FloatingActionButton(
                                      heroTag: "btn1",
                                      onPressed: addCounter,
                                      child: new Icon(
                                        Icons.add,
                                        color: Colors.black,
                                        size: 15,
                                      ),
                                      backgroundColor: Colors.white,
                                    ),
                                  ),
                                  new Text('$_count ',
                                      style: new TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold,
                                          color: new Color(0xff707070))),
                                  SizedBox(
                                    width: 30.0,
                                    height: 30.0,
                                    child: new FloatingActionButton(
                                      heroTag: "btn2",
                                      onPressed: minusCounter,
                                      child: new Icon(
                                        Icons.remove,
                                        color: Colors.black,
                                        size: 15,
                                      ),
                                      backgroundColor: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(100, 20, 100, 0),
                            child: Divider(
                              height: 2.0,
                              color: Colors.grey,
                            )),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                          child: Text(
                            "Total Price",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: new Color(0xff1F1E4F)),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(100, 20, 100, 0),
                            child: Divider(
                              height: 2.0,
                              color: Colors.grey,
                            )),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: new Container(
                            width: 200.0,
                            height: 50.0,
                            child: new Center(
                              child: new Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  SizedBox(
                                    width: 30.0,
                                    height: 30.0,
                                    child: new FloatingActionButton(
                                      heroTag: "btn3",
                                      onPressed: add,
                                      child: new Icon(
                                        Icons.add,
                                        color: Colors.black,
                                        size: 15,
                                      ),
                                      backgroundColor: Colors.white,
                                    ),
                                  ),
                                  new Text('$_price \$',
                                      style: new TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold,
                                          color: new Color(0xff707070))),
                                  SizedBox(
                                    width: 30.0,
                                    height: 30.0,
                                    child: new FloatingActionButton(
                                      heroTag: "btn4",
                                      onPressed: minus,
                                      child: new Icon(
                                        Icons.remove,
                                        color: Colors.black,
                                        size: 15,
                                      ),
                                      backgroundColor: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        ListTile(
                                          title: Column(
                                            children: <Widget>[
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          100, 20, 100, 10),
                                                  child: Divider(
                                                    height: 2.0,
                                                    color: Colors.grey,
                                                  )),
                                              Text(
                                                'Start date ',
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  fontFamily: "HelveticaThin",
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xff007EE7),
                                                ),
                                              ),
                                              Text(
                                                "${selectedDate.toLocal()}"
                                                    .split(' ')[0],
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  fontFamily: "HelveticaThin",
                                                  color: Color(0xff707070),
                                                ),
                                              ),
                                              RaisedButton(
                                                onPressed: () =>
                                                    _selectDate(context),
                                                elevation: 0,
                                                child: Text(
                                                  'set',
                                                  style: TextStyle(
                                                      fontSize: 22,
                                                      fontFamily:
                                                          "HelveticaBold"),
                                                ),
                                                color: Color(0xff007EE7),
                                                textColor: Color(0xffffffff),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]),
                                  Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          100, 20, 100, 20),
                                      child: Divider(
                                        height: 2.0,
                                        color: Colors.grey,
                                      )),
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        ListTile(
                                          title: Column(
                                            children: <Widget>[
                                              Text(
                                                'End date',
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  fontFamily: "HelveticaThin",
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xff007EE7),
                                                ),
                                              ),
                                              Text(
                                                "${selectedDate.toLocal()}"
                                                    .split(' ')[0],
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  fontFamily: "HelveticaThin",
                                                  color: Color(0xff707070),
                                                ),
                                              ),
                                              RaisedButton(
                                                onPressed: () =>
                                                    _selectDate(context),
                                                elevation: 0,
                                                child: Text(
                                                  'set',
                                                  style: TextStyle(
                                                      fontSize: 22,
                                                      fontFamily:
                                                          "HelveticaBold"),
                                                ),
                                                color: Color(0xff007EE7),
                                                textColor: Color(0xffffffff),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ])
                                ])),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: roundedRectButton("CREATE", Colors.white,
                              blueGradients1, TrainerPackages()),
                        ),
                      ]),
                ],
              ),
            ),
          ],
        )),
      );
    })));
  }

  void minus() {
    setState(() {
      if (_price != 0) _price--;
    });
  }

  void add() {
    setState(() {
      _price++;
    });
  }

  void minusCounter() {
    setState(() {
      if (_count != 0) _count--;
    });
  }

  void addCounter() {
    setState(() {
      _count++;
    });
  }

  Widget roundedRectButton(
      String title, Color textColor, List<Color> gradient, Widget page) {
    return Builder(builder: (BuildContext mContext) {
      return Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Stack(
          alignment: Alignment(1.0, 0.0),
          children: <Widget>[
            InkWell(
              child: Container(
                alignment: Alignment.center,
                width: 150,
                height: 40,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                  gradient: LinearGradient(
                      colors: gradient,
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                ),
                child: Text(title,
                    style: TextStyle(
                        color: textColor,
                        fontSize: 22,
                        fontFamily: "HelveticaMedium",
                        fontWeight: FontWeight.w300)),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => page));
              },
            ),
          ],
        ),
      );
    });
  }
}
