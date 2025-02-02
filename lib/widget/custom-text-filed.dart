import 'package:flutter/material.dart';

import '../const/color.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key,
    required this.text,
    required this.fontSize,
    required this.color});

  final String text;
  final double fontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return  Text(text,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: FontWeight.w500
      ),
    );
  }
}
