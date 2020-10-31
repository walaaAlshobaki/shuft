import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Destination {
  const Destination(this.title, this.icon, this.color);
  final String title;
  final IconData icon;
  final Color color;
}

const List<Destination> allDestinations = <Destination>[
  Destination('Map', Icons.map, Color(0xff55CE9D)),
  Destination('Notification', Icons.notifications, Color(0xff55CE9D)),
  Destination('Packages', Icons.card_giftcard, Color(0xff55CE9D)),
  Destination('Trainer', Icons.directions_car, Color(0xff55CE9D)),
    Destination('Profile', Icons.account_box, Color(0xff55CE9D))
];