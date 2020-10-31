import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shaftt_app/student_profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'SharedPrefs.dart';
import 'themes.dart';
import 'trainer_main_login.dart';

class StudentPayment extends StatefulWidget {
  @override
  State<StudentPayment> createState() => StudentPaymentState();
}

class StudentPaymentState extends State<StudentPayment> {
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

  void _onSearchButtonPressed() {
    print(
        "********************************************************************************************************");
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => StudentProfile()));
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return DefaultTabController(
          length: 2,
          child: new Scaffold(
              body: Stack(children: <Widget>[
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
                    margin: EdgeInsets.fromLTRB(0.0, 30.0, 00.0, 20.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
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
              child: SingleChildScrollView(
                  child: Column(children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 140, left: 20, right: 10),
                    child: Container(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: Row(children: <Widget>[
                              new IconButton(
                                icon: new Icon(Icons.arrow_back_ios),
                                color: new Color(0xff55CE9D),
                                iconSize: 30,
                                onPressed: () {
                                  _onSearchButtonPressed();
                                },
                              ),
                              Icon(
                                Icons.payment,
                                size: 35.0,
                                color: new Color(0xff55CE9D),
                              ),
                              Text(
                                "Payment Details",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: new Color(0xff707070)),
                              ),
                            ])),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                          child: Text(
                            "My wallet",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                    child: Text(
                                      "00.00 \$",
                                      style: TextStyle(
                                          fontSize: 30.0,
                                          color: new Color(0xffB2B2B2),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        100, 20, 0, 0),
                                    child: Text(
                                      "Deposit money",
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          color: new Color(0xff55CE9D),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ])),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                          child: Text(
                            "Promo code",
                            style: TextStyle(
                                fontSize: 15.0,
                                color: new Color(0xff1F1E4F),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 0, left: 87, right: 87),
                                      child: Container(
                                          child: TextFormField(
                                        keyboardType: TextInputType.text,
                                        cursorColor: Color(0xff707070),
                                        decoration: InputDecoration(
                                          labelStyle: TextStyle(
                                              fontSize: 16,
                                              fontFamily: "HelveticaThin",
                                              color: Color(0xff707070)),
                                          fillColor: new Color(0xff707070),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            borderSide: BorderSide(
                                              color: Color(0xff707070),
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            borderSide: BorderSide(
                                              color: Color(0xff707070),
                                              width: 2.0,
                                            ),
                                          ),
                                        ),
                                      ))),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 0, left: 87, right: 87),
                                    child: Container(
                                      height: 50,
                                      width: 340,
                                      margin: EdgeInsets.only(top: 15.0),
                                      padding: EdgeInsets.all(10),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          border: Border.all(
                                              color: Color(
                                                  0xff55CE9D), // set border color
                                              width: 3.0),
                                          // set border width
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                  15.0)), // set rounded corner radius
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0xffffffff)
                                                  .withOpacity(0.1),
                                              spreadRadius: 1,
                                              blurRadius: 3,
                                              offset: Offset(0, 2),
                                            )
                                          ] // make rounded corner of border
                                          ),
                                      child: InkWell(
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text("Use the code",
                                              style: TextStyle(
                                                  fontFamily: "HelveticaBold",
                                                  color: Color(0xff55CE9D),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w200)),
                                        ),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      TrainerMAinLogin()));
                                        },
                                      ),
                                    ),
                                  ),
                                ]))
                      ],
                    ))),
                Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Card(
                        elevation: 5,
                        color: new Color(0xffE8E8ED),
                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Container(
                            height: 199,
                            width: 340,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 0, left: 20, right: 0),
                                            child: Text(
                                              "Khalil Payoneer",
                                              style: TextStyle(
                                                  fontSize: 20.0,
                                                  color: new Color(0xffB2B2B2),
                                                  fontWeight: FontWeight.bold),
                                            )),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 0, left: 0, right: 0),
                                          child: Image.asset(
                                            "assets/img/mastercard.png",
                                            width: 100,
                                            height: 70,
                                          ),
                                        )
                                      ]),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 10, left: 10, right: 10),
                                      child: Text(
                                        "************1679",
                                        style: TextStyle(
                                            fontSize: 30.0,
                                            color: new Color(0xffB2B2B2),
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 10, left: 10, right: 10),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              "10/2024",
                                              style: TextStyle(
                                                  fontSize: 20.0,
                                                  color: new Color(0xffB2B2B2),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "* * *",
                                              style: TextStyle(
                                                  fontSize: 20.0,
                                                  color: new Color(0xffB2B2B2),
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ]))
                                ])))),
                Padding(
                    padding: EdgeInsets.only(
                      left: 70,
                    ),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                            child: Text(
                          "Edit this card",
                          style: TextStyle(
                              fontSize: 15.0,
                              color: new Color(0xff55CE9D),
                              fontWeight: FontWeight.bold),
                        )))),
                Padding(
                    padding: EdgeInsets.only(left: 70, top: 10),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                            child: Text(
                          "Remove this card",
                          style: TextStyle(
                              fontSize: 15.0,
                              color: new Color(0xff55CE9D),
                              fontWeight: FontWeight.bold),
                        )))),
              ])),
            ),
            Padding(
                padding: EdgeInsets.only(right: 20, bottom: 20),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: FloatingActionButton(
                        elevation: 0.0,
                        child: new Icon(Icons.add),
                        backgroundColor: new Color(0xff55CE9D),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StudentPayment()));
                        }))),
          ])));
    })));
  }
}
