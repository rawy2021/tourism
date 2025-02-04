import 'package:flutter/material.dart';
import 'package:projecttest/core/widgets/custom_btn.dart';
import 'package:projecttest/features/on_boarding/presentation/views/widgets/custom_nav_bar.dart';
import 'package:projecttest/features/on_boarding/presentation/views/widgets/on_boarding_widget.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              const CustomNavBar(),
              OnBoardingWidget(),
              const CustomBtn(text: "Next",),
              const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
