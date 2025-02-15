import 'package:flutter/material.dart';
import 'package:projecttest/features/auth/presentation/widget/custom_welcome.dart';
import 'package:projecttest/features/auth/presentation/widget/have_account.dart';
import 'package:projecttest/features/auth/presentation/widget/welcome_banner.dart';
import '../widget/custom_signin_form.dart';

class SingInView extends StatelessWidget {
  const SingInView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: WelcomeBanner(),),
          SliverToBoxAdapter(child: SizedBox(height: 20,),),
          SliverToBoxAdapter(child: CustomWelcome(text: 'Welcome Back',),),
          SliverToBoxAdapter(child: CustomSignInForm(),),
          SliverToBoxAdapter(child: SizedBox(height: 20,),),
          SliverToBoxAdapter(child: HaveAnAccount(text1: "Dont Have Account  ", text2: "SignUp"),)

        ],
      )
    );
  }
}
