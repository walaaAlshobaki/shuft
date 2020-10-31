import 'package:flutter/material.dart';

import 'trainer_registration.dart';
import 'trinar_login.dart';

class TrainerMAinLogin extends StatefulWidget {
  @override
  _TrainerMAinLoginState createState() => _TrainerMAinLoginState();
}
class _TrainerMAinLoginState extends State<TrainerMAinLogin> {
  @override
  Widget build(BuildContext context) {
  return DefaultTabController(
        length: 2,
        child: new Scaffold(
          body: Stack(
  
       children: <Widget>[
          Positioned(
          child: Container(
           height: 125.0,
          decoration: new BoxDecoration(
            color: new Color(0xff1F1E4F),
            boxShadow: [
              new BoxShadow(blurRadius: 5.0)
            ],
            borderRadius: new BorderRadius.vertical(
                bottom: new Radius.elliptical(
                    MediaQuery.of(context).size.width, 40.0)),
          ),
      
              //TRY TO CHANGE THIS **0.30** value to achieve your goal 
                child: Container(
                  margin: EdgeInsets.fromLTRB(60.0,40.0,70.0,20.0),
                  child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('assets/img/logo.png', scale: 1.5,width: 350,height: 60,),
                     
                        SizedBox(height: 5,width: 5,),
                       
                      ]
                  ),
                )
          ),
          ),
          Padding(
          padding: EdgeInsets.only(top: 132),
          child: Container(
          height: 50,
            child: TabBar(
              indicator: UnderlineTabIndicator(
          borderSide:BorderSide(color: Color(0xff007EE7), width: 5.0),
          insets: EdgeInsets.symmetric(horizontal:25.0)
        ),
   
   unselectedLabelColor: Color(0xff007EE7),
             
                tabs:
                [
                  Tab(child: Text("Signup", style: TextStyle(fontSize: 18,fontFamily: "HelveticaBold",color: Color(0xff1F1E4F)),),),
                  Tab(child: Text("Login", style: TextStyle(fontSize: 18,fontFamily: "HelveticaBold",color: Color(0xff1F1E4F)),),),
                ]

            ),
          ),
          
          
          
          
        ),
         Padding(
          padding: EdgeInsets.only(top: 180),
          child: Container(
             child:TabBarView(children:
          [
          TrainerRegistration() ,
          TrainerLogin()
          ]),
          ),
         ),


        
       ]
        
      
        )
        ));
  }
}
