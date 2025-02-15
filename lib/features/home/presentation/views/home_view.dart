import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projecttest/core/function/navigation.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            FirebaseAuth.instance.signOut();
            customNavigateReplacement(context, "/signIn");
          },
              icon: Icon(Icons.login_outlined)),
        ],
      ),
      body: Center(
        child: Text("data"),
      ),
    );
  }
}
