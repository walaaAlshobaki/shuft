import 'dart:ui';
import 'package:flutter/material.dart';

class BlurryDialog extends StatelessWidget {
  TextStyle textStyle = TextStyle(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
      child: AlertDialog(
        title: new Text(
          "LOGOUT",
          style: TextStyle(
              color: Color(0xff1F1E4F),
              fontSize: 15,
              fontFamily: "HelveticaMedium",
              fontWeight: FontWeight.w200),
        ),
        content: new Text(
          "are you sure to logout ?",
          style: TextStyle(
              color: Color(0xff1F1E4F),
              fontSize: 15,
              fontFamily: "HelveticaMedium",
              fontWeight: FontWeight.w200),
        ),
        actions: <Widget>[
          new FlatButton(
            child: new Text(
              "LOGOUT",
              style: TextStyle(
                  color: Color(0xff55CE9D),
                  fontSize: 15,
                  fontFamily: "HelveticaMedium",
                  fontWeight: FontWeight.w200),
            ),
            onPressed: () {
              // continueCallBack();
            },
          ),
          new FlatButton(
            child: Text(
              "Cancel",
              style: TextStyle(
                  color: Color(0xffd61d04),
                  fontSize: 15,
                  fontFamily: "HelveticaMedium",
                  fontWeight: FontWeight.w200),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: new Text(
        "Logout",
        style: textStyle,
      ),
      content: new Text(
        "",
        style: textStyle,
      ),
      actions: <Widget>[
        new FlatButton(
          child: new Text("LOGOUT"),
          onPressed: () {
            // continueCallBack();
          },
        ),
        new FlatButton(
          child: Text("Cancel"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
