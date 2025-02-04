import 'package:flutter/material.dart';
import 'package:projecttest/core/utils/app_color.dart';

abstract class CustomTextStyles{

  static final cairo400style64= TextStyle(
    fontSize: 64,
    fontWeight: FontWeight.w400,
    color: AppColors.kPrimaryColor,
    fontFamily: "Cairo",
  );

  static final cairo500styleBody24= TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.kTextColor,
    fontFamily: "Cairo",
  );

  static final cairo300style16= TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w300,
    color: AppColors.kTextColor,
    fontFamily: "Cairo",
  );
  static final cairo300style24BtnTextWhite=  TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w300,
    color: Colors.white,
    fontFamily: "Cairo",
  );
}