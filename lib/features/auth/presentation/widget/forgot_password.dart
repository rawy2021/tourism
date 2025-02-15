import 'package:flutter/material.dart';
import 'package:projecttest/core/function/navigation.dart';
import 'package:projecttest/core/utils/app_text_style.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        customNavigateReplacement(context, "path");
      },
      child: Align(
          alignment: Alignment.topRight,
          child: Text("ForgetPassword",style: CustomTextStyles.cairo500styleBody24,)),
    );
  }
}
