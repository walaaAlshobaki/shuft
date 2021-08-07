import 'package:flutter/material.dart';
import 'package:shaftt_app/themes.dart';
import 'package:shaftt_app/your_class_when_you_want.dart';

class WhatIsShaftt extends StatefulWidget {
  @override
  _WhatIsShafttState createState() => _WhatIsShafttState();
}

class _WhatIsShafttState extends State<WhatIsShaftt> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        body: Container(
          child: Stack(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
                  child: Text('What is shafft',
                      style: TextStyle(
                        fontSize: 35.0,
                        fontFamily: "HelveticaBold",
                        color: new Color(0xff55CE9D),
                      ))),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 100, 0, 0),
                child: Image.asset(
                  "assets/img/g1.png",
                  width: 277,
                  height: 200,
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(20, 470, 10, 0),
                  child: Text('Classic way to get your license fast And save.',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: "HelveticaBold",
                        color: new Color(0xff707070),
                      ))),
              Padding(
                padding: EdgeInsets.fromLTRB(300, 550, 20, 0),
                child: roundedRectButton("Next", Colors.white, blueGradients,
                    YourLessonsWhenYouWant()),
              ),
            ],
          ),
        ),
      );
    })));
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
                width: 100,
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
                        fontFamily: "HelveticaMedium",
                        color: textColor,
                        fontSize: 18,
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
