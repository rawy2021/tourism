import 'package:flutter/material.dart';
import 'package:projecttest/core/function/navigation.dart';
import '../widget/custom_signup_form.dart';
import '../widget/custom_welcome.dart';
import '../widget/have_account.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 100,),),
          const SliverToBoxAdapter(child: CustomWelcome(text: 'Welcome!',),),
          const SliverToBoxAdapter(child: CustomSignUpForm()),
          const SliverToBoxAdapter(child: SizedBox(height: 20,),),
          SliverToBoxAdapter(child: HaveAnAccount(
            onTap: (){
              customNavigate(context, "/signIn");
            },
            text1: "Have an Account ",text2: "Sign Up",),),
          const   SliverToBoxAdapter(child: SizedBox(height: 20,),),
        ],
      )

    );
  }
}







