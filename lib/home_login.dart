import 'package:flutter/material.dart';
import 'package:shaftt_app/studant_main_login.dart';
import 'package:shaftt_app/themes.dart';
import 'package:shaftt_app/trainer_main_login.dart';

class HomeLogin extends StatefulWidget {
  @override
  _HomeLoginState createState() => _HomeLoginState();
}

class _HomeLoginState extends State<HomeLogin> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
     body: Container(
       
        
    
    child: Stack(
  
       children: <Widget>[
       Positioned(
                  child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
                  ),
       ),
       Padding(
       padding: EdgeInsets.fromLTRB(95, 291, 0, 95),
       child: Positioned(
                  child: Container(
                    height:78,
                      width: 225,
                   
                          child: Image.asset('assets/img/logo.png')
                          )
                          ),
       ),
        Padding(
       padding: EdgeInsets.fromLTRB(0, 600, 0, 0),
       child:Center(child: Column(children: <Widget>[
Text("Lets Start"
                          ,style: TextStyle(fontSize: 20,
                          color: Colors.white
                          ),
                          ),

                          Padding(
          padding: EdgeInsets.fromLTRB(0, 20,0, 0),
          child:Container(
            height:60,
            width: 340,
            child: roundedRectButton("Student",Color(0xffffffff), blueGradients,StudantMainLogin()),
               )  
              ),
              Padding(
          padding: EdgeInsets.fromLTRB(0, 10,0, 0),
           child:Container(
              height:50,
              width: 340,
              margin: EdgeInsets.only(top: 15.0),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.transparent,
                
                border: Border.all(
                    color: Color(0xff55CE9D),// set border color
                    width: 3.0), 
                      // set border width
                borderRadius: BorderRadius.all(
                    Radius.circular(25.0)), // set rounded corner radius
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffffffff).withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(0, 2), )]// make rounded corner of border
              ),
              child:  InkWell(
                 child: Container(
                alignment: Alignment.center,
               
                child: Text("Trainer",
                
                    style: TextStyle(
                      fontFamily: "HelveticaBold",
                        color:  Color(0xff55CE9D),
                        fontSize: 23,
                        fontWeight: FontWeight.w300)
                        ),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => TrainerMAinLogin()));
              },
                 ),
            ), 
            
            
              ),
       ],),)
       
      
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
                 height:50,
                 width: 340,
                decoration: BoxDecoration(
                  color: Color(0xff55CE9D),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)
                        ),
                        boxShadow: [
                            BoxShadow(
                              color: Color(0xffffffff).withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                          
                
            ),
              
            ),
              ),
               InkWell(
                 child: Container(
                alignment: Alignment.center,
               
                child: Text(title,
                
                    style: TextStyle(
                      fontFamily: "HelveticaBold",
                        color: textColor,
                        fontSize: 23,
                        fontWeight: FontWeight.w300)
                        ),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => page));
              },
                 ),
          ]
          ),
     
        

        );
      
    });
  }

}