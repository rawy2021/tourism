import 'package:flutter/material.dart' show BorderRadius, BuildContext, EdgeInsets, ElevatedButton, FontWeight, Padding, RoundedRectangleBorder, StatelessWidget, Text, TextStyle, VoidCallback, Widget;
import '../const/color.dart';

class CustomButton extends StatelessWidget {
   const CustomButton({super.key,
    required this.text,
     required this.onPressed});
  final String text;
 final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryColor,
            foregroundColor: kSecondaryColor,
            textStyle: const TextStyle(
              //  color: kPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 22
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
            ),
            padding: const EdgeInsets.all(12),

          ),
          // backgroundColor: Colors

          child: Text(text)),
    );
  }
}
