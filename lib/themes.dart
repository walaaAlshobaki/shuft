import 'package:flutter/material.dart';

String arabicHomeString = 'الرئيسة';
String englishHomeString = 'Home';
String homeString = englishHomeString;

const List<Color> whiteGradients = [
  Color(0xFFffffff),
  Color(0xFFffffff),
  // Color(0xFF02386E),
];

const List<Color> blueGradients = [
  Color(0xff55CE9D),
  Color(0xff55CE9D),
];
const List<Color> blueGradients1 = [
  Color(0xff007EE7),
  Color(0xff007EE7),
];

//0xFF0052A2 // new bbuttons color
const Color aquaColor = Color(0xff5FD09F);
const List<Color> aquaGradients = [
  Color(0xFF1F1E4F),
  Color(0xFF1F1E4F),
];

const List<Color> aquaGradients2 = [
  Color(0xff5FD09F),
  // Color(0xFF8EF7DA),
  Color(0xFF5AEAF1),
];
changeLanguage(bool statusMode) {
  if (statusMode == true) {
    homeString = englishHomeString;
  } else if (statusMode == false) {
    homeString = arabicHomeString;
  }
}
