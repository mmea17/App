import 'package:final_plant/constants.dart';
import 'package:final_plant/DefaulfButton.dart';
import 'package:final_plant/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BodyUp extends StatefulWidget {
  const BodyUp({Key? key}) : super(key: key);

  @override
  State<BodyUp> createState() => _BodyUpState();
}

class _BodyUpState extends State<BodyUp> {
  @override
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10)),
            child: ListView(children: [
              Column(children: [
                buildName(),
                buildEmailForm(),
                SizedBox(height: getProportionateScreenHeight(20)),
                buildPasswordForm(),
                SizedBox(height: getProportionateScreenHeight(20)),
                buildCPasswordForm(),
                SizedBox(height: getProportionateScreenHeight(20)),
                DefaultButton(
                  text: 'Login',
                  press: () {},
                ),
                ContinueWith(),
                Container(
                  margin:
                      EdgeInsets.only(top: getProportionateScreenHeight(10)),
                  padding:
                      EdgeInsets.only(left: getProportionateScreenWidth(110)),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/Google.svg")),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/facebook.svg")),
                    ],
                  ),
                )
              ])
            ])));
  }

  Container buildEmailForm() {
    return Container(
        // margin: EdgeInsets.only(top: 40),
        child: Column(children: [
      Container(
        alignment: Alignment.topLeft,
        margin: EdgeInsets.only(bottom: 5),
        child: Text("Email",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: kPrimaryFormColor)),
      ),
      TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
            border: OutlineInputBorder(),
            hintText: 'Enter an email',
          ))
    ]));
  }

  Container buildPasswordForm() {
    return Container(
        child: Column(children: [
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(bottom: 5),
            child: Text("Password",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(16),
                    color: kPrimaryFormColor)),
          ),
          TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(),
                hintText: 'Enter a Password',
              ))
        ]));
  }

  Container buildCPasswordForm() {
    return Container(
        child: Column(children: [
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(bottom: 5),
            child: Text("Confirm Password",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(16),
                    color: kPrimaryFormColor)),
          ),
          TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(),
                hintText: 'Enter a Password',
              ))
        ]));
  }

  Container buildName() {
    return Container(
        // margin: EdgeInsets.only(top:20),
        child: Column(children: [
            Row(
              children: [
                Container(
                margin: EdgeInsets.only(top: 40, bottom: 5),
                child: Text("First Name",
                  style: TextStyle(color: kPrimaryFormColor))),
                Container(
                   margin: EdgeInsets.only(
                    top: 38,
                    left: 110,
                    ),
                      child: Text("Last Name",
                      style: TextStyle(color: kPrimaryFormColor))),
              ],
      ),
            Row(
              verticalDirection: VerticalDirection.up,
                children: [
                SizedBox(
                  width: 160,
                  height: 60,
                    child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: SizedBox(
              width: 150,
              height: 60,
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
        ],
      )
    ]));
  }
}

class ContinueWith extends StatelessWidget {
  const ContinueWith({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(children: <Widget>[
        Expanded(child: Divider(color: Color.fromRGBO(151, 151, 151, 1))),
        Text("or continue with",
            style: TextStyle(color: Color.fromRGBO(151, 151, 151, 1))),
        Expanded(child: Divider(color: Color.fromRGBO(151, 151, 151, 1)))
      ]),
    );
  }
}
