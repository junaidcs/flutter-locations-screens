import 'package:flutter/material.dart';

// models
import '../../models/location.dart';

// screens
import '../../main.dart';
import './single-location.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Location> locations = Location.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: ListView(
        children: <Widget>[
          ...locations
              .map(
                (location) => GestureDetector(
                  onTap: () => _onTabLocation(context, location.id),
                  child: Container(
                    height: 250.0,
                    child: SingleLocation(location.title, location.imagePath),
                  ),
                ),
              )
              .toList()
        ],
      ),
    );
  }

  static _onTabLocation(BuildContext context, locationID) {
    print(locationID);
    Navigator.pushNamed(context, LocationDetailsRoute,
        arguments: {'id': locationID});
  }
}
