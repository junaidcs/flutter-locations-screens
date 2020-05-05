import 'package:flutter/material.dart';

class FactText extends StatelessWidget {
  final String _title;
  final String _text;

  FactText(this._title, this._text);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 10.0),
          child: Text(
            _title,
            style: TextStyle(fontSize: 20.0),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 20.0),
          child: Text(_text),
        ),
      ],
    );
  }
}
