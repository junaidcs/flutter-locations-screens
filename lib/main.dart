import 'package:flutter/material.dart';
import 'package:locations_screens/screens/location-details/location-details.dart';

import 'package:locations_screens/screens/locations/locations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Locations App",
      home: Locations()
    );
  }
}

