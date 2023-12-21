import 'package:al_jazi_reward_app/view/screens/splash_screen/splash_screen.dart';
import 'package:al_jazi_reward_app/view/sign_up_screen/sign_up_phone_no.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'poppins-regular',
      ),
      home: const SplashScreen(),
    );
  }
}
