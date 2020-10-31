import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class TrainerCalender extends StatefulWidget {
  @override
  State<TrainerCalender> createState() => TrainerCalenderState();
}

class TrainerCalenderState extends State<TrainerCalender> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return DefaultTabController(
        length: 2,
        child: new Scaffold(
            body: Stack(
          children: <Widget>[
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
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
                          child: Row(children: <Widget>[
                            Icon(
                              Icons.calendar_today,
                              size: 35.0,
                              color: new Color(0xff007EE7),
                            ),
                            Text(
                              "Calendar",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: new Color(0xff1F1E4F)),
                            ),
                          ])),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                          child: Divider(
                            height: 2.0,
                            color: Colors.grey,
                          )),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                          child: Center(
                            child: Text(
                              "Select the day",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: new Color(0xff1F1E4F)),
                            ),
                          )),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                          child: SfCalendar(
                              backgroundColor: Colors.grey[300],
                              view: CalendarView.month,
                              blackoutDates: <DateTime>[
                                DateTime(2020, 08, 10),
                                DateTime(2020, 08, 15),
                                DateTime(2020, 08, 20),
                                DateTime(2020, 08, 22),
                                DateTime(2020, 08, 24)
                              ],
                              blackoutDatesTextStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: Colors.red,
                                  decoration: TextDecoration.lineThrough)))
                    ],
                  ),
                ),
              ),
            ]))
          ],
        )),
      );
    })));
  }
}
