import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shaftt_app/themes.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shaftt_app/trainer_main_login.dart';

import 'TrainerHome.dart';
import 'Trainer_profile.dart';
import 'profile_studant.dart';


// ignore: must_be_immutable
class TrainerLogin  extends StatefulWidget {
   bool visible = false ;
     // Getting value from TextField widget.
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  _TrainerLoginState createState() => _TrainerLoginState();
}
class _TrainerLoginState extends State<TrainerLogin> {
   bool visible = false ;
 
  // Getting value from TextField widget.
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
 
Future userLogin() async{
 
  // Showing CircularProgressIndicator.
 setState(() {
  visible = true ; 
  });

  // Getting value from Controller
  String email = emailController.text;
  String password = passwordController.text;

  // SERVER LOGIN API URL
  var url = 'http://shafft.com/API/login.php';

  // Store all data with Param Name.
  var data = {'role':"trainer",'email': email, 'password' : password};

  // Starting Web API Call.
  var response = await http.post(url, body: json.encode(data));

  // Getting Server response into variable.
 Map<String, dynamic> map = jsonDecode(response.body);
  
   var message=map["message"];
   print(message);


  // If the Response Message is Matched.
  if(message == 'You have successfully logged in.')
  {
 
    // Hiding the CircularProgressIndicator.
      setState(() {
      visible = false; 
      });
   Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>TrainerHome()));
    // Navigate to Profile Screen & Sending Email to Next Screen.
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => ProfileStudant(email : emailController.text))
      // );
  }else{
 
    // If Email or Password did not Matched.
    // Hiding the CircularProgressIndicator.
    setState(() {
      visible = false; 
      });
 
    // Showing Alert Dialog with Response JSON Message.
    showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: new Text(message),
        actions: <Widget>[
          FlatButton(
            child: new Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
    );}
 
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
            padding: EdgeInsets.only(top:60,left: 20,right: 20),
            child: Container(
                    
                     child:TextFormField(
                        controller: emailController,
                           keyboardType: TextInputType.text,
                           cursorColor: Color(0xff707070),
                            decoration: InputDecoration(
                
                                    labelText: "Name",
                                    labelStyle: TextStyle(fontSize: 18,fontFamily: "HelveticaThin",color:  Color(0xff707070)),
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
                                        color: Color(0xff007EE7),
                                        width: 2.0,
                                      ),
                                    ),
                    ),
                          )
                    )
                    ),
 
                 Padding(
            padding: EdgeInsets.only(top:20,left: 20,right: 20),
            child: Container(
                    
                     child:TextFormField(
                       controller: passwordController,
                           keyboardType: TextInputType.visiblePassword,
                           cursorColor: Color(0xff707070),
                            decoration: InputDecoration(
                
                                    labelText: "Pass",
                                    labelStyle: TextStyle(fontSize: 18,fontFamily: "HelveticaThin",color:  Color(0xff707070)),
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
                                        color: Color(0xff007EE7),
                                        width: 2.0,
                                      ),
                                    ),
                    ),obscureText: true,
                          )
                    )
                    ),Padding(
            padding: EdgeInsets.only(top:10,left: 50,right: 20),
            child: Container(
                    
                     child:Row(children: <Widget>[
                        Text("I forget my password",style: TextStyle(fontSize: 18,fontFamily: "HelveticaThin",color:  Color(0xff1F1E4F)),),
                         Text(" need help",style: TextStyle(fontSize: 18,fontFamily: "HelveticaThin",color:  Color(0xff007EE7)),)
                     ],)
                    
            ),
            ),Padding(
                                  padding: EdgeInsets.only(top:15,left: 20,right: 20,bottom: 15),
                                  child:Container(
                                    height:60,
                                    width: 340,
                                    child: roundedRectButton("Login",Color(0xffffffff), blueGradients,TrainerMAinLogin()),
                                      )  
                                      ),
 
                ],
              ),
             ),
            )
           )  
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
                 height:55,
                 width: 342,
                decoration: BoxDecoration(
                  color: Color(0xff007EE7),
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
                child:ButtonTheme(
                minWidth: 317,
                height: 35,            
                child: RaisedButton(
                   elevation: 0, 
                    onPressed: userLogin,
                     color:Color(0xff007EE7),
                    child: Text(title,
                    style: TextStyle(
                      fontFamily: "HelveticaBold",
                        color: textColor,
                        fontSize: 23,
                        fontWeight: FontWeight.w300)
                        ),
              
        ),
        ),
            ),
              ),
           
       
          ]
          ),
     
        

        );
      
    });
  
}
}