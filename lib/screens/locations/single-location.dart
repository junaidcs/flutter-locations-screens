import 'package:flutter/material.dart';

import '../../widgets/image-banner.dart';

class SingleLocation extends StatelessWidget {
  final String title;
  final String imagePath;

  SingleLocation(this.title, this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ImageBanner(imagePath, 250),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
              child: Text(
                title,
                style: TextStyle(fontSize: 18.0, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
