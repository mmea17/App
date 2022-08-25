import 'package:final_plant/constants.dart';
import 'package:final_plant/screens/login/TabBar/components/LoginTab.dart';
import 'package:final_plant/screens/login/TabBar/components/SignupTap.dart';
import 'package:final_plant/size_config.dart';
import 'package:flutter/material.dart';

class TabBarr extends StatelessWidget {
  const TabBarr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
            Tab(child: Text("Login",style: TextStyle(color: kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: getProportionateScreenHeight(16)))),
            Tab(child: Text("Sign up",style: TextStyle(color: kPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: getProportionateScreenHeight(16))))
          ],),
          body: TabBarView(children: [SignIn(),SignUp()],),
        ),
      );
  }
}
