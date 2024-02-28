// ignore: file_names
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String Url;

  ImageWidget({super.key, required this.Url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 220, bottom: 30),
      child: Image.asset(
        Url,
        width: 80,
        height: 80,
      ),
    );
  }
}
