import 'package:flutter/material.dart';
import 'package:projecttest/core/utils/app_text_style.dart';
import 'package:projecttest/features/on_boarding/data/model/on_boarding_model.dart';
import 'custom_smooth_page.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({super.key, required this.controller,  this.onPageChanged,});
 final PageController controller;
 final Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        physics: const BouncingScrollPhysics(),
        controller: controller,
          itemCount: onBoardingData.length,
          itemBuilder: (context,index){
        return Column(
          children: [
            Container(
              height: 290,
                width: 343,
                decoration:  BoxDecoration(
                  image: DecorationImage(image: AssetImage(
                      onBoardingData[index].imagePath,
                  ),
                  fit: BoxFit.fill
                  ),
                ),
                ),
            const SizedBox(height: 20,),
            CustomSmoothPageIndicator(controller: controller,),
            const SizedBox(height: 20,),
            Text(onBoardingData[index].title,
            style: CustomTextStyles.cairo500styleBody24.copyWith(fontWeight:FontWeight.bold ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 30,),
            Text(onBoardingData[index].body,
              style: CustomTextStyles.cairo300style16,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        );
      }),
    );
  }
}
