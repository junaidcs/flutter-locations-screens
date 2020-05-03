import 'package:flutter/material.dart';
import 'package:locations_screens/screens/location-details/location-details.dart';

import 'package:locations_screens/screens/locations/locations.dart';

const String LocatoinRoute = '/';
const String LocationDetailsRoute = 'location-details';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      title: "Locations App",
      home: Locations()
    );
  }

  static RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic>arguments = settings.arguments;
      Widget screen;

      switch(settings.name) {
        case LocatoinRoute:
          screen = Locations();
          break;
        case LocationDetailsRoute:
          screen = LocationDetails(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}

