import 'package:flutter/material.dart';
import 'package:shaftt_app/select_your_region.dart';
import 'package:shaftt_app/themes.dart';
import 'package:shaftt_app/what_is_shaftt.dart';

class YourLessonsWhenYouWant extends StatefulWidget {
 @override
  _YourLessonsWhenYouWanttState createState() => _YourLessonsWhenYouWanttState();
}

class _YourLessonsWhenYouWanttState extends State<YourLessonsWhenYouWant> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Scaffold(
      body: Container(
       child: Stack(
         children: <Widget>[
            Padding(
          padding: EdgeInsets.fromLTRB(360, 60, 0, 22),
          child: Text('Skip',
            style: TextStyle(
              fontSize: 19.0,
                    fontFamily:"HelveticaBold",
                    color: new Color(0xff55CE9D),
                   
              )
              )
              ),
         Padding(
          padding: EdgeInsets.fromLTRB(33, 100, 33, 0),
          child: Text('Your lessons when you want',
            style: TextStyle(
              fontSize: 35.0,
                    fontFamily:"HelveticaBold",
                    color: new Color(0xff55CE9D),
                   
              )
              )
              ),
               Center(child: Image.asset("assets/img/g2.png",width: 277,height: 195,) ,),
               Padding(
          padding: EdgeInsets.fromLTRB(20, 650,10, 0),
          child: Text('choose the time that suites you',
            style: TextStyle(
              fontSize: 20.0,
                    fontFamily:"HelveticaBold",
                    color: new Color(0xff707070),
                   
              )
              )
              ),
              Padding(
                
          padding: EdgeInsets.fromLTRB(300, 750,10, 0),
          child:  roundedRectButton("Next",Colors.white, blueGradients, SelectYourRegion()),
                 
              ),
               Padding(
          padding: EdgeInsets.fromLTRB(20, 750,0, 0),
          child:  roundedRectButton("Back",Color(0xff55CE9D), whiteGradients, WhatIsShaftt()),
                 
              ),
              
         ],
       ),
        
       
       
      ),
      
    );
       }
    )));
  }
   Widget roundedRectButton(String title,Color textColor, List<Color> gradient, Widget page) {
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
                        fontFamily:"HelveticaMedium",
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
