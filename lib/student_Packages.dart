import 'package:flutter/material.dart';
import 'package:shaftt_app/student_profile.dart';
import 'package:shaftt_app/util/Singleton.dart';

import 'Packages.dart';
import 'RemoteDataSource/FavoriteBooksScreen.dart';
import 'SharedPrefs.dart';
import 'Trainers.dart';
import 'notifcation.dart';
import 'MapSample.dart';

class StudentPackages extends StatefulWidget {
  // final String token;

// StudentPackages({Key key, @required this.token}) : super(key: key);
  @override
  _StudentPackagesState createState() => _StudentPackagesState();
}

class _StudentPackagesState extends State<StudentPackages>
    with TickerProviderStateMixin<StudentPackages> {
  int index = 0;
  var instance = Singleton.instance;
  @override
  void initState() {
    super.initState();

    print("WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW");
    // instance.refreshStudent();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: Theme.of(context).copyWith(platform: TargetPlatform.android),
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
          body: new Stack(
            children: <Widget>[
              new Offstage(
                offstage: index != 0,
                child: new TickerMode(
                  enabled: index == 0,
                  child: new MaterialApp(
                    home: MapSample(),
                  ),
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
                  child: new MaterialApp(home: new Packages()),
                ),
              ),
              new Offstage(
                offstage: index != 3,
                child: new TickerMode(
                  enabled: index == 3,
                  child: new MaterialApp(home: new FavoriteBooksScreen()),
                ),
              ),
              new Offstage(
                offstage: index != 4,
                child: new TickerMode(
                  enabled: index == 4,
                  child: new MaterialApp(home: new StudentProfile()),
                ),
              ),
            ],
          ),
          bottomNavigationBar: new BottomNavigationBar(
            currentIndex: index,
            onTap: (int index) {
              setState(() {
                this.index = index;
              });
            },
            items: <BottomNavigationBarItem>[
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.map),
                  title: new Text("Map"),
                  backgroundColor: Color(0xff55CE9D)),
              new BottomNavigationBarItem(
                icon: new Icon(Icons.notifications),
                title: new Text("Notification"),
              ),
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.card_giftcard),
                  title: new Text("Packages"),
                  backgroundColor: Color(0xff55CE9D)),
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.directions_car),
                  title: new Text("Trainer"),
                  backgroundColor: Color(0xff55CE9D)),
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.account_box),
                  title: new Text("Profile"),
                  backgroundColor: Color(0xff55CE9D)),
            ],
          ),
        ));
  }
}
