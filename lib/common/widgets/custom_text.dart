import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.size,
    this.align = TextAlign.center,
    this.color = Colors.white,
    this.fontWeight = FontWeight.normal,
    this.fontFamily,
    this.spans,
  });
  final String text;
  final double size;
  final TextAlign align;
  final Color color;
  final FontWeight fontWeight;
  final String? fontFamily;
  final List<TextSpan>? spans;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
      ),
    );
  }
}
