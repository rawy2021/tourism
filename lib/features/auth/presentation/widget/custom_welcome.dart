import 'package:flutter/material.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomWelcome extends StatelessWidget {
  const CustomWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align
      (child: Text("Welcome !",
      style: CustomTextStyles.cairo600style28,
    ));
  }
}
