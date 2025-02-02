import 'package:flutter/material.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.id ,
      routes: {
        LoginScreen.id : (context)=>const LoginScreen(),
        SignUpScreen.id : (context)=>const SignUpScreen()
      }
    );
  }
}

