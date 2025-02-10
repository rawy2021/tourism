import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projecttest/core/services/service_locator.dart';
import 'app/tourism_app.dart';
import 'core/function/check_state_change.dart';
import 'firebase_options.dart';

void main() async {
  setupServiceLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  checkStateChange();
  // WidgetsFlutterBinding.ensureInitialized();
  // setupServiceLocator();
  //  await getIT<CacheHelper>().init();
  runApp(const MyApp());
}

