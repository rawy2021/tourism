import 'package:flutter/material.dart';
import 'package:projecttest/core/utils/app_color.dart';
import 'package:projecttest/core/utils/app_text_style.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../core/utils/app_assets.dart';
import 'custom_smooth_page.dart';

class OnBoardingWidget extends StatelessWidget {
   OnBoardingWidget({super.key});
 final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: _controller,
          itemCount: 3,
          itemBuilder: (context,index){
        return Column(
          children: [
            Image.asset(Assets.onBoardingThree),
            const SizedBox(height: 20,),
            CustomSmoothPageIndicator(controller: _controller,),
            const SizedBox(height: 20,),
            Text("Welcome to Egypt – The Land of Wonders!",
            style: CustomTextStyles.cairo500styleBody24.copyWith(fontWeight:FontWeight.bold ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30,),
            Text("Enjoy world-class diving in Sharm El Sheikh & Hurghada",
              style: CustomTextStyles.cairo300style16,
              textAlign: TextAlign.center,
            ),
          ],
        );
      }),
    );
  }
}
