import 'package:flutter/material.dart';
import 'package:projecttest/core/widgets/custom_btn.dart';
import '../widget/custom_signup_form.dart';
import '../widget/custom_text_filed.dart';
import '../widget/custom_welcome.dart';
import '../widget/have_account.dart';
import '../widget/terms_and_condition.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 120,),),
          SliverToBoxAdapter(child: CustomWelcome(),),
          SliverToBoxAdapter(child: CustomSignUpForm()),
          SliverToBoxAdapter(child: SizedBox(height: 20,),),
          SliverToBoxAdapter(child: HaveAnAccount(text1: "Have an Account ",text2: "Sign Up",),),
          SliverToBoxAdapter(child: SizedBox(height: 20,),),
        ],
      )

    );
  }
}







