import 'package:flutter/material.dart';

import 'Trainer_packages.dart';
import 'Trainer_profile.dart';

import 'notifcation.dart';



class TrainerHome  extends StatefulWidget {
  // final String token;

// StudentPackages({Key key, @required this.token}) : super(key: key);
   @override
  _TrainerHomeState createState() => _TrainerHomeState();
}
class _TrainerHomeState extends State<TrainerHome>with TickerProviderStateMixin<TrainerHome>  {
int index = 0;

 @override
Widget build(BuildContext context) {
  return Center(child: Container(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return new Scaffold(
    body: new Stack(
      children: <Widget>[
        new Offstage(
          offstage: index != 0,
          child: new TickerMode(
            enabled: index == 0,
            child: new MaterialApp(home: TrainerProfile()),
          ),
        ),
          new Offstage(
          offstage: index != 1,
          child: new TickerMode(
            enabled: index == 1,
            child: new MaterialApp(home: new NotifactionList()),
          ),
        ),
          new Offstage(
          offstage: index != 2,
          child: new TickerMode(
            enabled: index == 2,
            child: new MaterialApp(home: new TrainerPackages()),
          ),
        )
      ],
    ),   bottomNavigationBar: new BottomNavigationBar(
      currentIndex: index,
      onTap: (int index) { setState((){ this.index = index; }); },
      items: <BottomNavigationBarItem>[
        new BottomNavigationBarItem(
          icon: new Icon(Icons.person),
          title: new Text("Profile"),
          backgroundColor:  Color(0xff007EE7)
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.notifications),
          title: new Text("Notification"),
           backgroundColor:  Color(0xff007EE7)
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.card_giftcard),
          title: new Text("Packages"),
          backgroundColor:  Color(0xff007EE7)
        ),
        
      ],
    ),
  );
    }
    )));
}
}