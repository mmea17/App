import 'package:final_plant/constants.dart';
import 'package:final_plant/DefaulfButton.dart';
import 'package:final_plant/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BodyIn extends StatefulWidget {
  const BodyIn({Key? key}) : super(key: key);

  @override
  State<BodyIn> createState() => _BodyInState();
}

class _BodyInState extends State<BodyIn> {
  @override
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(10)),
          child: Column(
            children: [
              buildEmailForm(),
              SizedBox(height: getProportionateScreenHeight(20)),
              buildPasswordForm(),
              SizedBox(height: getProportionateScreenHeight(20)),
              DefaultButton(text: 'Login',press: () {},),
              ContinueWith(),
              Container(
                margin: EdgeInsets.only(top: getProportionateScreenHeight(10)),
                padding: EdgeInsets.only(left: getProportionateScreenWidth(110)),
                child: Row(
                  children: [
                    IconButton(onPressed: () {}, icon: SvgPicture.asset("assets/icons/Google.svg")),
                    IconButton(onPressed: () {}, icon: SvgPicture.asset("assets/icons/facebook.svg")),
                  ],
                ),
              )
            ]
          ),
        ));
  }

  Container buildEmailForm() {
    return Container(
        margin: EdgeInsets.only(top: 40),
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
        margin: EdgeInsets.only(bottom: 10),
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
        Expanded(
            child: Divider(color: Color.fromRGBO(151, 151, 151, 1))),
        Text("or continue with",
            style:
            TextStyle(color: Color.fromRGBO(151, 151, 151, 1))),
        Expanded(
            child: Divider(color: Color.fromRGBO(151, 151, 151, 1)))
      ]),
    );
  }
}



