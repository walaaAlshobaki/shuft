import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyIconSpinner extends StatefulWidget {
  MyIconSpinner(String s, {Key key, this.title, this.color = Colors.blueGrey}) : super(key: key);

  final String title;
  final Color color; 

  @override
  _MyIconSpinnerState createState() => _MyIconSpinnerState();
}

class _MyIconSpinnerState extends State<MyIconSpinner>
    with TickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 5000),
      vsync: this,
    );

    _controller.addListener((){
      if(_controller.isCompleted){
        _controller.repeat();
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return RotationTransition(
      turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
      child: Icon(
        Icons.donut_large,
        size: 100,
        color: new Color(0xff1F1E4F),
      ),
    );
  }
} 