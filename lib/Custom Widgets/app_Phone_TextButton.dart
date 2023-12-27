import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../App Configurations/ConstantsFiles/color_constants.dart';
import '../Utils/HelperFiles/math_utils.dart';

class AppPhoneTextButton extends StatelessWidget {

  void Function()? onPressed;
  String? text;



   AppPhoneTextButton({super.key,required this.onPressed,this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: const ButtonStyle(
            overlayColor: MaterialStatePropertyAll(Colors.transparent)),
        onPressed: onPressed,
        child: Text(
          text!,
          style: TextStyle(
              color: ColorConstant.blackC, fontSize: getFontSize(25)),
        ));
  }
}
