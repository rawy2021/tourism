import 'package:flutter/material.dart';
import '../../../../core/utils/app_text_style.dart';
import 'check_box.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomCheckbox(),
        Text.rich(
            TextSpan(
                children: [
                  TextSpan(
                      text: "I Agree ",
                      style: CustomTextStyles.cairo300style16
                  ),
                  TextSpan(
                      text: "Terms and Condition",
                      style: CustomTextStyles.cairo300style16.copyWith(
                        decoration: TextDecoration.underline
                      )
                  ),
                ]
            )
        )
      ],
    );
  }
}
