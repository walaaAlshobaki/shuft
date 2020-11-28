import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

import 'dart:io';
import 'package:shaftt_app/themes.dart';
import 'package:shaftt_app/trainer_calender.dart';
import 'package:shaftt_app/trainer_class_schedule.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'SharedPrefs.dart';
import 'Trainer_packages.dart';
import 'student_setting.dart';

class TrainerProfile extends StatefulWidget {
  @override
  State<TrainerProfile> createState() => TrainerProfileState();
}

class TrainerProfileState extends State<TrainerProfile> {
  var prefs = SharedPreferences.getInstance();
  String name = "";
  File file;
  String base64Image = null;
  String fileName = "";
  Future<File> files;
  String status = '';

  File tmpFile;

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

  @override
  Widget build(BuildContext context) {
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
              child: Stack(children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 140, left: 10, right: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      size: 20.0,
                      color: new Color(0xff55CE9D),
                    ),
                    Text(
                      "3.5",
                      style: TextStyle(fontSize: 18.0),
                    )
                  ]),
            ),
            Padding(
              padding: EdgeInsets.only(top: 140, left: 10, right: 10),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Image.asset(
                        "assets/img/user.png",
                        width: 100,
                        height: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                      child: IconButton(
                        icon: Icon(
                          Icons.edit,
                        ),
                        iconSize: 20,
                        color: Color(0xff707070),
                        splashColor: Color(0xff707070),
                        padding: EdgeInsets.only(top: 15, left: 35, right: 10),
                        onPressed: _choose,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                name,
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: new Color(0xff1F1E4F),
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 40, 0, 0),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Car Photo",
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: new Color(0xff707070),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                            margin: EdgeInsets.symmetric(
                                                vertical: 20.0),
                                            height: 100.0,
                                            child: new ListView(
                                              scrollDirection: Axis.horizontal,
                                              children: <Widget>[
                                                Container(
                                                  width: 150.0,
                                                  color: Colors.grey[300],
                                                ),
                                                Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(10, 0, 10, 0),
                                                    child: Divider(
                                                      height: 2.0,
                                                      color: Colors.grey[50],
                                                    )),
                                                Container(
                                                  width: 150.0,
                                                  color: Colors.grey[300],
                                                ),
                                                Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(10, 0, 10, 0),
                                                    child: Divider(
                                                      height: 2.0,
                                                      color: Colors.grey[50],
                                                    )),
                                                Container(
                                                  width: 150.0,
                                                  color: Colors.grey[300],
                                                ),
                                                Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(10, 0, 10, 0),
                                                    child: Divider(
                                                      height: 2.0,
                                                      color: Colors.grey[50],
                                                    )),
                                                Container(
                                                  width: 150.0,
                                                  color: Colors.grey[300],
                                                ),
                                                Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(10, 0, 10, 0),
                                                    child: Divider(
                                                      height: 2.0,
                                                      color: Colors.grey[50],
                                                    )),
                                              ],
                                            ))
                                      ])),
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 40, 0, 0),
                                  child: Container(
                                    color: Colors.white30,
                                    height: 300,
                                    child: GridView.count(
                                        crossAxisCount: 3,
                                        childAspectRatio: 1.0,
                                        padding: const EdgeInsets.all(4.0),
                                        mainAxisSpacing: 4.0,
                                        crossAxisSpacing: 4.0,
                                        children: <Widget>[
                                          roundedRectButton(
                                              "Package",
                                              Color(0xff1F1E4F),
                                              whiteGradients,
                                              TrainerPackages(),
                                              Icons.card_giftcard),
                                          roundedRectButton(
                                              "Calendar",
                                              Color(0xff1F1E4F),
                                              whiteGradients,
                                              TrainerCalender(),
                                              Icons.calendar_today),
                                          roundedRectButton(
                                              " schedule",
                                              Color(0xff1F1E4F),
                                              whiteGradients,
                                              TrainerClassSchedule(),
                                              Icons.schedule),
                                          roundedRectButton(
                                              "Payment",
                                              Color(0xff1F1E4F),
                                              whiteGradients,
                                              StudentSettings(),
                                              Icons.payment),
                                          roundedRectButton(
                                              "Settings",
                                              Color(0xff1F1E4F),
                                              whiteGradients,
                                              StudentSettings(),
                                              Icons.settings),
                                          roundedRectButton(
                                              "Logout",
                                              Color(0xff1F1E4F),
                                              whiteGradients,
                                              StudentSettings(),
                                              Icons.person_outline),
                                        ]),
                                  ))
                            ]))
                  ],
                ),
              ),
            )
          ])),
        ])));
  }

  Widget roundedRectButton(String title, Color textColor, List<Color> gradient,
      Widget page, IconData icon) {
    return Builder(builder: (BuildContext mContext) {
      return Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Stack(
          alignment: Alignment(1.0, 0.0),
          children: <Widget>[
            InkWell(
              child: Container(
                  alignment: Alignment.center,

                  // decoration: ShapeDecoration(
                  //   shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(50.0)),
                  //   gradient: LinearGradient(
                  //       colors: gradient,
                  //       begin: Alignment.topLeft,
                  //       end: Alignment.bottomRight),
                  // ),
                  child: Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                        Card(
                            elevation: 5,
                            color: new Color(0xffE8E8ED),
                            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: Container(
                                height: 50,
                                width: 50,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              icon,
                                              size: 30.0,
                                              color: new Color(0xff1F1E4F),
                                            ),
                                          ])
                                    ]))),
                        Text(title,
                            style: TextStyle(
                                color: textColor,
                                fontSize: 15,
                                fontFamily: "HelveticaMedium",
                                fontWeight: FontWeight.w100)),
                      ]))),
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

  void _choose() async {
    //  file = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      files = ImagePicker.pickImage(source: ImageSource.gallery);
    });
    if (file == null) return;
    base64Image = base64Encode(file.readAsBytesSync());
    fileName = file.path.split("/").last;
  }

  Widget showImage() {
    return FutureBuilder<File>(
      future: files,
      builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            null != snapshot.data) {
          tmpFile = snapshot.data;
          base64Image = base64Encode(snapshot.data.readAsBytesSync());
          return new Container(
            alignment: Alignment.center,
            height: 100.0,
            width: 100.0,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0x33A6A6A6)),
              // image: new Image.asset(_image.)
            ),
            child: Image.file(
              snapshot.data,
              colorBlendMode: BlendMode.darken,
              fit: BoxFit.contain,
              width: 100,
              height: 100,
            ),
          );
        } else if (null != snapshot.error) {
          return const Text(
            'Error Picking Image',
            textAlign: TextAlign.center,
          );
        } else {
          return const Text(
            'No Image Selected',
            textAlign: TextAlign.center,
          );
        }
      },
    );
  }
}
