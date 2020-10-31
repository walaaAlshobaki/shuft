
import 'package:flutter/material.dart';

class ProfileStudant extends StatelessWidget {
  // Creating String Var to Hold sent Email.  
final String email;

ProfileStudant({Key key, @required this.email}) : super(key: key);
logout(BuildContext context){
 
  Navigator.pop(context);
 
}
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


