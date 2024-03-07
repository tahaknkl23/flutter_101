import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.asset(ImageItems().appleWithBook, fit: BoxFit.cover),
          PngImage(
            name: ImageItems().appleBookWithoutPath,
          ),
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleWithBook = "assets/images/apple.png";
  final String appleBook = "assets/images/appleBook.png";
  final String appleBookWithoutPath = "appleBook.png";
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath, fit: BoxFit.cover);
  }

  String get _nameWithPath => "assets/images//$name";
}
