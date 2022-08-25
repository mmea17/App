import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:final_plant/screens/login/loginScreen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset('assets/images/logo_splash.png'),
      nextScreen: const LoginScreen(),
      splashIconSize: 250,
      backgroundColor: Colors.white,
      splashTransition: SplashTransition.slideTransition,
    );
  }
}
