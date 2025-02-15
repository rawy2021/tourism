import 'package:flutter/material.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_text_style.dart';

class WelcomeBanner extends StatelessWidget {
  const WelcomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.signInImage),
            fit: BoxFit.cover,
          )
      ),
      child: const Padding(
        padding: EdgeInsets.only(bottom: 220.0),
        child: Center(child: Text("Welcome Egypt",style: CustomTextStyles.cairo600style28,)),
      ),
    );
  }
}
