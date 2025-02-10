import 'package:flutter/material.dart';
import '../../../../../core/function/navigation.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../../core/widgets/custom_btn.dart';
import '../../../data/model/on_boarding_model.dart';

class GetButton extends StatelessWidget {
  const GetButton({super.key,
    required this.currentIndex,
    required this.controller});
  final int currentIndex;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingData.length-1)
    {
      return Column(
        children: [
          CustomBtn(text: "Create Account",
            onPressed: (){
              customNavigateReplacement(context, "/signUpView");
            },
          ),
          const SizedBox(height: 20,),
          GestureDetector(
              onTap: (){
                customNavigateReplacement(context, "/signInView");
              },
              child: Text("Login Now",
                style: CustomTextStyles.cairo300style16,))
        ],
      );}
    else{
       return   CustomBtn(text: "Next",
         onPressed: (){
           controller.nextPage(duration: const Duration(milliseconds: 200),
               curve: Curves.bounceIn);
         },
       );
    }
    }
  }

