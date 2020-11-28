import 'package:flutter/material.dart';
import 'package:shaftt_app/util/Singleton.dart';
import 'package:shaftt_app/what_is_shaftt.dart';
import 'dart:async';

import 'package:sqflite/sqflite.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var instance = Singleton.instance;
  Future<bool> databaseExists(String path) =>
      databaseFactory.databaseExists(path);
  @override
  void initState() {
    super.initState();

    _mockCheckForSession().then((status) {
      if (status) {
        _navigateToHome();
      } else {
        _navigateToLogin();
      }
    });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 6000), () {});

    return true;
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => WhatIsShaftt()));
  }

  void _navigateToLogin() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => WhatIsShaftt()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: new Color(0xff1F1E4F),
          child: Positioned(
              width: MediaQuery.of(context).size.width,
              top: MediaQuery.of(context).size.width *
                  0.20, //TRY TO CHANGE THIS **0.30** value to achieve your goal
              child: Container(
                margin: EdgeInsets.fromLTRB(60.0, 30.0, 60.0, 220.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/img/logo.png', scale: 2.5),
                      SizedBox(
                        height: 10,
                        width: 20,
                      ),
                    ]),
              ))),
    );
  }
}
