import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'model/packagesModel.dart';

class StudantBookPackages extends StatefulWidget {
  PackagesModel packageModel;
  StudantBookPackages({Key key, @required this.packageModel}) : super(key: key);
  @override
  _State createState() => _State(packageModel);
}

class _State extends State<StudantBookPackages> {
  PackagesModel packageModel;
  DateTime selectedDate = DateTime.now();
  _State(this.packageModel);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 2,
            child: new Scaffold(
                body: Stack(children: <Widget>[
              Positioned(
                child: Container(
                    height: 125.0,
                    decoration: new BoxDecoration(
                      color: new Color(0xff1F1E4F),
                      boxShadow: [new BoxShadow(blurRadius: 5.0)],
                      borderRadius: new BorderRadius.vertical(
                          bottom: new Radius.elliptical(
                              MediaQuery.of(context).size.width, 40.0)),
                    ),

                    //TRY TO CHANGE THIS **0.30** value to achieve your goal
                    child: Container(
                      margin: EdgeInsets.fromLTRB(60.0, 40.0, 70.0, 20.0),
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
              Padding(
                  padding: EdgeInsets.only(top: 130, left: 10, right: 10),
                  child: Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 10, 10, 0),
                                child: Text(
                                  packageModel.price.toString() + " \$",
                                  style: TextStyle(
                                      color: Color(0xff55CE9D), fontSize: 20.0),
                                ),
                              )
                            ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
                              child: Image.asset(
                                "assets/img/user.png",
                                width: 65,
                                height: 65,
                              ),
                            ),
                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Text(
                                  packageModel.trainer["firstName"] +
                                      " " +
                                      packageModel.trainer["lastName"],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ])
                      ]))),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 300, 0, 0),
                      child: Text(
                        "you are booking 0 class of this package ",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ]),
              Padding(
                  padding: const EdgeInsets.fromLTRB(20, 350, 20, 0),
                  child: ListView.builder(
                      itemCount: packageModel.MaxClass,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            (index + 1).toString() + " class",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          subtitle: Text(
                            selectedDate.toString(),
                            style: TextStyle(fontSize: 20.0),
                          ),
                          trailing: GestureDetector(
                              onTap: () {
                                _selectDate(context);
                              },
                              child: Text(
                                "set",
                                style: TextStyle(
                                    color: Color(0xff55CE9D), fontSize: 20.0),
                              )),
                        );
                      })),
            ]))));
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1980, 8),
        lastDate: DateTime(2028));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        TimeOfDay initialTime = TimeOfDay.now();
        Future<TimeOfDay> pickedTime = showTimePicker(
          context: context,
          initialTime: initialTime,
        );
      });
  }
}
