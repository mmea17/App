import 'package:final_plant/constants.dart';
import 'package:final_plant/size_config.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenWidth(45),
      child: MaterialButton(onPressed: press,
        color: kPrimaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Text(text,
            style: TextStyle(
                color: Colors.white,
                fontSize: getProportionateScreenWidth(16))),),
    );
  }
}