import 'package:final_plant/screens/login/TabBar/components/LoginTab.dart';
import 'package:final_plant/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignIn.routeName: (context) => SignIn(),
};