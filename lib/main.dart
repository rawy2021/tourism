import 'package:flutter/material.dart';
import 'package:projecttest/core/router/app_router.dart';
import 'package:projecttest/core/utils/app_color.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.kMainColor
      ),
      routerConfig: router,
    );
  }
}

