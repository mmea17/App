import 'package:final_plant/constants.dart';
import 'package:final_plant/size_config.dart';
import 'package:flutter/material.dart';

class BodyIin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(child: Flexible(
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40, left: 40, right: 40, bottom: 10),
                child: buildEmail(),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 40, right: 40, bottom: 10),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(bottom: 5),
                      child: Text("Password",
                          style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenWidth(14),
                        color: kPrimaryFormColor)),
                    ),
                    TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(),
                      hintText: 'Enter a Password',))])),
              Container(
                  margin: EdgeInsets.only(top: 50),
                  child: SizedBox(
                    width: 100,
                    height: 50,
                      child: OutlinedButton(
                        style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all<Color>(
                         Color.fromRGBO(26, 188, 0, 1)),
                  shape:
                  MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0),
                  ))),
                  onPressed: () {}, child: const Text("Login",
                          style: TextStyle(color: Colors.white)),
                    )))]),
              ),
          ),
    ]);
  }

  Column buildEmail() {
    return Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(bottom: 5),
                    child: Text("Email",
                        style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenWidth(14),
                      color: kPrimaryFormColor)),
                  ),
                  TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(),
                    hintText: 'Enter an Email',
                  ),
                ),
                ],
              );
  }
}

