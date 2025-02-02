import 'package:flutter/material.dart';
import 'package:projecttest/core/router/app_router.dart';
import 'package:projecttest/screen/login-screen.dart';
import 'package:projecttest/screen/sign-up.dart';

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
      routerConfig: router,
    );
  }
}

