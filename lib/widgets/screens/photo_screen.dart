import 'package:flutter/material.dart';

class PhotoScreen extends StatelessWidget {
  const PhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final children = Scaffold(
      body: Image.asset(
          "assets/tela_photos.png",
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
      ),
    );
    return GestureDetector(
      onTap: _openGallery,
      child: children,
    );
  }
}
_openGallery(){}

