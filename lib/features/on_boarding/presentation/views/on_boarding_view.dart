import 'package:flutter/material.dart';
import 'package:projecttest/core/function/navigation.dart';
import 'package:projecttest/features/on_boarding/presentation/views/widgets/custom_nav_bar.dart';
import 'package:projecttest/features/on_boarding/presentation/views/widgets/get_button.dart';
import 'package:projecttest/features/on_boarding/presentation/views/widgets/on_boarding_widget.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key,});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController(initialPage: 0);
 int currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 20,),
               CustomNavBar(onTap: () {
             //   getIT<CacheHelper>().saveData(key: "isOnBoardingVisited", value: true);
                customNavigateReplacement(context, "/signUpView");
              },),
              OnBoardingWidget(
                onPageChanged: (index){
                  setState(() {
                  });
                  currentIndex = index;
                },
                controller: _controller,),
              const SizedBox(height: 88,),
              GetButton(currentIndex: currentIndex,controller: _controller,),
              const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
