import 'package:flutter/material.dart';
import 'package:shaftt_app/lets_starting.dart';
import 'package:shaftt_app/themes.dart';
import 'package:shaftt_app/your_class_when_you_want.dart';

class SelectYourRegion extends StatefulWidget {
  @override
  _SelectYourRegionState createState() => _SelectYourRegionState();
}

class _SelectYourRegionState extends State<SelectYourRegion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.fromLTRB(360, 60, 0, 22),
                child: Text('Skip',
                    style: TextStyle(
                      fontSize: 19.0,
                      fontFamily: "HelveticaBold",
                      color: new Color(0xff55CE9D),
                    ))),
            Padding(
                padding: EdgeInsets.fromLTRB(33, 100, 33, 0),
                child: Text('Select your region',
                    style: TextStyle(
                      fontSize: 35.0,
                      fontFamily: "HelveticaBold",
                      color: new Color(0xff55CE9D),
                    ))),
            Center(
              child: Image.asset(
                "assets/img/g3.png",
                width: 277,
                height: 195,
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 650, 10, 0),
                child: Text('Choose the Area you want or you in.',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: "HelveticaBold",
                      color: new Color(0xff707070),
                    ))),
            Padding(
              padding: EdgeInsets.fromLTRB(260, 450, 10, 0),
              child: roundedRectButton(
                  "Next", Colors.white, blueGradients, LetsStarting()),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 750, 0, 0),
              child: roundedRectButton("Back", Color(0xff55CE9D),
                  whiteGradients, YourLessonsWhenYouWant()),
            ),
          ],
        ),
      ),
    );
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
                width: 120,
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
