import 'package:dating_app/App%20Configurations/ConstantsFiles/color_constants.dart';
import 'package:dating_app/App%20Configurations/ConstantsFiles/image_constants.dart';
import 'package:dating_app/Custom%20Widgets/app_ElevatedButton%20.dart';
import 'package:dating_app/Utils/HelperFiles/math_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../App Configurations/ConstantsFiles/string_constants.dart';
import 'controller/match_screen_controller.dart';

class MatchScreen extends StatelessWidget {
  MatchScreen({super.key});

  MatchScreenController matchScreencontroller =
      Get.put(MatchScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: getVerticalSize(60)),
            child:Image.asset(AppImages.maatchPic,width: getHorizontalSize(350),) /*Stack(children: [
              Container(
                height: getVerticalSize(400),
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(AppImages.maatchPic1))),
                child: Image.asset(AppImages.maatchPic2,),
              )
            ])*/,
          ),
          Center(
              child: Text(StringConstants.itsAmatch,
                  style: TextStyle(
                      fontSize: getFontSize(38),
                      color: ColorConstant.primaryColor,
                      fontWeight: FontWeight.w700))),
          SizedBox(height: getVerticalSize(5)),
          Center(
              child: Text(StringConstants.startAconversation,
                  style: TextStyle(
                      fontSize: getFontSize(15), fontWeight: FontWeight.w400))),
          SizedBox(height: getVerticalSize(100)),
          AppElevatedButton(
              buttonName: StringConstants.sayHello, onPressed: () {}),
          SizedBox(height: getVerticalSize(20)),
          AppElevatedButton(
            buttonName: StringConstants.keepSwiping,
            onPressed: () {
              Get.back();
            },
            buttonColor: ColorConstant.btnBackgrung,
            textColor: ColorConstant.primaryColor,
          )
        ],
      ),
    );
  }
}
