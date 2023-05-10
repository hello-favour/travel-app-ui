import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final double? size;
  final Color color;
  final FontWeight? fontWeight;
  final double? letterSpacing;
  final double? wordSpacing;
  const AppText({
    Key? key,
    required this.text,
    this.size,
    required this.color,
    this.fontWeight,
    this.letterSpacing,
    this.wordSpacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
      ),
    );
  }
}
