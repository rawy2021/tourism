import 'package:flutter/material.dart';
import 'package:projecttest/core/function/navigation.dart';
import 'package:projecttest/core/utils/app_text_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // bool isOnBoardingVisited =getIT<CacheHelper>().getData(key: "isOnBoardingVisited")??false;
    // if(isOnBoardingVisited ==true){
    //   delayedNavigate(context,"/signUpView");
    // }else{
    //   delayedNavigate(context,"/onBoarding");
    // }
    delayedNavigate(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Rawy Tourism",
            style: CustomTextStyles.cairo400style64

        ),
      ),
    );
  }
}

void delayedNavigate (context){
  Future.delayed(
      const Duration(seconds: 2),
          (){
        customNavigateReplacement(context, "/onBoarding");
      }
  );
}