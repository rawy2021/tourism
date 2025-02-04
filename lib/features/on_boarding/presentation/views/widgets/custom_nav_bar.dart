import 'package:flutter/material.dart';
import 'package:projecttest/core/utils/app_text_style.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topRight,
        child: Text("SKIP",style:
          CustomTextStyles.cairo500styleBody24
          ,));
  }
}
