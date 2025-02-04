import 'package:flutter/material.dart';
import 'package:projecttest/core/utils/app_color.dart';
import 'package:projecttest/core/utils/app_text_style.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key,
    this.color,
    required this.text});
  final Color? color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(
            backgroundColor: color??AppColors.kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            )
          ),
          child: Text(text,
            style: CustomTextStyles.cairo300style24BtnTextWhite
                .copyWith(fontWeight: FontWeight.bold),)),
    );
  }
}
