
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Destination.dart';
import 'Packages.dart';
import 'your_class_when_you_want.dart';

class DestinationView extends StatefulWidget {
  
  const DestinationView({ Key key, this.destination }) : super(key: key);

  final Destination destination;

  @override
  _DestinationViewState createState() => _DestinationViewState();
}

class _DestinationViewState extends State<DestinationView> {
  var _navigatorKey = GlobalKey<NavigatorState>();
   @override
  void initState() {
    super.initState();
     _navigatorKey={widget.destination.title} as GlobalKey<NavigatorState>;
    
  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      body: Navigator(
        key: _navigatorKey,
        initialRoute: '/',
        onGenerateRoute: (RouteSettings settings) {
          WidgetBuilder builder;
          // Manage your route names here
          switch ({widget.destination.title}.toString()) {
            case '/':
              builder = (BuildContext context) => Packages();
              break;
            case '/Map':
              builder = (BuildContext context) => YourLessonsWhenYouWant();
              break;
            case '/Packages':
              builder = (BuildContext context) => Packages();
              break;
            default:
              throw Exception('Invalid route: ${settings.name}');
          }
          // You can also return a PageRouteBuilder and
          // define custom transitions between pages
          return MaterialPageRoute(
            builder: builder,
            settings: settings,
          );
        },
      ),
    );
  
}
}