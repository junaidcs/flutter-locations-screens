import 'package:flutter/material.dart';
import 'package:locations_screens/widgets/image-banner.dart';

import '../../models/location.dart';
import './fact-text.dart';

class LocationDetails extends StatelessWidget {
  final int _locationID;

  LocationDetails(this._locationID);

  @override
  Widget build(BuildContext context) {
    final Location location = Location.getById(_locationID);

    return Scaffold(
      appBar: AppBar(
        title: Text(location.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ImageBanner(location.imagePath, 250),
          ...location.facts
              .map((fact) => FactText(fact.title, fact.text))
              .toList()
        ],
      ),
    );
  }
}
