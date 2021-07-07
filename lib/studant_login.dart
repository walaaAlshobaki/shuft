import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shaftt_app/SharedPrefs.dart';
import 'package:shaftt_app/studant_main_login.dart';
import 'package:shaftt_app/themes.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'RemoteDataSource/studentRemoteDataSource.dart';
import 'model/studentModel.dart';
import 'student_Packages.dart';

// ignore: must_be_immutable
class StudantLogin extends StatefulWidget {
  bool visible = false;

  // Getting value from TextField widget.
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  _StudantLoginState createState() => _StudantLoginState();
}

class _StudantLoginState extends State<StudantLogin> {
  bool visible = false;
  StudentRemoteDataSource _apiResponse = StudentRemoteDataSource();
  // Getting value from TextField widget.
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
  Position _currentPosition;
  String _currentAddress;
  addStringToSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('stringValue', "abc");
  }

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
    _apiResponse.init();
  }

  _getCurrentLocation() {
    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
      });
    }).catchError((e) {
      print(e);
    });
  }

  Future userLogin() async {
    // Showing CircularProgressIndicator.
    setState(() {
      visible = true;
    });

    // Getting value from Controller
    String email = emailController.text;
    String password = passwordController.text;
    var prefs = null;
    final student = Student(
      email: email,
      password: password,
      location: _currentPosition.toString(),
    );
    _apiResponse.loginStudent(student, context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: new Scaffold(
            body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 60, left: 20, right: 20),
                child: Container(
                    child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xff707070),
                  decoration: InputDecoration(
                    labelText: "Name",
                    labelStyle: TextStyle(
                        fontSize: 18,
                        fontFamily: "HelveticaThin",
                        color: Color(0xff707070)),
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: Color(0xff707070),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: Color(0xff55CE9D),
                        width: 2.0,
                      ),
                    ),
                  ),
                ))),
            Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Container(
                    child: TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.text,
                  cursorColor: Color(0xff707070),
                  decoration: InputDecoration(
                    labelText: "Pass",
                    labelStyle: TextStyle(
                        fontSize: 18,
                        fontFamily: "HelveticaThin",
                        color: Color(0xff707070)),
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: Color(0xff707070),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: Color(0xff55CE9D),
                        width: 2.0,
                      ),
                    ),
                  ),
                  obscureText: true,
                ))),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 50, right: 20),
              child: Container(
                  child: Row(
                children: <Widget>[
                  Text(
                    "I forget my password",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "HelveticaThin",
                        color: Color(0xff1F1E4F)),
                  ),
                  Text(
                    " need help",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: "HelveticaThin",
                        color: Color(0xff55CE9D)),
                  )
                ],
              )),
            ),
            Padding(
                padding:
                    EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 15),
                child: Container(
                  height: 60,
                  width: 340,
                  child: roundedRectButton("Login", Color(0xffffffff),
                      blueGradients, StudantMainLogin()),
                )),
          ],
        ),
      ),
    )));
  }

  Widget roundedRectButton(
      String title, Color textColor, List<Color> gradient, Widget page) {
    return Builder(builder: (BuildContext mContext) {
      return Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Stack(alignment: Alignment(1.0, 0.0), children: <Widget>[
          InkWell(
            child: Container(
              alignment: Alignment.center,
              height: 55,
              width: 342,
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
                minWidth: 317,
                height: 35,
                child: RaisedButton(
                  elevation: 0,
                  onPressed: userLogin,
                  color: Color(0xff55CE9D),
                  child: Text(title,
                      style: TextStyle(
                          fontFamily: "HelveticaBold",
                          color: textColor,
                          fontSize: 23,
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
