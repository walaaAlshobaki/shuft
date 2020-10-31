import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Triner_complete_class.dart';
import 'show_all_student_class.dart';
import 'soon_class.dart';
import 'student_with_me.dart';

class ShowStudentProfile extends StatefulWidget {
  @override
  State<ShowStudentProfile> createState() => ShowStudentProfileState();
}

class ShowStudentProfileState extends State<ShowStudentProfile> {
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
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                     Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                       Image.asset(
                        "assets/img/female.png",
                        width: 15,
                        height: 26,
                      ),
                      Text(
                        "25/35",
                        style: TextStyle(fontSize: 18.0),
                      )
                    ]),
              
               Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                        "assets/img/user.png",
                        width: 85,
                        height: 85,
                      ),
                              Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Text(
                                "Maria sleman",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    color: new Color(0xff1F1E4F),
                                    fontWeight: FontWeight.bold),
                              )),
                              Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Text(
                                "+962 4565 564",
                                style: TextStyle(
                                    fontSize: 21.0,
                                    color: new Color(0xff55CE9D),
                                    fontWeight: FontWeight.bold),
                              )),
                            ])),
                           
                  ])),  Padding(
          padding: EdgeInsets.only(top: 350),
          child: Container(
          height: 50,
            child: TabBar(
              indicator: UnderlineTabIndicator(
          borderSide:BorderSide(color: Color(0xff55CE9D), width: 5.0),
          insets: EdgeInsets.symmetric(horizontal:25.0)
        ),
   
   unselectedLabelColor: Color(0xff55CE9D),
             
                tabs:
                [
                  Tab(child: Text("All", style: TextStyle(fontSize: 18,fontFamily: "HelveticaBold",color: Color(0xff1F1E4F)),),),
                  Tab(child: Text("With me", style: TextStyle(fontSize: 18,fontFamily: "HelveticaBold",color: Color(0xff1F1E4F)),),),
                ]

            ),
          ),
          
          
          
          
        ),
         Padding(
          padding: EdgeInsets.only(top: 400),
          child: Container(
             child:TabBarView(children:
          [
          AllStudentClass() ,
          StudentWithMeClass()
          ]),
          ),
         ),
             
            ]),
          )
        ])));
  }
}
