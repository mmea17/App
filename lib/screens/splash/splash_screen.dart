import 'package:final_plant/screens/splash/components/body.dart';
import 'package:final_plant/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
    body: Body(),
    );
  }
}
