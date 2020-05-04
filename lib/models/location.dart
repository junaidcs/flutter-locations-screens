import 'package:locations_screens/models/location-fact.dart';

class Location {
  final int id;
  final String title;
  final String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.title, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(1, 'Multan City', 'assets/images/japan1.jpg', [
        LocationFact('My Title Here', 'Some of the body goes here mainof the body goes here mainof the body goes here main of the body goes here mainof the bod y goes here main of the body go the string aes here main of the body goes here main g'),
        LocationFact('Other stuff goes', 'Some of the body goes here mainof the body goes here mainof the body goes here main of the body goes here mainof the bod y goes here main of the body go the string aes here main of the body goes here main g'),
        LocationFact('Here we go', 'Some of the body goes here mainof the body goes here mainof the body goes here main of the body goes here mainof the bod y goes here main of the body go the string aes here main of the body goes here main g'),
      ]),
      Location(2, 'Karachi City', 'assets/images/japan2.jpg', [
        LocationFact('My Title Here', 'Some of the body goes here mainof the body goes here mainof the body goes here main of the body goes here mainof the bod y goes here main of the body go the string aes here main of the body goes here main g'),
        LocationFact('Other stuff goes', 'Some of the body goes here mainof the body goes here mainof the body goes here main of the body goes here mainof the bod y goes here main of the body go the string aes here main of the body goes here main g'),
        LocationFact('Here we go', 'Some of the body goes here mainof the body goes here mainof the body goes here main of the body goes here mainof the bod y goes here main of the body go the string aes here main of the body goes here main g'),
      ]),
      Location(3, 'Faisalabad City', 'assets/images/japan3.jpg', [
        LocationFact('My Title Here', 'Some of the body goes here mainof the body goes here mainof the body goes here main of the body goes here mainof the bod y goes here main of the body go the string aes here main of the body goes here main g'),
        LocationFact('Other stuff goes', 'Some of the body goes here mainof the body goes here mainof the body goes here main of the body goes here mainof the bod y goes here main of the body go the string aes here main of the body goes here main g'),
        LocationFact('Here we go', 'Some of the body goes here mainof the body goes here mainof the body goes here main of the body goes here mainof the bod y goes here main of the body go the string aes here main of the body goes here main g'),
      ]),
      Location(4, 'Islamabad City', 'assets/images/japan3.jpg', [
        LocationFact('My Title Here', 'Some of the body goes here mainof the body goes here mainof the body goes here main of the body goes here mainof the bod y goes here main of the body go the string aes here main of the body goes here main g'),
        LocationFact('Here we go', 'Some of the body goes here mainof the body goes here mainof the body goes here main of the body goes here mainof the bod y goes here main of the body go the string aes here main of the body goes here main g'),
      ]),
    ];
  }

  static Location getById(int locationID) {
    final List<Location> locations = Location.fetchAll();
    for (var i=0; i<locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }
  
}