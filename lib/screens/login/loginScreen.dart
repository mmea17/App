import 'package:final_plant/screens/login/TabBar/TabBarr.dart';
import 'package:final_plant/size_config.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        flex: 1,
        child: Container(
          color: Colors.white,
          alignment: Alignment.centerRight,
           child: Image.asset('assets/images/login_top_right.png'),
        )),
      Expanded(
        flex: 4,
        child: Container(
          color: Colors.white,
          height: double.infinity,
          width: double.infinity,
          child: Column(
              children: [
                Image.asset('assets/images/logo_splash.png'),
                Container(
                  padding: EdgeInsets.only(top: 20 , left:20, right: 20),
                  decoration: BoxDecoration(border: Border.all(width: 0.0)),
                  width:400,
                  height: getProportionateScreenHeight(489.35),
                   child: TabBarr(),
                ),
              ],
            ),
        ),
        ),
      Expanded(
        flex: 1,
          child: Container(
           color: Colors.white,
           alignment: Alignment.centerLeft,
            child: Image.asset('assets/images/login_bottom_left.png'),
          ))
    ],);
  }
}
