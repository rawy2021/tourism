import 'package:flutter/material.dart';
import 'package:projecttest/core/utils/app_text_style.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topRight,
        child: GestureDetector(
          onTap: onTap,
          child: Text("SKIP",style:
            CustomTextStyles.cairo500styleBody24
            ,),
        ));
  }
}
