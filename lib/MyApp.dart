import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

void main() => runApp(
  MaterialApp(
    home: AppLogin(),
    )
  );
  

class AppLogin extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, widget),
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: Container(color: Color(0xFFF5F5F5))),
          theme: Theme.of(context).copyWith(platform: TargetPlatform.android),
      debugShowCheckedModeBanner: false,

  home: Scaffold(
      appBar: AppBar(title: Text('User Login Form')),
      body: Center(
        child: LoginUser()
        )
      )
      
    );
}
}

class LoginUser extends StatefulWidget {

LoginUserState createState() => LoginUserState();

}

class LoginUserState extends State {

  // For CircularProgressIndicator.
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
  var url = 'http://sheft-platform.com/API/login.php';

  // Store all data with Param Name.
  var data = {'email': email, 'password' : password};

  // Starting Web API Call.
  var response = await http.post(url, body: json.encode(data));

  // Getting Server response into variable.
 Map<String, dynamic> map = jsonDecode(response.body);
  
   var message=map["message"];


  // If the Response Message is Matched.
  if(message == 'You have successfully logged in.')
  {

    // Hiding the CircularProgressIndicator.
      setState(() {
      visible = false; 
      });

    // Navigate to Profile Screen & Sending Email to Next Screen.
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProfileScreen(email : emailController.text))
      );
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
return Scaffold(
  body: SingleChildScrollView(
    child: Center(
    child: Column(
      children: <Widget>[

        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text('User Login Form', 
                  style: TextStyle(fontSize: 21))),

        Divider(),          

        Container(
        width: 280,
        padding: EdgeInsets.all(10.0),
        child: TextField(
            controller: emailController,
            autocorrect: true,
            decoration: InputDecoration(hintText: 'Enter Your Email Here'),
          )
        ),

        Container(
        width: 280,
        padding: EdgeInsets.all(10.0),
        child: TextField(
            controller: passwordController,
            autocorrect: true,
            obscureText: true,
            decoration: InputDecoration(hintText: 'Enter Your Password Here'),
          )
        ),

        RaisedButton(
          onPressed: userLogin,
          color: Colors.green,
          textColor: Colors.white,
          padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
          child: Text('Click Here To Login'),
        ),

        Visibility(
          visible: visible, 
          child: Container(
            margin: EdgeInsets.only(bottom: 30),
            child: CircularProgressIndicator()
            )
          ),

      ],
    ),
  )));
}
}

class ProfileScreen extends StatelessWidget {

// Creating String Var to Hold sent Email.  
final String email;

// Receiving Email using Constructor.
ProfileScreen({Key key, @required this.email}) : super(key: key);

// User Logout Function.
logout(BuildContext context){

  Navigator.pop(context);

}

@override
Widget build(BuildContext context) {
return MaterialApp(
  home: Scaffold(
      appBar: AppBar(title: Text('Profile Screen'),
      automaticallyImplyLeading: false),
      body: Center(
        child: Column(children: <Widget>[

          Container(
          width: 280,
          padding: EdgeInsets.all(10.0),
          child: Text('Email = ' + '\n' + email, 
                style: TextStyle(fontSize: 20))
            ),

          RaisedButton(
          onPressed: () {
            logout(context);
          },
          color: Colors.red,
          textColor: Colors.white,
          child: Text('Click Here To Logout'),
        ),

        ],)
        )
      )
    );
}
}