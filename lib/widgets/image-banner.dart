import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String imagePath;
  final double height;

  ImageBanner(this.imagePath, this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(height: height),
      child: Image.asset(imagePath, fit: BoxFit.cover),
    );
  }
}
