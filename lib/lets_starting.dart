import 'package:flutter/material.dart';
import 'package:shaftt_app/home_login.dart';
import 'package:shaftt_app/select_your_region.dart';
import 'package:shaftt_app/themes.dart';


class LetsStarting extends StatefulWidget {
 @override
  _LetsStartingState createState() => _LetsStartingState();
}

class _LetsStartingState extends State<LetsStarting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       child: Stack(
         children: <Widget>[
             Padding(
          padding: EdgeInsets.fromLTRB(360, 70, 0, 22),
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
          child: Text('Lets Starting',
            style: TextStyle(
              fontSize: 35.0,
                    fontFamily:"HelveticaBold",
                    color: new Color(0xff55CE9D),
                   
              )
              )
              ),
             Center(child: Image.asset("assets/img/g4.png",width: 277,height: 195,) ,),
               Padding(
          padding: EdgeInsets.fromLTRB(20, 650,10, 0),
          child: Text('Welcome to shaftt ',
            style: TextStyle(
              fontSize: 20.0,
                    fontFamily:"HelveticaBold",
                    color: new Color(0xff707070),
                   
              )
              )
              ),
              Padding(
          padding: EdgeInsets.fromLTRB(260, 750,10, 0),
          child:  roundedRectButton("Start",Colors.white, blueGradients, HomeLogin()),
                 
              ),
               Padding(
          padding: EdgeInsets.fromLTRB(20, 750,0, 0),
          child:  roundedRectButton("Back",Color(0xff55CE9D), whiteGradients, SelectYourRegion()),
                 
              ),
              
         ],
       ),
        
       
       
      ),
      
    );
    
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
                width: 130,
                height: 45,
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
                        fontSize: 25,
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
