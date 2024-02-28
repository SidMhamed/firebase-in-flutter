import 'package:flutter/material.dart';

class TextTitleSubTitle extends StatelessWidget {
  final String isTitle;
  final String isSubTitle;
  const TextTitleSubTitle(
      {super.key, required this.isTitle, required this.isSubTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          isTitle,
          style: const TextStyle(
            fontSize: 25,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          isSubTitle,
          style: TextStyle(
            fontSize: 12,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
