import 'package:dating_app/App%20Configurations/ConstantsFiles/image_constants.dart';
import 'package:dating_app/App%20Configurations/ConstantsFiles/string_constants.dart';
import 'package:dating_app/Custom%20Widgets/app_ElevatedButton%20.dart';
import 'package:dating_app/Utils/HelperFiles/math_utils.dart';
import 'package:dating_app/presentation/SignUpScreen/controller/signup_screen_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../App Configurations/ConstantsFiles/color_constants.dart';
import '../../routes/app_routes.dart';

class SignUpScreen extends StatelessWidget {
   SignUpScreen({super.key});
  SignUpScreenController signupcontorller = Get.put(SignUpScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: getVerticalSize(90)),
        Container(
            height: getVerticalSize(100),
            width: double.infinity,
            child: Image.asset(AppImages.trademark)),
        SizedBox(height: getVerticalSize(100)),
        Text(
          StringConstants.signup,
          style:
              TextStyle(fontWeight: FontWeight.w700, fontSize: getFontSize(18)),
        ),
        SizedBox(height: getVerticalSize(32)),
        AppElevatedButton(
            buttonName: StringConstants.continueWith, onPressed: () {}),
        SizedBox(height: getVerticalSize(40)),
        TextButton(
          style: const ButtonStyle(
              overlayColor: MaterialStatePropertyAll(Colors.transparent)),
          onPressed: () => Get.toNamed(AppRoutes.numberScreen),
          child: Text(StringConstants.usePnNum,
              style: TextStyle(
                  fontSize: getFontSize(16),
                  fontWeight: FontWeight.w700,
                  color: ColorConstant.primaryColor)),
        ),
        SizedBox(height: getVerticalSize(100)),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                Container(
                    height: getVerticalSize(1),
                    width: getHorizontalSize(100),
                    color: ColorConstant.dotGrey),
                Spacer(),
                Text(StringConstants.orSign,
                    style: TextStyle(
                        fontSize: getFontSize(18),
                        fontWeight: FontWeight.w400)),
                Spacer(),
                Container(
                    height: getVerticalSize(1),
                    width: getHorizontalSize(100),
                    color: ColorConstant.dotGrey),
                Spacer(),
              ],
            ),
            SizedBox(height: getVerticalSize(30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: getVerticalSize(70),
                  child: Image.asset(AppImages.fbIcon),
                ),
                SizedBox(width: getHorizontalSize(20)),
                Container(
                    height: getVerticalSize(70),
                    child: Image.asset(AppImages.googleIcon)),
                SizedBox(width: getHorizontalSize(20)),
                Container(
                    height: getVerticalSize(70),
                    child: Image.asset(AppImages.appleIcon))
              ],
            ),
            SizedBox(height: getVerticalSize(80)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(StringConstants.termsOf,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: ColorConstant.primaryColor,
                        fontSize: getFontSize(18))),
                SizedBox(width: getHorizontalSize(40)),
                Text(StringConstants.privacyP,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: ColorConstant.primaryColor,
                        fontSize: getFontSize(18)))
              ],
            )
          ],
        )
      ],
    ));
  }
}
