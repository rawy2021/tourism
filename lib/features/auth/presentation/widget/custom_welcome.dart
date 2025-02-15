import 'package:flutter/material.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomWelcome extends StatelessWidget {
  const CustomWelcome({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Align
      (child: Text(text,
      style: CustomTextStyles.cairo600style28,
    ));
  }
}
