import 'package:flutter/cupertino.dart';

import '../../../../core/utils/app_assets.dart';

class OnBoardingModel{
  final String imagePath;
  final String title;
  final String body;

  OnBoardingModel({
    required this.imagePath,
    required this.title,
    required this.body});
}

List<OnBoardingModel> onBoardingData =[
  OnBoardingModel(
      imagePath: Assets.logo,
      title: "Welcome to Egypt – The Land of Wonders!",
      body: "Enjoy world-class diving in Sharm El Sheikh & Hurghada" ),
  OnBoardingModel(
      imagePath: Assets.onBoardingTow,
      title: "Welcome to Egypt – The Land of Wonders!",
      body: "Enjoy world-class diving in Sharm El Sheikh & Hurghada" ),
  OnBoardingModel(
      imagePath: Assets.onBoardingThree,
      title: "Welcome to Egypt – The Land of Wonders!",
      body: "Enjoy world-class diving in Sharm El Sheikh & Hurghada" ),


];